"""
Python Wrapper for the Restful API for the Indigo Server.
"""
import os
import os.path
import urllib
import urllib2
from urllib2 import (HTTPPasswordMgrWithDefaultRealm, HTTPBasicAuthHandler, build_opener, install_opener, urlopen, HTTPError)
#from BeautifulSoup import BeautifulStoneSoup          # For processing XML
import xml.etree.ElementTree as ElementTree
# This uses the BeautifulSoup HTML/XML parser, see http://www.crummy.com/software/BeautifulSoup/
# 
#
####################
# Copyright (c) 2010, Benjamin Schollnick. All rights reserved.
# http://www.schollnick.net
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
# OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
#
# IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
# NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
#
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
####################

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
__version__ = '0.50'    # Human Readable Version number
version_info = (0,5,0)  # Easier format version data for comparisons
                        # i.e. if version_info > (1,2,5)
                        #
                        #   if __version__ > '1.00' is a little more contrived.
                        
__author__  = 'Benjamin A. Schollnick'
__date__    = '2010-08-09'  # yyyy-mm-dd
__email__   = 'Benjamin@schollnick.net'
__module_name__ = "Indigo Restful API Wrapper"
__short_cright__= ""


class 	Indigo_Restful_Server (object):
		def __init__ ( self):
			"""
				Initialization routines, clears the X10 device list, Insteon Device List, and clears the Server Address.
				
				Inputs - None
				Outputs - None
			"""
			self.cached_x10_device_names = {}
			self.cached_insteon_device_names = {}
			self.server_address = ""
			self.password_mgr = None
			self.username = None
			self.password = None


		#*******************************************************************************************
		#	Server Related
		#
		#
			
		def	set_server ( self, server_address):
			"""
				Stores the server address, for use by the API/Wrapper.
				
				Inputs:
			
					indigo_server - the full url of the server (ie http://127.0.0.1:8176)
					
				Output:
			
					None
			"""
			self.server_address = server_address
			
		def	set_server_authentication ( self, username, password):
			"""
				Configure urllib2 to use the username and password that is passed into this function.
				Only needed if Indigo is setup to use password authentication.
			"""
			self.password_mgr = urllib2.HTTPPasswordMgrWithDefaultRealm()
			self.username = username
			self.password = password
			self.password_mgr.add_password(None, self.server_address, self.username, self.password)
			self.handler = urllib2.HTTPDigestAuthHandler( self.password_mgr)
			self.opener = build_opener( self.handler)
			try:
				self.opener ( self.server_address )
			except:
				pass
			urllib2.install_opener( self.opener )

			
		def	fetch_web_page ( self, web_url):
			"""Wrapper around the urllib.urlopen call, that reads the web_url.  
			
			Intended for Internal use only.
			"""
			web_page = urllib2.urlopen ( web_url )
			web_page = web_page.readlines()
			return web_page

		def		fetch_xml_page (self, url_to_open ):
			"""Wrapper around the urllib.urlopen call, that reads the web_url.  
			
			Intended for Internal use only.
			"""
			url 		= urllib2.Request (url=url_to_open, data=None)
			url_pointer = urllib2.urlopen ( url )
			tree = ElementTree.parse (url_pointer )
			return tree

		#*******************************************************************************************
		#	Device Related
		#
		#
		def		return_device_type ( self, devdict ):
			"""This will return the devices Type.
			
			Input -
						The device's dictionary
						
			Output - 
						The device's type value
						
			Needs rewrite, this should search the self instance.
			(This is used by the fetch_devicelist function)
			"""
			return devdict ["type"]
			
		def		is_addrstr_insteon ( self, addrstr):
			"""Is the address format an X10 device address or an Insteon device address?
			
			Inputs - 
			
						addrstr - Address String to test
						
			Output -
				
						Boolean - True, it is Insteon
								  False, it is X10
								  
				The Logic is that Insteon addresses have . seperators, this does a find on .
			"""
			return addrstr.find (".") <> -1
				
		def		is_addrstr_x10 ( self, addrstr):
			"""Is the address format an X10 device address or an Insteon device address?
			
			Inputs - 
			
						addrstr - Address String to test
						
			Output -
				
						Boolean - True, it is X10
								  False, it is Insteon (Presumably)
								  
				The Logic is that Insteon addresses are more than 3 characters long.
			"""
			return len(addrstr) < 3

		def		return_device_from_addrstr ( self, addrstr):
			"""		
				Inputs:
			
					addrstr - X10 Address, or Insteon Address to match.  Case Insensitive.
			
				Outputs:
			
					Device Dictionary or None, depending on if the address was matched.
			
				When populated, the address string passed in will be matched to the Insteon & X10 device list, and the
				device dictionary will be returned.
			
				If not found/matched, then a NONE will be returned.
			"""
			device_list = self.get_device_list()
			for x in device_list:
				device_info = self.get_device_by_name ( x )
				if device_info [ "addressStr"].strip().upper() == addrstr.strip().upper():
					return device_info
			return None
			

		def		get_device_list ( self ):
			""" Retrieve the list of variables.
			
				Inputs - None
				Output - A dictionary of variable names
				
			"""
			data = {}
			devices_xml = self.fetch_xml_page (self.server_address + r"/devices.xml")
			root = devices_xml.getroot()
			for subnode in root.getchildren():
				data [subnode.text] = self.server_address+'%s' % subnode.get ('href')
			return data

		def		URL_encode ( self, raw):
			return urllib.quote ( raw.replace (" ", "%20"), "%" )
			
		def		get_device_by_name ( self, device_name):
			"""
				Inputs:
			
					device_name - The device Name to retrieve
			
				Outputs:
			
					Dictionary containing the data from the device
			
					The data in the Dictionary is dependant on the type of the device
					(eg, The Thermostat Adapter will not have the same data that an ApplianceLinc has.)

			Replaces Fetch Devices from Indigo.
			"""
			data = {}
			devices_xml = self.fetch_xml_page (self.server_address + r"/devices/%s.xml" % self.URL_encode (device_name)  )
			root = devices_xml.getroot()
			for node in root.getiterator():
				if node.text <> None:
					data [ node.tag] = node.text.strip()
				else:
					data [ node.tag ] = node.text
			return data

		def		change_device_state_by_name ( self, device_name, status = 1):
			"""Change the state (On/Off), of an device.
			
			Inputs -
						device name - The human readable name (eg Office Lamp) of the device.
										(Spaces are converted automatically to %20)
										
						status - 0 = Off
								 1 = On
								 
			Outputs -
						None
			"""
			self.fetch_web_page ( self.server_address + r"/devices/%s?isOn=%i&_method=put" % (self.URL_encode ( device_name ), status) )

		def		toggle_device_state_by_name ( self, device_name):
			"""Toggle the state (On/Off), of an device.  If the device is on, it will be turned off, and vice versa. 
			
			Inputs -
						device name - The human readable name (eg Office Lamp) of the device.
										(Spaces are converted automatically to %20)
										
			Outputs -
						None

			Note: Toggle relies on Indigo being at least v4.11.  The Toggle functionality in the restful interface 
			was added in v4.11.
			"""
			self.fetch_web_page ( self.server_address + r"/devices/%s?toggle=1&_method=put" % self.URL_encode ( device_name ) )
			
		def		change_brightness_state_by_name ( self, device_name, brightness = 100):
			"""Change the brightness of an LampLinc (or equivalent).
			
			Inputs -
						device name - The human readable name (eg Office Lamp) of the device.
										(Spaces are converted automatically to %20)
										
						Brightness - Numeric representing the percentage of "brightness"
								0 = Off
								25 
								 1 = On
								 
			Outputs -
						None
			"""
			self.fetch_web_page ( self.server_address + r"/devices/%s?brightness=%i&_method=put" % (self.URL_encode ( device_name ), brightness) )


		def		set_thermostat_heating_mode ( device_name=None, mode = 0):
			"""Set an thermostat heating / cooling mode.
			
			Input - 
					device_name 	- The thermostat device name (eg. Furnace_link)
					mode			- The mode to set the device to:
							0		- Automatic Mode
							1 		- Cool On
							
			Output - None
			"""
			if mode == 0:
				new_value = "auto on"
			elif mode == 1:
				new_value = "cool on"
			
			self.fetch_web_page ( self.server_address + r"/devices/%s?_method=put&hvacCurrentMode=%s" % (self.URL_encode ( device_name ), new_value.replace(" ", "%20")) )

		def		set_thermostat_fan_mode ( device_name=None, mode = 0):
			"""Set an thermostat Fan mode.
			
			Input - 
					device_name 	- The thermostat device name (eg. Furnace_link)
					mode			- The mode to set the device to:
							0		- Automatic Mode
							1 		- Always On

			Output - None
			"""
			if mode == 0:
				new_value = "auto on"
			elif mode == 1:
				new_value = "always on"
			
			self.fetch_web_page ( self.server_address + r"/devices/%s?_method=put&hvacCurrentMode=%s" % (self.URL_encode ( device_name ), new_value.replace(" ", "%20") ) )

		def		set_thermostat_setpoints ( device_name=None, Heat = 0, Cool = 0):
			"""Set an thermostat Heating & Cooling Break Points
			
			Input - 
					device_name 	- The thermostat device name (eg. Furnace_link)
					Heat			- Value to set the heating setpoint to
					Cool			- Value to set the Cooling setpoint to

					Normally Heat & Cool would be set to a number (eg. 68), but up & dn are usable.
					
						up - up one degree
						dn - down one degree
			Output - None
			"""
			self.fetch_web_page ( self.server_address + r"/devices/%s_method=put&setpointCool=%s&setpointHeat=%s" % (self.URL_encode ( device_name ), Cool, Heat ) )



		#*******************************************************************************************
		#	Variable Related
		#
		#
		
		def		set_variable_by_name  ( self, variable_name, new_value = ""):
			"""Set a variable's value.
			
			Input - 
					variable_name 	- The Variable's Name
					new_value 		- The value to set the variable to.  (The value is a string)
					
			Output - None
			
			Note, the Variable has to previously exist in the variable list.  If it does not, Indigo will not create/add it.
			"""
			self.fetch_web_page ( self.server_address + r"/variables/%s?_method=put&value=%s" % (variable_name.replace(" ", "%20"), new_value) )



		def		get_variable_list ( self ):
			""" Retrieve the list of variables.
			
				Inputs - None
				Output - A dictionary of variable names
				
			"""
			data = {}
			devices_xml = self.fetch_xml_page (self.server_address + r"/variables.xml")
			root = devices_xml.getroot()
			for subnode in root.getchildren():
				data [subnode.text] = self.server_address+'%s' % subnode.get ('href')
			return data

		#*******************************************************************************************
		#	action group Related
		#
		#
		

		def		get_actiongroup_list ( self ):
			""" Retrieve the list of Action Groups.
			
				Inputs - None
				Output - A dictionary of Action Group names
				
			"""
			data = {}
			devices_xml = self.fetch_xml_page (self.server_address + r"/actions.xml")
			root = devices_xml.getroot()
			for subnode in root.getchildren():
				data [subnode.text] = self.server_address+'%s' % subnode.get ('href')
			return data

		def		get_actiongroup_by_name ( self, action_name):
			"""
				Inputs:
			
					variable_name - The variable Name to retrieve
			
				Outputs:
			
					Dictionary containing the data from the variable
			
					Specifically:
			
						Name - is the variable Name
						value - The value that is contained in the variable
						readonly - Can the variable be modified (presumably internal use of Indigo Only?)
						isfalse - Internal Use of Indigo Only?  (Is the variable false?)
						variable - Internal Use of Indigo Only?
						displayinui - Is this variable available to be displayed in the Remote UI
			"""
			data={}
			devices_xml = self.fetch_xml_page (self.server_address + r"/actions/%s.xml" % action_name.replace(" ", "%20")  )
			root = devices_xml.getroot()
			for node in root.getiterator():
				if node.text <> None:
					data [ node.tag] = node.text.strip()
				else:
					data [ node.tag] = node.text
					

			return data

		def		activate_actiongroup_by_name ( self, actiongroup_name):
			"""Trigger / "Fire off" an Actiongroup.
			
			Inputs -
						actiongroup_name - The name of the Action group to activate.
						
			Outputs - None
			
			"""
			self.fetch_web_page ( self.server_address + r"/actions/%s?_method=execute" % actiongroup_name.replace(" ", "%20") )

	#*******************************************************************************************
	#	Variable Related
	#
	#
			
		def		get_variable_by_name ( self, variable_name):
			"""
				Inputs:
			
					variable_name - The variable Name to retrieve
			
				Outputs:
			
					Dictionary containing the data from the variable
			
					Specifically:
			
						name - is the variable Name
						value - The value that is contained in the variable
						readonly - Can the variable be modified (presumably internal use of Indigo Only?)
						isfalse - Internal Use of Indigo Only?  (Is the variable false?)
						variable - Internal Use of Indigo Only?
						displayinui - Is this variable available to be displayed in the Remote UI
			"""
			data = {}
			devices_xml = self.fetch_xml_page (self.server_address + r"/variables/%s.xml" % variable_name.replace(" ", "%20")  )
			root = devices_xml.getroot()
			for node in root.getiterator():
				data [ node.tag] = node.text.strip()
			return data
				
		#*******************************************************************************************
		#	Insteon Links Related
		#
		#
		
		def		get_insteon_links ( self ):
			"""
				Inputs:
			
					None
			
				Outputs:
			
					Dictionary - The index is the device's human readable name (eg. "Bed Room Light").
									The dictionary entry contains a list of the devices addresses 
									that are linked to the device.
									
				For example:
				
				{	'Rec Room RemoteLinc': ['01.43.6A', '04.94.44', '14.1C.EB', '01.43.6A', '04.94.44', 
											'14.1C.EB', '04.94.44', '01.43.6A', '14.1C.EB', '13.AD.96', 
											'13.AD.96', '13.AD.96', '13.AD.96', '13.AD.96', '13.AD.96', 
											'13.AD.96'], 
					'Entrance Doorway'	: ['13.AD.96', '13.AD.96', '13.AD.96'], 
					'Under Cabinet Light Icon Unit': ['13.AD.96'] }

			"""
			data = {}
			devices_xml = self.fetch_xml_page (self.server_address + r'/insteonlinks/')
			root = devices_xml.getroot()
			for subnode in root.getchildren():
				device_info = self.get_device_by_name ( subnode.text)
				device_addresses = []
	
				device_xml_page_url = self.server_address + r'/insteonlinks/%s' % subnode.get ('href').split("/")[-1]
				device_root = self.fetch_xml_page ( device_xml_page_url )
				for device_subnode in device_root.getiterator():
					if device_subnode.tag.strip() == "address":
						device_addresses.append ( device_subnode.text.strip() )
				data [ device_info["name"] ] = device_addresses
			return data

			
def TranslateFromXml(xmlDev):
	"""Used to translate from BeautifulSoup to dictionary format.
	"""
	data = {}
	for x in xmlDev.findAll():
		temp = str(x).split(">")
		tag_name = temp[0][1:255].strip()
		if tag_name.find (".xml") <> -1:
			#
			#	The Action List, Variable List, and Device List, all have the URI URL_encoded in the name of the 
			#	action list, variable list, or device list items.  This filters that out, and sets the value to
			# 	none.  
			#
			temp2 = tag_name.replace("%20", " ").replace(".xml", "").replace('"', '').replace("'", "").split ("/")
			tag_name = temp2[2]
			tag_value = None
		else:
			tag_value = temp[1].split("<")[0].strip()
		data [tag_name] = tag_value
	return data
			

if __name__ == "__main__":      #   If run from the Command line
	Indigo_server = Indigo_Restful_Server ()
#	Indigo_server.set_server (r"http://127.0.0.1:8176" )
#	Indigo_server.set_server (r"http://192.168.1.110:8080" )
#	Indigo_server.set_server_authentication ( "test", "test")
#	print	Indigo_server.return_device_from_addrstr ( "00.02.98" )
#	print	Indigo_server.return_device_from_addrstr ( "a1" )
#	print 	"Links - ",Indigo_server.get_insteon_links ()
#	Indigo_server.fetch_devices_from_indigo ()
# 	Indigo_server.change_device_state_by_name ( device_name = "office lamp", status = 1)
# 	Indigo_server.change_brightness_state_by_name ( device_name = "office lamp", brightness= 75)
# 	Indigo_server.set_variable_by_name ("testing", 100)
# 	print
# 	print Indigo_server.get_variable_list ()
# 	print
# 	print Indigo_server.get_variable_by_name ( "Weather_Wind" )
# 	print
# 	print "AG: ",Indigo_server.get_actiongroup_list()
# 	print
# 	print Indigo_server.get_actiongroup_by_name ( "all lights on")
# 	print
# 	print Indigo_server.get_insteon_links ( )
# 	print 
# 	print Indigo_server.get_device_list ()
# 	print
# 	print "ir - ",Indigo_server.get_device_by_name ( "irrmaster pro")
# 	print "ir - ",Indigo_server.get_device_by_name ( "Under Cabinet Light Icon Unit")
	
	#print Indigo_server.insteon_devices
	#for x in Indigo_server.insteon_devices.keys():
	#	print x, " - Insteon"
	
	#for x in Indigo_server.x10_devices.keys():
	#	print x, " - x10"
