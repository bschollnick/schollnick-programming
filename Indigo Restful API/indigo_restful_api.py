"""
Python Wrapper for the Restful API for the Indigo Server.
"""
import os
import os.path
import urllib
from BeautifulSoup import BeautifulStoneSoup          # For processing XML
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
			self.x10_devices = {}
			self.insteon_devices = {}
			self.server_address = ""

		def	set_server ( self, server_address):
			"""
				Stores the server address, for use by the API/Wrapper.
				
				Inputs:
			
					indigo_server - the full url of the server (ie http://127.0.0.1:8176)
					
				Output:
			
					None
			"""
			self.server_address = server_address
			
			
		def	fetch_web_page ( self, web_url):
			"""Wrapper around the urllib.urlopen call, that reads the web_url.  
			
			Intended for Internal use only.
			"""
			web_page = urllib.urlopen ( web_url ).readlines()
			return web_page


		def		map_device_to_dict ( self, web_data ):
			"""This is used in the conversion of the text based devicelist call, to create the 
			dictionary of values.
			
			Input - text version of a device
			
			Output - a Dictionary built with the field name / values for the device.

			This is depreciated, and will be eliminated after rewriting the fetch_devicelist call.
			"""
			datadict = {}
			for x in web_data:
				field, data = x.split (":",1)
				field = field.strip()
				datadict [field] = data.strip()
			return datadict

		def		return_device_from_x10_addr ( self, devdict):
			"""This will return a device dictionary from an X10 address.
			
			Input -
						devdict - A dictionary of X10 devices (to search through)
						
			Output - 
						The device that matches the address, or None
						
			Needs rewrite, this should search the self instance.
			(This is used by the fetch_devicelist function)
			"""
			if len(devdict["addressStr"]) < 3:
				return devdict["addressStr"]
			else:
				return None
				
		def		return_device_from_insteonaddr (self, devdict ):
			"""This will return a device dictionary from an insteon address.
			
			Input -
						devdict - A dictionary of insteon devices (to search through)
						
			Output - 
						The device that matches the address, or None
						
			Needs rewrite, this should search the self instance.
			(This is used by the fetch_devicelist function)
			"""
			if devdict["addressStr"].find (".") > 1:
				return devdict["addressStr"]
			return None


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
		
		#
		#	Device Related
		#
		#
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
			for x in self.insteon_devices:
				if addrstr.strip().upper() == x["addrStr"]:
					return x
			for x in self.x10_devices:
				if addrstr.strip().upper() == x["addrStr"]:
					return x
			return None

		def		fetch_devices_from_indigo (self, ignore_filter=["",]):
			"""
				Inputs: 
			
					ignore_filter - the Insteon or X10 addresses to filter out	
			
				Outputs:
			
					None, populates the insteon_devices & x10_devices of the Indigo_Restful_Server object. 
					The insteon_devices & x10_devices are a list of device dictionarys.  The dictionary contains the
					device data from the server.
			
					Depending on the device, this data will be different (eg, The Thermostat Adapter will not have the same 
					data that an ApplianceLinc has.
					
				This will eventually need a rewrite, since this was adapted from single use code that I wrote...  
			"""
			devices = self.fetch_web_page ( self.server_address + r"/devices.txt/")
			
			for x in devices:
				device_data = self.fetch_web_page (self.server_address + x.replace(" ", "%20"))
				device_data = self.map_device_to_dict ( device_data)
				if self.return_device_from_insteonaddr ( device_data) <> None:
					if not(self.return_device_type(device_data) in ignore_filter):
#						print "Adding (insteon) ", device_data["name"]
						self.insteon_devices [device_data["name"]] = device_data#insteon_devices.append ( device_data)
						
				if self.return_device_from_x10_addr ( device_data) <> None:
					if not(self.return_device_type(device_data) in ignore_filter):
#						print "Adding (x10) ", device_data["name"]
						self.x10_devices [device_data["name"]] = device_data
				

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
			self.fetch_web_page ( self.server_address + r"/devices/%s?isOn=%i&_method=put" % (device_name.replace(" ", "%20"), status) )

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
			self.fetch_web_page ( self.server_address + r"/devices/%s?toggle=1&_method=put" % device_name.replace(" ", "%20") )
			
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
			self.fetch_web_page ( self.server_address + r"/devices/%s?brightness=%i&_method=put" % (device_name.replace(" ", "%20"), brightness) )


		#
		#	Variable Related
		#
		#
		
		def		set_variable_by_name  ( self, variable_name, new_value = 0):
			"""Set a variable's value.
			
			Input - 
					variable_name 	- The Variable's Name
					new_value 		- The value to set the variable to.
					
			Output - None
			
			Note, the Variable has to previously exist in the variable list.  If it does not, Indigo will not create/add it.
			"""
			self.fetch_web_page ( self.server_address + r"/variables/%s?_method=put&value=%i" % (variable_name.replace(" ", "%20"), new_value) )



		def		get_variable_list ( self ):
			""" Retrieve the list of variables.
			
				Inputs - None
				Output - A dictionary of variable names
				
			"""
			xml_data = self.fetch_web_page ( self.server_address + r"/variables.xml" )
			#print xml_data
			soup = BeautifulStoneSoup ( "".join(xml_data) )
			data = TranslateFromXml ( soup )
			return data


		def		get_actiongroup_list ( self ):
			""" Retrieve the list of Action Groups.
			
				Inputs - None
				Output - A dictionary of Action Group names
				
			"""
			xml_data = self.fetch_web_page ( self.server_address + r"/actions.xml" )
			#print xml_data
			soup = BeautifulStoneSoup ( "".join(xml_data) )
			data = TranslateFromXml ( soup )
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
			xml_data = self.fetch_web_page ( self.server_address + r"/actions/%s.xml" % action_name.replace(" ", "%20") )
			soup = BeautifulStoneSoup ( "".join(xml_data) )
			data = TranslateFromXml ( soup )
			return data

		def		activate_actiongroup_by_name ( self, actiongroup_name):
			"""Trigger / "Fire off" an Actiongroup.
			
			Inputs -
						actiongroup_name - The name of the Action group to activate.
						
			Outputs - None
			
			"""
			self.fetch_web_page ( self.server_address + r"/actions/%s?_method=execute" % actiongroup_name.replace(" ", "%20") )

	#
	#
	#	Variable Related
	#
			
		def		get_variable_by_name ( self, variable_name):
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
			xml_data = self.fetch_web_page ( self.server_address + r"/variables/%s.xml" % variable_name.replace(" ", "%20") )
			soup = BeautifulStoneSoup ( "".join(xml_data) )
			data = TranslateFromXml ( soup )
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
			#	The Action List, Variable List, and Device List, all have the URI encoded in the name of the 
			#	action list, variable list, or device list items.  This filters that out, and sets the value to
			# 	none.  
			#
			temp2 = tag_name.replace("%20", " ").replace(".xml", "").replace('"', '').replace("'", "").split ("/")
			tag_name = temp2[2]
			tag_value = None
		else:
			tag_value = temp[1].split("<")[0].strip()
#		print "TN - %s,   TV - %s" % (tag_name, tag_value)
		data [tag_name] = tag_value
	return data
			

if __name__ == "__main__":      #   If run from the Command line
	Indigo_server = Indigo_Restful_Server ()
	Indigo_server.set_server (r"http://127.0.0.1:8176" )
	Indigo_server.fetch_devices_from_indigo ()
	Indigo_server.change_device_state_by_name ( device_name = "office lamp", status = 1)
	Indigo_server.change_brightness_state_by_name ( device_name = "office lamp", brightness= 75)
	Indigo_server.set_variable_by_name ("testing", 100)
	#print Indigo_server.get_variable_list ()
	#print Indigo_server.get_variable_by_name ( "Weather_Wind" )
	print Indigo_server.get_actiongroup_list()
	print Indigo_server.get_actiongroup_by_name ( "all lights on")
	#print Indigo_server.insteon_devices
	#for x in Indigo_server.insteon_devices.keys():
	#	print x, " - Insteon"
	
	#for x in Indigo_server.x10_devices.keys():
	#	print x, " - x10"
	
	#xml_data = Indigo_server.fetch_web_page ( "http://127.0.0.1:8176/devices/EZIO8SA.xml")
	#soup = BeautifulStoneSoup ( "".join(xml_data) )
	#print TranslateFromXml ( soup )
