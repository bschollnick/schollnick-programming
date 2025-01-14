FasdUAS 1.101.10   ��   ��    k             l     ��  ��   )# Sample attachment script that illustrates how to listen to commands from security devices. Only the W800RF32 and CM15 interfaces receives these commands. 2003.05.15 (mmb).  Only the most recent Version history is at the top, the rest of the Version history is now at the bottom of the file.     � 	 	F   S a m p l e   a t t a c h m e n t   s c r i p t   t h a t   i l l u s t r a t e s   h o w   t o   l i s t e n   t o   c o m m a n d s   f r o m   s e c u r i t y   d e v i c e s .   O n l y   t h e   W 8 0 0 R F 3 2   a n d   C M 1 5   i n t e r f a c e s   r e c e i v e s   t h e s e   c o m m a n d s .   2 0 0 3 . 0 5 . 1 5   ( m m b ) .     O n l y   t h e   m o s t   r e c e n t   V e r s i o n   h i s t o r y   i s   a t   t h e   t o p ,   t h e   r e s t   o f   t h e   V e r s i o n   h i s t o r y   i s   n o w   a t   t h e   b o t t o m   o f   t h e   f i l e .   
  
 l     ��������  ��  ��        l     ��  ��    E ? Change & Version History		- Are at the bottom of the script...     �   ~   C h a n g e   &   V e r s i o n   H i s t o r y 	 	 -   A r e   a t   t h e   b o t t o m   o f   t h e   s c r i p t . . .      l     ��������  ��  ��        l     ��  ��    u o To start using the security script, scroll down to "property Alarm_Matrix", and fill in the entries as needed.     �   �   T o   s t a r t   u s i n g   t h e   s e c u r i t y   s c r i p t ,   s c r o l l   d o w n   t o   " p r o p e r t y   A l a r m _ M a t r i x " ,   a n d   f i l l   i n   t h e   e n t r i e s   a s   n e e d e d .      l     ��  ��    3 - Each block (the { }'s), contain 8 entries...     �   Z   E a c h   b l o c k   ( t h e   {   } ' s ) ,   c o n t a i n   8   e n t r i e s . . .      l     ��������  ��  ��         l     �� ! "��   !   Alarm_Matrix values: --    " � # # 0   A l a r m _ M a t r i x   v a l u e s :   - -    $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( [ U 1 - Device ID  			- The X10 sensor module ID, as shown in Indigo's Event Log window.    ) � * * �   1   -   D e v i c e   I D     	 	 	 -   T h e   X 1 0   s e n s o r   m o d u l e   I D ,   a s   s h o w n   i n   I n d i g o ' s   E v e n t   L o g   w i n d o w . '  + , + l     �� - .��   - g a 2 - Sensor Name		- The name you wish the sensor to have (used in Event Log and Variable window).    . � / / �   2   -   S e n s o r   N a m e 	 	 -   T h e   n a m e   y o u   w i s h   t h e   s e n s o r   t o   h a v e   ( u s e d   i n   E v e n t   L o g   a n d   V a r i a b l e   w i n d o w ) . ,  0 1 0 l     �� 2 3��   2 W Q						- The sensor name must *NOT* have a space in it.  Instead use a underscore.    3 � 4 4 � 	 	 	 	 	 	 -   T h e   s e n s o r   n a m e   m u s t   * N O T *   h a v e   a   s p a c e   i n   i t .     I n s t e a d   u s e   a   u n d e r s c o r e . 1  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 q k 3 - Growl Enabled 		- If true, and if Use_Growl is true, then this sensor's changes will be sent to Growl.    : � ; ; �   3   -   G r o w l   E n a b l e d   	 	 -   I f   t r u e ,   a n d   i f   U s e _ G r o w l   i s   t r u e ,   t h e n   t h i s   s e n s o r ' s   c h a n g e s   w i l l   b e   s e n t   t o   G r o w l . 8  < = < l     �� > ?��   > n h 4 - Chime Enabled		- If true, then an ON command will be sent to the Device named by Chime Device Name.    ? � @ @ �   4   -   C h i m e   E n a b l e d 	 	 -   I f   t r u e ,   t h e n   a n   O N   c o m m a n d   w i l l   b e   s e n t   t o   t h e   D e v i c e   n a m e d   b y   C h i m e   D e v i c e   N a m e . =  A B A l     �� C D��   C l f 5 - Chime Device Name	- The Device name to which an ON command will be sent if Chime Enabled is True.    D � E E �   5   -   C h i m e   D e v i c e   N a m e 	 -   T h e   D e v i c e   n a m e   t o   w h i c h   a n   O N   c o m m a n d   w i l l   b e   s e n t   i f   C h i m e   E n a b l e d   i s   T r u e . B  F G F l     �� H I��   H u o 6 - Ignore Sensor		- Allows the owner to have the sensor in the list, but to ignore any input from the sensor.    I � J J �   6   -   I g n o r e   S e n s o r 	 	 -   A l l o w s   t h e   o w n e r   t o   h a v e   t h e   s e n s o r   i n   t h e   l i s t ,   b u t   t o   i g n o r e   a n y   i n p u t   f r o m   t h e   s e n s o r . G  K L K l     �� M N��   M _ Y						- Generally used if the sensor is sending out false positives (eg. High Winds, etc)    N � O O � 	 	 	 	 	 	 -   G e n e r a l l y   u s e d   i f   t h e   s e n s o r   i s   s e n d i n g   o u t   f a l s e   p o s i t i v e s   ( e g .   H i g h   W i n d s ,   e t c ) L  P Q P l     �� R S��   R > 8						- False equals Do Not Ignore.  True equals Ignore.    S � T T p 	 	 	 	 	 	 -   F a l s e   e q u a l s   D o   N o t   I g n o r e .     T r u e   e q u a l s   I g n o r e . Q  U V U l     �� W X��   W h b 7 - Specialized Sound File - Set to false, if you do not want a specialized sound for this alarm.    X � Y Y �   7   -   S p e c i a l i z e d   S o u n d   F i l e   -   S e t   t o   f a l s e ,   i f   y o u   d o   n o t   w a n t   a   s p e c i a l i z e d   s o u n d   f o r   t h i s   a l a r m . V  Z [ Z l     �� \ ]��   \ V P						- Otherwise set to the fully qualified filename of the sound file to play.    ] � ^ ^ � 	 	 	 	 	 	 -   O t h e r w i s e   s e t   t o   t h e   f u l l y   q u a l i f i e d   f i l e n a m e   o f   t h e   s o u n d   f i l e   t o   p l a y . [  _ ` _ l     �� a b��   a R L						- This requires PlaySound to be installed, and usable via applescript.    b � c c � 	 	 	 	 	 	 -   T h i s   r e q u i r e s   P l a y S o u n d   t o   b e   i n s t a l l e d ,   a n d   u s a b l e   v i a   a p p l e s c r i p t . `  d e d l     �� f g��   f 8 2 8 - WatchDog / Heartbeat - Monitor for heartbeats    g � h h d   8   -   W a t c h D o g   /   H e a r t b e a t   -   M o n i t o r   f o r   h e a r t b e a t s e  i j i l     ��������  ��  ��   j  k l k l     �� m n��   m Y S	To add an alarm sensor, just add block with the 8 entries, seperated by a comma.      n � o o � 	 T o   a d d   a n   a l a r m   s e n s o r ,   j u s t   a d d   b l o c k   w i t h   t h e   8   e n t r i e s ,   s e p e r a t e d   b y   a   c o m m a .     l  p q p l     ��������  ��  ��   q  r s r j     e�� t�� 0 alarm_matrix Alarm_Matrix t J     d u u  v w v l 	   
 x���� x J     
 y y  z { z m     ���� � {  | } | m     ~ ~ �    W o r k R o o m _ D o o r }  � � � m    ��
�� boovtrue �  � � � m    ��
�� boovfals �  � � � m     � � � � �  S o u n d   C h i m e �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  ��� � m    ��
�� boovfals��  ��  ��   w  � � � l 	 
  ����� � J   
  � �  � � � m   
 ���� q �  � � � m     � � � � �  W o r k R o o m _ D o o r 2 �  � � � m    ��
�� boovtrue �  � � � m    ��
�� boovfals �  � � � m     � � � � �  S o u n d   C h i m e �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  ��� � m    ��
�� boovfals��  ��  ��   �  � � � l 	   ����� � J     � �  � � � m    ���� � �  � � � m     � � � � �  B a s e m e n t _ D o o r �  � � � m    ��
�� boovtrue �  � � � m    ��
�� boovfals �  � � � m     � � � � �  S o u n d   C h i m e �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  ��� � m    ��
�� boovfals��  ��  ��   �  � � � l 	  ( ����� � J    ( � �  � � � m    ���� � �  � � � m      � � � � �  K i t c h e n _ D o o r �  � � � m     !��
�� boovtrue �  � � � m   ! "��
�� boovtrue �  � � � m   " # � � � � �  S o u n d   C h i m e �  � � � m   # $��
�� boovfals �  � � � m   $ %��
�� boovfals �  ��� � m   % &��
�� boovtrue��  ��  ��   �  � � � l 	 ( 2 ����� � J   ( 2 � �  � � � m   ( )���� - �  � � � m   ) * � � � � �  G a r a g e _ D o o r �  � � � m   * +��
�� boovtrue �  � � � m   + ,��
�� boovtrue �  � � � m   , - � � � � �  S o u n d   C h i m e �  � � � m   - .��
�� boovfals �  � � � m   . /��
�� boovfals �  ��� � m   / 0��
�� boovtrue��  ��  ��   �  � � � l 	 2 B ����� � J   2 B � �  � � � m   2 5���� � �  � � � m   5 8 � � � � � ( G a r a g e _ D o o r _ D e a d b o l t �  � � � m   8 9��
�� boovtrue �  � � � m   9 :��
�� boovfals �  � � � m   : = � � � � �  S o u n d   C h i m e �  � � � m   = >��
�� boovfals �  � � � m   > ?��
�� boovfals �  ��� � m   ? @��
�� boovtrue��  ��  ��   �    l 	 B R���� J   B R  m   B E���� �  m   E H �		  D i n i n g _ R o o m 

 m   H I��
�� boovtrue  m   I J��
�� boovtrue  m   J M �  S o u n d   C h i m e  m   M N��
�� boovfals  m   N O��
�� boovfals �� m   O P��
�� boovtrue��  ��  ��   �� l 	 R b���� l 
 R b���� J   R b  m   R U���� �  m   U X �    R e c _ R o o m !"! m   X Y��
�� boovtrue" #$# m   Y Z��
�� boovtrue$ %&% m   Z ]'' �((  S o u n d   C h i m e& )*) m   ] ^��
�� boovfals* +,+ m   ^ _��
�� boovfals, -��- m   _ `��
�� boovtrue��  ��  ��  ��  ��  ��   s ./. l     ��������  ��  ��  / 010 l     ��23��  2 9 3- , "/Users/benjamin/Desktop/alarm_clock_1.wav"}, �   3 �44 f -   ,   " / U s e r s / b e n j a m i n / D e s k t o p / a l a r m _ c l o c k _ 1 . w a v " } ,   �1 565 l     ��������  ��  ��  6 787 l     ��9:��  9   Supressing Alarm Sensors   : �;; 2   S u p r e s s i n g   A l a r m   S e n s o r s8 <=< l     ��>?��  > The Ignore_Security_Sensors variable will override *ALL* the sensors ignore settings, and force the security script to ignore all sensors until it is set to false.  If it is set to true, then all sensors will be ignored.  If set to false, normal behavior will occur.   ? �@@   T h e   I g n o r e _ S e c u r i t y _ S e n s o r s   v a r i a b l e   w i l l   o v e r r i d e   * A L L *   t h e   s e n s o r s   i g n o r e   s e t t i n g s ,   a n d   f o r c e   t h e   s e c u r i t y   s c r i p t   t o   i g n o r e   a l l   s e n s o r s   u n t i l   i t   i s   s e t   t o   f a l s e .     I f   i t   i s   s e t   t o   t r u e ,   t h e n   a l l   s e n s o r s   w i l l   b e   i g n o r e d .     I f   s e t   t o   f a l s e ,   n o r m a l   b e h a v i o r   w i l l   o c c u r .= ABA l     �������  ��  �  B CDC l     �~EF�~  E   Speech Controls   F �GG     S p e e c h   C o n t r o l sD HIH l     �}�|�{�}  �|  �{  I JKJ j   f h�zL�z 0 speak_alarms Speak_AlarmsL m   f g�y
�y boovfalsK MNM l     �x�w�v�x  �w  �v  N OPO j   i u�uQ�u (0 sensor_speech_text Sensor_Speech_TextQ J   i tRR STS m   i lUU �VV ( S e n s o r   % s   h a s   O p e n e dT WXW m   l oYY �ZZ * S e n s o r   % s   h a s   C l o s e d .X [�t[ m   o r\\ �]] $ S e n s o r   % s   T i m e   O u t�t  P ^_^ l     �s`a�s  ` - ' %s is replaced with the Sensor Name.     a �bb N   % s   i s   r e p l a c e d   w i t h   t h e   S e n s o r   N a m e .    _ cdc l     �r�q�p�r  �q  �p  d efe j   v z�og�o 0 speech_voice Speech_Voiceg m   v yhh �ii  A l e xf jkj l     �n�m�l�n  �m  �l  k lml l     �kno�k  n>8 The SoundChime variable (in Indigo's Variable's table) will override the Chiming settings.  For example, you can set a trigger action to disable the chime for XX minutes.  Setting SoundChime to True, enables the Chime.  Setting SoundChime to False, disables the chime.  This lasts until the variable is changed.   o �ppp   T h e   S o u n d C h i m e   v a r i a b l e   ( i n   I n d i g o ' s   V a r i a b l e ' s   t a b l e )   w i l l   o v e r r i d e   t h e   C h i m i n g   s e t t i n g s .     F o r   e x a m p l e ,   y o u   c a n   s e t   a   t r i g g e r   a c t i o n   t o   d i s a b l e   t h e   c h i m e   f o r   X X   m i n u t e s .     S e t t i n g   S o u n d C h i m e   t o   T r u e ,   e n a b l e s   t h e   C h i m e .     S e t t i n g   S o u n d C h i m e   t o   F a l s e ,   d i s a b l e s   t h e   c h i m e .     T h i s   l a s t s   u n t i l   t h e   v a r i a b l e   i s   c h a n g e d .m qrq j   { }�js�j (0 chime_only_on_open Chime_Only_On_Opens m   { |�i
�i boovtruer tut l     �hvw�h  v b \ Only trigger the Chime on a Open Security notification.  The default beep will always play.   w �xx �   O n l y   t r i g g e r   t h e   C h i m e   o n   a   O p e n   S e c u r i t y   n o t i f i c a t i o n .     T h e   d e f a u l t   b e e p   w i l l   a l w a y s   p l a y .u yzy l     �g�f�e�g  �f  �e  z {|{ j   ~ ��d}�d "0 chime_min_delay Chime_Min_delay} m   ~ �~~ ?�333333| � l     �c���c  � � � The minimium delay between Chime requests.  Any chime request that is within this delay (in minutes) will be logged, but the chime will not be triggered.   � ���4   T h e   m i n i m i u m   d e l a y   b e t w e e n   C h i m e   r e q u e s t s .     A n y   c h i m e   r e q u e s t   t h a t   i s   w i t h i n   t h i s   d e l a y   ( i n   m i n u t e s )   w i l l   b e   l o g g e d ,   b u t   t h e   c h i m e   w i l l   n o t   b e   t r i g g e r e d .� ��� l     �b�a�`�b  �a  �`  � ��� j   � ��_��_ >0 inactivity_heartbeat_watchdog Inactivity_Heartbeat_Watchdog� m   � ��^�^ � ��� l     �]���]  � The maximium number of seconds before a warning will start appearing for an alarm heartbeat.  If you receive an inactivity warning, please check the batteries, and test the contacts. The Deafult is : 7200 seconds = 120 Min = 2 Hrs before a inactivity warning will start logging.   � ���.   T h e   m a x i m i u m   n u m b e r   o f   s e c o n d s   b e f o r e   a   w a r n i n g   w i l l   s t a r t   a p p e a r i n g   f o r   a n   a l a r m   h e a r t b e a t .     I f   y o u   r e c e i v e   a n   i n a c t i v i t y   w a r n i n g ,   p l e a s e   c h e c k   t h e   b a t t e r i e s ,   a n d   t e s t   t h e   c o n t a c t s .   T h e   D e a f u l t   i s   :   7 2 0 0   s e c o n d s   =   1 2 0   M i n   =   2   H r s   b e f o r e   a   i n a c t i v i t y   w a r n i n g   w i l l   s t a r t   l o g g i n g .� ��� l     �\�[�Z�\  �[  �Z  � ��� l     �Y���Y  � 6 0 Property usage comments follow item definitions   � ��� `   P r o p e r t y   u s a g e   c o m m e n t s   f o l l o w   i t e m   d e f i n i t i o n s� ��� j   � ��X��X 0 	use_growl 	Use_Growl� m   � ��W
�W boovtrue� ��� l     �V���V  � � � Use_Growl, if true, Growl notifications will be broadcast for any Opened / Closed events. If false, no Growl notifications will be sent.    � ���   U s e _ G r o w l ,   i f   t r u e ,   G r o w l   n o t i f i c a t i o n s   w i l l   b e   b r o a d c a s t   f o r   a n y   O p e n e d   /   C l o s e d   e v e n t s .   I f   f a l s e ,   n o   G r o w l   n o t i f i c a t i o n s   w i l l   b e   s e n t .  � ��� l     �U�T�S�U  �T  �S  � ��� l     ���� j   � ��R��R 40 growl_notifications_list Growl_Notifications_List� J   � ��� ��� m   � ��� ���  O p e n e d� ��� m   � ��� ���  C l o s e d� ��Q� m   � ��� ���  C h e c k   A l a r m�Q  � 8 2 List the Growl notifications that you wish to use   � ��� d   L i s t   t h e   G r o w l   n o t i f i c a t i o n s   t h a t   y o u   w i s h   t o   u s e� ��� l     �P�O�N�P  �O  �N  � ��� l     ���� j   � ��M��M :0 growl_enabled_notifications Growl_Enabled_Notifications� J   � ��� ��� m   � ��� ���  O p e n e d� ��L� m   � ��� ���  C h e c k   A l a r m�L  � 7 1 The default growl Notifications that are enabled   � ��� b   T h e   d e f a u l t   g r o w l   N o t i f i c a t i o n s   t h a t   a r e   e n a b l e d� ��� l     �K�J�I�K  �J  �I  � ��� l     �H�G�F�H  �G  �F  � ��� l     �E���E  �   Advanced Settings   � ��� $   A d v a n c e d   S e t t i n g s� ��� j   � ��D��D D0  send_email_on_inactive_heartbeat  Send_Email_on_Inactive_Heartbeat� m   � ��C
�C boovfals� ��� l     �B���B  � a [ Send an email if the security Heartbeats have not been detected within the Watchdog value.   � ��� �   S e n d   a n   e m a i l   i f   t h e   s e c u r i t y   H e a r t b e a t s   h a v e   n o t   b e e n   d e t e c t e d   w i t h i n   t h e   W a t c h d o g   v a l u e .� ��� l     �A�@�?�A  �@  �?  � ��� j   � ��>��> $0 se_ibeat_address SE_IBeat_Address� J   � ��� ��� m   � ��� ��� & e x a m p l e @ e x a m p l e . c o m� ��=� m   � ��� ��� ( e x a m p l e 2 @ e x a m p l e . c o m�=  � ��� l     �<���<  � F @ Send Email(s) to the following addresses, seperated by a comma.   � ��� �   S e n d   E m a i l ( s )   t o   t h e   f o l l o w i n g   a d d r e s s e s ,   s e p e r a t e d   b y   a   c o m m a .� ��� l     �;�:�9�;  �:  �9  � ��� j   � ��8��8 @0 update_heartbeat_after_actions Update_Heartbeat_After_Actions� m   � ��7
�7 boovtrue� ��� l     �6���6  � � �  Update the heartbeat after every action.  Normal behavior is to not update Heartbeats after an action occurs.  This forces the heartbeat to update after every action of the device.   � ���l     U p d a t e   t h e   h e a r t b e a t   a f t e r   e v e r y   a c t i o n .     N o r m a l   b e h a v i o r   i s   t o   n o t   u p d a t e   H e a r t b e a t s   a f t e r   a n   a c t i o n   o c c u r s .     T h i s   f o r c e s   t h e   h e a r t b e a t   t o   u p d a t e   a f t e r   e v e r y   a c t i o n   o f   t h e   d e v i c e .� ��� l     �5�4�3�5  �4  �3  � ��� j   � ��2��2 (0 playsound_location PlaySound_Location� m   � ��� ���  / A p p l i c a t i o n s /� ��� l     �1�0�/�1  �0  �/  � ��� l     �.���.  � b \--------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �- �-      Growl Support    �    G r o w l   S u p p o r t�  l     �,�+�*�,  �+  �*    i   � � I      �)	�(�) 0 send_to_growl  	 

 o      �'�' 0 sensor_name   �& o      �%�% 0 action_name  �&  �(   k     8  l     �$�$   !  Send announcement to Growl    � 6   S e n d   a n n o u n c e m e n t   t o   G r o w l �# O     8 k    7  l   �"�"   1 + Make a list of all the notification types     � V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s    l   �!�!   ' ! that this script will ever send:    �   B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d : !"! r    #$# o    	� �  40 growl_notifications_list Growl_Notifications_List$ l     %��% o      �� ,0 allnotificationslist allNotificationsList�  �  " &'& r    ()( o    �� :0 growl_enabled_notifications Growl_Enabled_Notifications) l     *��* o      �� 40 enablednotificationslist enabledNotificationsList�  �  ' +,+ l   ����  �  �  , -.- I   !��/
� .registernull��� ��� null�  / �01
� 
appl0 l 	  2��2 m    33 �44  I n d i g o   S e c u r i t y�  �  1 �56
� 
anot5 l 
  7��7 o    �� ,0 allnotificationslist allNotificationsList�  �  6 �89
� 
dnot8 l 
  :��
: o    �	�	 40 enablednotificationslist enabledNotificationsList�  �
  9 �;�
� 
iapp; m    << �==  S c r i p t   E d i t o r�  . >?> l  " "����  �  �  ? @�@ I  " 7��A
� .notifygrnull��� ��� null�  A � BC
�  
nameB l 	 $ %D����D o   $ %���� 0 action_name  ��  ��  C ��EF
�� 
titlE b   & +GHG b   & )IJI l 	 & 'K����K o   & '���� 0 sensor_name  ��  ��  J m   ' (LL �MM   H o   ) *���� 0 action_name  F ��NO
�� 
descN b   , 1PQP b   , /RSR l 	 , -T����T o   , -���� 0 sensor_name  ��  ��  S m   - .UU �VV   Q o   / 0���� 0 action_name  O ��W��
�� 
applW m   2 3XX �YY  I n d i g o   S e c u r i t y��  �   m     ZZ.                                                                                  GRRR   alis    �  Local_Drive                ��
VH+   �GrowlHelperApp.app                                              �đA�        ����  	                	Resources     ��P�      đz     � �   ��     XLocal_Drive:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    L o c a l _ D r i v e  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  �#   [\[ l     ��������  ��  ��  \ ]^] l     ��_`��  _ b \--------------------------------------------------------------------------------------------   ` �aa � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -^ bcb l     ��de��  d   Find & Replace    e �ff     F i n d   &   R e p l a c e  c ghg l     ��ij��  i   find : Text to be found   j �kk 0   f i n d   :   T e x t   t o   b e   f o u n dh lml l     ��no��  n %  replace : Text to replace with   o �pp >   r e p l a c e   :   T e x t   t o   r e p l a c e   w i t hm qrq l     ��st��  s $  subject : Text to be searched   t �uu <   s u b j e c t   :   T e x t   t o   b e   s e a r c h e dr vwv i   � �xyx I      ��z���� 0 replacetext replaceTextz {|{ o      ���� 0 find  | }~} o      ���� 0 replace  ~ �� o      ���� 0 subject  ��  ��  y k     &�� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 prevtids prevTIDs� ��� r    ��� o    ���� 0 find  � n     ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    ��� 2   ��
�� 
citm� o    ���� 0 subject  � o      ���� 0 subject  � ��� l   ��������  ��  ��  � ��� r    ��� o    ���� 0 replace  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� b    ��� m    �� ���  � o    ���� 0 subject  � o      ���� 0 subject  � ��� r    #��� o    ���� 0 prevtids prevTIDs� n     ��� 1     "��
�� 
txdl� 1     ��
�� 
ascr� ��� l  $ $��������  ��  ��  � ���� L   $ &�� o   $ %���� 0 subject  ��  w ��� l     ��������  ��  ��  � ��� l     ������  � b \--------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� i   � ���� I      �������  0 say_alarm_text Say_Alarm_Text� ��� o      ���� 0 sensor_name  � ���� o      ���� 
0 action  ��  ��  � k     k�� ��� Z     ������� =     ��� o     ���� 
0 action  � m    �� ���  O p e n e d� k    �� ��� r    ��� n   ��� 4    ���
�� 
cobj� m    ���� � o    ���� (0 sensor_speech_text Sensor_Speech_Text� o      ���� 0 text_to_speak  � ���� r    ��� I    ������� 0 replacetext replaceText� ��� m    �� ���  % s� ��� o    ���� 0 sensor_name  � ���� o    ���� 0 text_to_speak  ��  ��  � o      ���� 0 text_to_speak  ��  ��  ��  � ��� Z     ?������� =     #��� o     !���� 
0 action  � m   ! "�� ���  C l o s e d� k   & ;�� ��� r   & 0��� n  & .��� 4   + .���
�� 
cobj� m   , -���� � o   & +���� (0 sensor_speech_text Sensor_Speech_Text� o      ���� 0 text_to_speak  � ���� r   1 ;��� I   1 9������� 0 replacetext replaceText� ��� m   2 3�� ���  % s� ��� o   3 4���� 0 sensor_name  � ���� o   4 5���� 0 text_to_speak  ��  ��  � o      ���� 0 text_to_speak  ��  ��  ��  � ��� Z   @ _������� =   @ C��� o   @ A���� 
0 action  � m   A B�� ���  T i m e O u t� k   F [�� ��� r   F P��� n  F N   4   K N��
�� 
cobj m   L M����  o   F K���� (0 sensor_speech_text Sensor_Speech_Text� o      ���� 0 text_to_speak  � �� r   Q [ I   Q Y������ 0 replacetext replaceText  m   R S		 �

  % s  o   S T���� 0 sensor_name   �� o   T U���� 0 text_to_speak  ��  ��   o      ���� 0 text_to_speak  ��  ��  ��  � �� I  ` k��
�� .sysottosnull���     TEXT o   ` a���� 0 text_to_speak   ����
�� 
VOIC o   b g���� 0 speech_voice Speech_Voice��  ��  �  l     ����   b \--------------------------------------------------------------------------------------------    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     ����     Time Support    �    T i m e   S u p p o r t  l     ��������  ��  ��    i   � � !  I      �������� 0 timestamp_str  ��  ��  ! k     T"" #$# l     ��%&��  % 4 . Create the Date format as MM/DD/YYYY HH:MM:SS   & �'' \   C r e a t e   t h e   D a t e   f o r m a t   a s   M M / D D / Y Y Y Y   H H : M M : S S$ ()( r     *+* I    ������
�� .misccurdldt    ��� null��  ��  + o      ���� 0 my_date  ) ,-, r    ./. c    010 n    232 1   	 ��
�� 
year3 o    	���� 0 my_date  1 m    ��
�� 
long/ o      ���� 0 y  - 454 r    676 c    898 n    :;: m    �
� 
mnth; o    �~�~ 0 my_date  9 m    �}
�} 
long7 o      �|�| 0 m  5 <=< Z    )>?�{�z> A   @A@ o    �y�y 0 m  A m    �x�x 
? r    %BCB c    #DED b    !FGF m    HH �II  0G o     �w�w 0 m  E m   ! "�v
�v 
ctxtC o      �u�u 0 m  �{  �z  = JKJ r   * 1LML c   * /NON n   * -PQP 1   + -�t
�t 
day Q o   * +�s�s 0 my_date  O m   - .�r
�r 
longM o      �q�q 0 d  K RSR Z   2 CTU�p�oT A  2 5VWV o   2 3�n�n 0 d  W m   3 4�m�m 
U r   8 ?XYX c   8 =Z[Z b   8 ;\]\ m   8 9^^ �__  0] o   9 :�l�l 0 d  [ m   ; <�k
�k 
ctxtY o      �j�j 0 d  �p  �o  S `�i` L   D Taa b   D Sbcb b   D Oded b   D Mfgf b   D Khih b   D Ijkj b   D Glml o   D E�h�h 0 m  m m   E Fnn �oo  /k o   G H�g�g 0 d  i m   I Jpp �qq  /g o   K L�f�f 0 y  e m   M Nrr �ss   c n   O Rtut 1   P R�e
�e 
tstru o   O P�d�d 0 my_date  �i   vwv l     �c�b�a�c  �b  �a  w xyx i   � �z{z I      �`|�_�` 0 time_elapsed  | }�^} o      �]�] 0 td  �^  �_  { k     ~~ � l     �\���\  � > 8 Return the time lapsed from the Current Date in seconds   � ��� p   R e t u r n   t h e   t i m e   l a p s e d   f r o m   t h e   C u r r e n t   D a t e   i n   s e c o n d s� ��[� L     �� l    
��Z�Y� \     
��� l    ��X�W� I    �V�U�T
�V .misccurdldt    ��� null�U  �T  �X  �W  � l   	��S�R� 4    	�Q�
�Q 
ldt � l   ��P�O� o    �N�N 0 td  �P  �O  �S  �R  �Z  �Y  �[  y ��� l     �M�L�K�M  �L  �K  � ��� l     �J���J  � b \--------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� i   � ���� I      �I��H�I 0 	send_mail  � ��� o      �G�G 0 rec  � ��� o      �F�F 0 sub  � ��E� o      �D�D 0 msg  �E  �H  � k     7�� ��� l     �C���C  � H B Send an Email, to the recipent, with Subject, and msg as the body   � ��� �   S e n d   a n   E m a i l ,   t o   t h e   r e c i p e n t ,   w i t h   S u b j e c t ,   a n d   m s g   a s   t h e   b o d y� ��B� O     7��� k    6�� ��� r    ��� I   �A�@�
�A .corecrel****      � null�@  � �?��>
�? 
kocl� m    �=
�= 
bcke�>  � o      �<�< 0 x  � ��� O    0��� k    /�� ��� I   #�;�:�
�; .corecrel****      � null�:  � �9��
�9 
kocl� m    �8
�8 
trcp� �7��
�7 
insh� n    ���  ;    � 2   �6
�6 
trcp� �5��4
�5 
prdt� K    �� �3��2
�3 
radd� o    �1�1 0 rec  �2  �4  � ��� r   $ )��� o   $ %�0�0 0 sub  � 1   % (�/
�/ 
subj� ��.� r   * /��� o   * +�-�- 0 msg  � 1   + .�,
�, 
ctnt�.  � o    �+�+ 0 x  � ��*� I  1 6�)��(
�) .emsgsendbool        bcke� o   1 2�'�' 0 x  �(  �*  � m     ���                                                                                  emal   alis    B  Local_Drive                ��
VH+     Mail.app                                                        �ç%L        ����  	                Applications    ��P�      çk�         !Local_Drive:Applications:Mail.app     M a i l . a p p    L o c a l _ D r i v e  Applications/Mail.app   / ��  �B  � ��� l     �&�%�$�&  �%  �$  � ��� w      ��� k      �� ��� i   � ���� I      �#��"�# 0 read_indigo_variable  � ��� o      �!�! 0 variable_name  � �� � o      �� 0 default_val  �   �"  � k     )�� ��� l     ����  � k e Read variable_name from Indigo's internal variable table.  Create the variable if it does not exist.   � ��� �   R e a d   v a r i a b l e _ n a m e   f r o m   I n d i g o ' s   i n t e r n a l   v a r i a b l e   t a b l e .     C r e a t e   t h e   v a r i a b l e   i f   i t   d o e s   n o t   e x i s t .� ��� Z     ����� H     	�� l    ���� I    ���
� .coredoexbool        obj � 4     ��
� 
Vrbl� l   ���� o    �� 0 variable_name  �  �  �  �  �  � I   ���
� .corecrel****      � null�  � ���
� 
kocl� m    �
� 
Vrbl� ���
� 
prdt� K    �� ���
� 
pnam� o    �� 0 variable_name  � ���

� 
Valu� l   ��	�� c    ��� o    �� 0 default_val  � m    �
� 
TEXT�	  �  �
  �  �  �  � ��� L   ! )�� e   ! (�� n   ! (��� 1   % '�
� 
Valu� l  ! %���� 4   ! %��
� 
Vrbl� l  # $�� ��� o   # $���� 0 variable_name  �   ��  �  �  �  � ��� l     ��������  ��  ��  � ��� i   � ���� I      �� ���� 0 set_variable     o      ���� 0 variable_name   �� o      ���� 0 variable_value  ��  ��  � Z     )�� H     	 l    ���� I    ��	��
�� .coredoexbool        obj 	 4     ��

�� 
Vrbl
 l   ���� o    ���� 0 variable_name  ��  ��  ��  ��  ��   I   ����
�� .corecrel****      � null��   ��
�� 
kocl m    ��
�� 
Vrbl ����
�� 
prdt K     ��
�� 
pnam o    ���� 0 variable_name   ����
�� 
Valu l   ���� c     o    ���� 0 variable_value   m    ��
�� 
TEXT��  ��  ��  ��  ��   r    ) l   "���� c    " o     ���� 0 variable_value   m     !��
�� 
TEXT��  ��   n       1   & (��
�� 
Valu l  " &���� 4   " &��
�� 
Vrbl l  $ % ����  o   $ %���� 0 variable_name  ��  ��  ��  ��  � !"! l     ��������  ��  ��  " #$# i   � �%&% I      ��'���� 0 log_security  ' (��( o      ���� 0 log_text  ��  ��  & I    	��)*
�� .INDOLog null���    utf8) c     +,+ o     ���� 0 log_text  , m    ��
�� 
TEXT* ��-��
�� 
LgTy- m    .. �//  S e c u r i t y��  $ 010 l     ��������  ��  ��  1 232 i   � �454 I      �������� 0 check_heartbeats  ��  ��  5 k     �66 787 r     9:9 m     ;; �<<  : o      ���� 0 msg  8 =>= X    |?��@? k    wAA BCB r    "DED b     FGF l   H����H c    IJI l   K����K n    LML 4    ��N
�� 
cobjN m    ���� M o    ���� 0 x  ��  ��  J m    ��
�� 
TEXT��  ��  G m    OO �PP  _ l a s t _ h e a r t b e a tE o      ���� 0 variable_name  C QRQ l  # #��������  ��  ��  R STS r   # ,UVU n  # *WXW I   $ *��Y���� 0 read_indigo_variable  Y Z[Z o   $ %���� 0 variable_name  [ \��\ m   % &����  ��  ��  X  f   # $V o      ���� 0 v  T ]^] r   - 5_`_ n  - 3aba I   . 3��c���� 0 time_elapsed  c d��d o   . /���� 0 v  ��  ��  b  f   - .` o      ���� 0 dt  ^ e��e Z   6 wfg����f ?  6 =hih o   6 7���� 0 dt  i o   7 <���� >0 inactivity_heartbeat_watchdog Inactivity_Heartbeat_Watchdogg k   @ sjj klk r   @ Kmnm b   @ Iopo b   @ Gqrq b   @ Csts o   @ A���� 0 variable_name  t m   A Buu �vv H   m a y   n o t   b e   a c t i v e .     I n a c t i v i t y   f o r  r _   C Fwxw o   C D���� 0 dt  x m   D E���� <p m   G Hyy �zz    m i n u t e s .n o      ���� 0 log_msg  l {|{ n  L R}~} I   M R������ 0 log_security   ���� o   M N���� 0 log_msg  ��  ��  ~  f   L M| ��� Z  S k������� o   S X���� 0 	use_growl 	Use_Growl� n  [ g��� I   \ g������� 0 send_to_growl  � ��� c   \ b��� l  \ `������ n   \ `��� 4   ] `���
�� 
cobj� m   ^ _���� � o   \ ]���� 0 x  ��  ��  � m   ` a��
�� 
TEXT� ���� m   b c�� ���  C h e c k   A l a r m��  ��  �  f   [ \��  ��  � ���� r   l s��� b   l q��� b   l o��� o   l m���� 0 msg  � o   m n���� 0 log_msg  � o   o p��
�� 
ret � o      ���� 0 msg  ��  ��  ��  ��  �� 0 x  @ o    ���� 0 alarm_matrix Alarm_Matrix> ��� l  } }��������  ��  ��  � ��� Z   } �������� o   } ����� D0  send_email_on_inactive_heartbeat  Send_Email_on_Inactive_Heartbeat� Z   � �������� H   � ��� l  � ������� =   � ���� o   � ��� 0 msg  � m   � ��� ���  ��  ��  � X   � ���~�� k   � ��� ��� n  � ���� I   � ��}��|�} 0 log_security  � ��{� b   � ���� m   � ��� ��� B S e n d i n g   H e a r t B e a t   A l e r t   e m a i l   t o  � o   � ��z�z 0 x  �{  �|  �  f   � �� ��y� n  � ���� I   � ��x��w�x 0 	send_mail  � ��� o   � ��v�v 0 x  � ��� m   � ��� ��� V S e c u r i t y   S e n s o r   H e a r t B e a t   I n a c t i v i t y   R e p o r t� ��u� o   � ��t�t 0 msg  �u  �w  �  f   � ��y  �~ 0 x  � o   � ��s�s $0 se_ibeat_address SE_IBeat_Address��  ��  ��  ��  � ��r� n  � ���� I   � ��q��p�q 0 set_variable  � ��� m   � ��� ��� $ C h e c k e d _ H e a r t b e a t s� ��o� n  � ���� I   � ��n�m�l�n 0 timestamp_str  �m  �l  �  f   � ��o  �p  �  f   � ��r  3 ��� l     �k�j�i�k  �j  �i  � ��� i   � ���� I      �h��g�h 0 decode_security  � ��� o      �f�f 0 	eventtype 	eventType� ��e� o      �d�d 0 	device_id 	device_ID�e  �g  � k    J�� ��� l     �c���c  � X R Will take the eventType, and device_ID and decode it and return the decoded data.   � ��� �   W i l l   t a k e   t h e   e v e n t T y p e ,   a n d   d e v i c e _ I D   a n d   d e c o d e   i t   a n d   r e t u r n   t h e   d e c o d e d   d a t a .� ��� l     �b���b  � D > found_in_matrix 	- boolean 	- true = found, false = not found   � ��� |   f o u n d _ i n _ m a t r i x   	 -   b o o l e a n   	 -   t r u e   =   f o u n d ,   f a l s e   =   n o t   f o u n d� ��� l     �a���a  � B < sensor_name     	- string  		- defined name in alarm_matrix   � ��� x   s e n s o r _ n a m e           	 -   s t r i n g     	 	 -   d e f i n e d   n a m e   i n   a l a r m _ m a t r i x� ��� l     �`���`  � 6 0 action_name	  	- string  		- "Open" or "Closed"   � ��� `   a c t i o n _ n a m e 	     	 -   s t r i n g     	 	 -   " O p e n "   o r   " C l o s e d "� ��� l     �_���_  � B < action_bool     		- string  		- true = open, false = closed   � ��� x   a c t i o n _ b o o l           	 	 -   s t r i n g     	 	 -   t r u e   =   o p e n ,   f a l s e   =   c l o s e d� ��� l     �^���^  � b \ growling        		- boolean 	- true = growl message enabled, false = growl message disabled   � ��� �   g r o w l i n g                 	 	 -   b o o l e a n   	 -   t r u e   =   g r o w l   m e s s a g e   e n a b l e d ,   f a l s e   =   g r o w l   m e s s a g e   d i s a b l e d� ��� l     �]���]  � R L chiming         		- boolean 	- true = chime enabled, false = chime disabled   � ��� �   c h i m i n g                   	 	 -   b o o l e a n   	 -   t r u e   =   c h i m e   e n a b l e d ,   f a l s e   =   c h i m e   d i s a b l e d� ��� l     �\���\  � X R chime_device    		- string  		- device id for Chime device as set in alarm_matrix   � ��� �   c h i m e _ d e v i c e         	 	 -   s t r i n g     	 	 -   d e v i c e   i d   f o r   C h i m e   d e v i c e   a s   s e t   i n   a l a r m _ m a t r i x� ��� l     �[ �[    "  Ignore_Device 		- Boolean -    � 8   I g n o r e _ D e v i c e   	 	 -   B o o l e a n   -�  l     �Z�Z   &   Sound File		- Boolean / String.    � @   S o u n d   F i l e 	 	 -   B o o l e a n   /   S t r i n g . 	 l     �Y
�Y  
 #  Heartbeat_monitor 	- Boolean    � :   H e a r t b e a t _ m o n i t o r   	 -   B o o l e a n	  l     �X�W�V�X  �W  �V    X     ��U Z    ��T�S =    o    �R�R 0 	device_id 	device_ID n    4    �Q
�Q 
cobj m    �P�P  o    �O�O 0 	alarmdata   k    �  l   �N�N      The Device has been found    � 4   T h e   D e v i c e   h a s   b e e n   f o u n d  !  l   �M�L�K�M  �L  �K  ! "#" r    &$%$ n   $&'& I    $�J(�I�J 0 read_indigo_variable  ( )*) m    ++ �,, . I g n o r e _ S e c u r i t y _ S e n s o r s* -�H- m     �G
�G boovtrue�H  �I  '  f    % o      �F�F 0 ignoresensor IgnoreSensor# ./. Z  ' 701�E�D0 =  ' *232 o   ' (�C�C 0 ignoresensor IgnoreSensor3 m   ( )�B
�B boovfals1 r   - 3454 n  - 1676 4   . 1�A8
�A 
cobj8 m   / 0�@�@ 7 o   - .�?�? 0 	alarmdata  5 o      �>�> 0 ignoresensor IgnoreSensor�E  �D  / 9:9 l  8 8�=�<�;�=  �<  �;  : ;<; Z  8 D=>�:�9= =  8 ;?@? o   8 9�8�8 0 ignoresensor IgnoreSensor@ m   9 :�7
�7 boovtrue> L   > @AA m   > ?�6
�6 boovfals�:  �9  < BCB l  E E�5DE�5  D 6 0if item 6 in alarmdata is true then return false   E �FF ` i f   i t e m   6   i n   a l a r m d a t a   i s   t r u e   t h e n   r e t u r n   f a l s eC GHG l  E E�4IJ�4  I , &  The device is flagged to be ignored.   J �KK L     T h e   d e v i c e   i s   f l a g g e d   t o   b e   i g n o r e d .H LML l  E E�3�2�1�3  �2  �1  M NON l  E E�0�/�.�0  �/  �.  O PQP r   E KRSR n  E ITUT 4   F I�-V
�- 
cobjV m   G H�,�, U o   E F�+�+ 0 	alarmdata  S o      �*�* 0 sensor_name  Q WXW Z   L }YZ[�)Y G   L W\]\ =  L O^_^ o   L M�(�( 0 	eventtype 	eventType_ m   M N�'
�' EnXSxSs1] =  R U`a` o   R S�&�& 0 	eventtype 	eventTypea m   S T�%
�% EnXSxSs2Z k   Z abb cdc r   Z ]efe m   Z [gg �hh  C l o s e df o      �$�$ 0 action_name  d i�#i r   ^ ajkj m   ^ _�"
�" boovfalsk o      �!�! 0 action_bool  �#  [ lml G   d onon =  d gpqp o   d e� �  0 	eventtype 	eventTypeq m   e f�
� EnXSxSs3o =  j mrsr o   j k�� 0 	eventtype 	eventTypes m   k l�
� EnXSxSs4m t�t k   r yuu vwv r   r uxyx m   r szz �{{  O p e n e dy o      �� 0 action_name  w |�| r   v y}~} m   v w�
� boovtrue~ o      �� 0 action_bool  �  �  �)  X � r   ~ ���� n  ~ ���� 4    ���
� 
cobj� m   � ��� � o   ~ �� 0 	alarmdata  � o      �� 0 growling  � ��� r   � ���� n  � ���� 4   � ���
� 
cobj� m   � ��� � o   � ��� 0 	alarmdata  � o      �� 0 chiming  � ��� r   � ���� n  � ���� 4   � ���
� 
cobj� m   � ��� � o   � ��� 0 	alarmdata  � o      �� 0 chime_device  � ��� r   � ���� n  � ���� 4   � ���
� 
cobj� m   � ��
�
 � o   � ��	�	 0 	alarmdata  � o      �� 0 
sound_file  � ��� r   � ���� n  � ���� 4   � ���
� 
cobj� m   � ��� � o   � ��� 0 	alarmdata  � o      �� 0 heartbeat_monitor  � ��� L   � ��� J   � ��� ��� m   � ��
� boovtrue� ��� o   � ��� 0 sensor_name  � ��� o   � �� �  0 action_name  � ��� o   � ����� 0 action_bool  � ��� o   � ����� 0 growling  � ��� o   � ����� 0 chiming  � ��� o   � ����� 0 chime_device  � ��� o   � ����� 0 
sound_file  � ���� o   � ����� 0 heartbeat_monitor  ��  �  �T  �S  �U 0 	alarmdata   o    ���� 0 alarm_matrix Alarm_Matrix ��� l  � ���������  ��  ��  � ��� l  � �������  � H B Didn't find it in our Alarm_Matrix; use some reasonable defaults.   � ��� �   D i d n ' t   f i n d   i t   i n   o u r   A l a r m _ M a t r i x ;   u s e   s o m e   r e a s o n a b l e   d e f a u l t s .� ��� r   � ���� m   � ��� ��� & U n r e c o g n i z e d _ S e n s o r� o      ���� 0 sensor_name  � ��� r   � ���� m   � ��� ���  � o      ���� 0 action_name  � ��� r   � ���� m   � ���
�� boovfals� o      ���� 0 action_bool  � ��� r   � ���� m   � ���
�� boovfals� o      ���� 0 growling  � ��� r   � ���� m   � ���
�� boovfals� o      ���� 0 chiming  � ��� r   � ���� m   � ��� ���  � o      ���� 0 chime_device  � ��� r   � ���� m   � ���
�� boovfals� o      ���� 0 
sound_file  � ��� r   � ���� m   � ���
�� boovfals� o      ���� 0 heartbeat_monitor  � ��� l  � ���������  ��  ��  � ��� l  � �������  � Y Smy log_security("(device ID " & device_ID & ")") --using type "UnRegistered Sensor"   � ��� � m y   l o g _ s e c u r i t y ( " ( d e v i c e   I D   "   &   d e v i c e _ I D   &   " ) " )   - - u s i n g   t y p e   " U n R e g i s t e r e d   S e n s o r "� ��� n  � ���� I   � �������� 0 log_security  � ���� m   � ��� ��� � S e c u r i t y   d e v i c e   i s   n o t   d e f i n e d   i n   ' s e c u r i t y   s a m p l e . s c p t '   A l a r m _ M a t r i x   p r o p e r t y .��  ��  �  f   � �� ��� n  � ���� I   � �������� 0 log_security  � ���� m   � ��� ��� � P l e a s e   a d d   a   n e w   l i n e   t o   t h e   A l a r m _ M a t r i x   p r o p e r t y   a t   t h e   t o p   o f   t h a t   f i l e��  ��  �  f   � �� ��� n  ���� I   �������� 0 log_security  � ���� b   � �   b   � � m   � � � , w i t h   t h e   D e v i c e   I D   o f   o   � ����� 0 	device_id 	device_ID m   � � �  .��  ��  �  f   � �� 	 r  

 m  ��
�� boovtrue o      ���� 0 alarm_detected  	  l ��������  ��  ��    Z  ;�� G   = 	 o  ���� 0 	eventtype 	eventType m  ��
�� EnXSxSs1 =  o  ���� 0 	eventtype 	eventType m  ��
�� EnXSxSs2 k    r   m   �  C l o s e d o      ���� 0 action_name    ��  r  !"! m  ��
�� boovfals" o      ���� 0 action_bool  ��   #$# G   +%&% =  #'(' o   !���� 0 	eventtype 	eventType( m  !"��
�� EnXSxSs3& = &))*) o  &'���� 0 	eventtype 	eventType* m  '(��
�� EnXSxSs4$ +��+ k  .7,, -.- r  .3/0/ m  .111 �22  O p e n e d0 o      ���� 0 action_name  . 3��3 r  47454 m  45��
�� boovtrue5 o      ���� 0 action_bool  ��  ��  ��   6��6 L  <J77 J  <I88 9:9 m  <=��
�� boovfals: ;<; o  =>���� 0 sensor_name  < =>= o  >?���� 0 action_name  > ?@? o  ?@���� 0 action_bool  @ ABA o  @A���� 0 growling  B CDC o  AB���� 0 chiming  D EFE o  BC���� 0 chime_device  F GHG o  CD���� 0 
sound_file  H I��I o  DE���� 0 heartbeat_monitor  ��  ��  � JKJ l     ��������  ��  ��  K LML i   � �NON I      ��P���� 0 sound_chime  P QRQ o      ���� 0 
soundchime 
SoundChimeR S��S o      ���� 0 chime_device  ��  ��  O Z     PTU��VT =    WXW o     ���� 0 
soundchime 
SoundChimeX m    ��
�� boovtrueU k    GYY Z[Z n   \]\ I    ��^���� 0 log_security  ^ _��_ m    `` �aa  S o u n d i n g   C h i m e��  ��  ]  f    [ b��b Q    Gcdec k    ff ghg I   ��i��
�� .INDOOff null���    utf8i o    ���� 0 chime_device  ��  h j��j I   ��kl
�� .INDOOn  null���    utf8k o    ���� 0 chime_device  l ��m��
�� 
Duram m    nn ?�      ��  ��  d R      ����o
�� .ascrerr ****      � ****��  o ��p��
�� 
errnp o      ���� 0 errnum errNum��  e Z   % Gqr����q =  % (sts o   % &���� 0 errnum errNumt m   & '�����@r k   + Cuu vwv n  + 1xyx I   , 1��z���� 0 log_security  z {��{ m   , -|| �}} � T h e   C h i m e   D e v i c e   d e f i n e d   i n   t h e   A l a r m _ M a t r i x   p r o p e r t y   d o e s   n o t   e x i s t .��  ��  y  f   + ,w ~~ n  2 <��� I   3 <������� 0 log_security  � ���� b   3 8��� b   3 6��� m   3 4�� ��� T C r e a t e   a   n e w   I n d i g o   D e v i c e   w i t h   t h e   n a m e   "� o   4 5���� 0 chime_device  � m   6 7�� ���  " ,   o r   m o d i f y��  ��  �  f   2 3 ���� n  = C��� I   > C������� 0 log_security  � ���� m   > ?�� ��� � t h e   A l a r m _ M a t r i x   p r o p e r t y   a t   t h e   t o p   o f   t h e   ' s e c u r i t y   s a m p l e . s c p t '   f i l e .��  ��  �  f   = >��  ��  ��  ��  ��  V n  J P��� I   K P������� 0 log_security  � ���� m   K L�� ��� ^ C h i m e   S u p r e s s e d . . .   ( D u e   t o   S o u n d C h i m e   V a r i a b l e )��  ��  �  f   J KM ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 do_chime  � ��� o      ���� 0 chime_enabled  � ��� o      ���� 0 action_bool  � ���� o      ���� 0 chime_device  ��  ��  � Z     �����~� o     �}�} 0 chime_enabled  � Z    ����|�{� G    ��� =   ��� o    	�z�z (0 chime_only_on_open Chime_Only_On_Open� m   	 
�y
�y boovfals� o    �x�x 0 action_bool  � k    ��� ��� r    ��� n   ��� I    �w��v�w 0 read_indigo_variable  � ��� m    �� ��� * C h i m e _ L a s t _ S o u n d e d _ m s� ��u� m    �t�t  �u  �v  �  f    � o      �s�s 0 last_chimed_ms  � ��� Z    1���r�q� ?    '��� o    �p�p 0 last_chimed_ms  � n    &��� 1   $ &�o
�o 
time� l   $��n�m� I   $�l�k�j
�l .misccurdldt    ��� null�k  �j  �n  �m  � r   * -��� m   * +�i�i � o      �h�h 0 last_chimed_ms  �r  �q  � ��g� Z   2 ����f�e� l  2 C��d�c� @   2 C��� n   2 9��� 1   7 9�b
�b 
time� l  2 7��a�`� I  2 7�_�^�]
�_ .misccurdldt    ��� null�^  �]  �a  �`  � [   9 B��� o   9 :�\�\ 0 last_chimed_ms  � l  : A��[�Z� ]   : A��� o   : ?�Y�Y "0 chime_min_delay Chime_Min_delay� m   ? @�X�X <�[  �Z  �d  �c  � k   F ��� ��� n  F U��� I   G U�W��V�W 0 set_variable  � ��� l  G H��U�T� m   G H�� ��� * C h i m e _ L a s t _ S o u n d e d _ m s�U  �T  � ��S� c   H Q��� n   H O��� 1   M O�R
�R 
time� l  H M��Q�P� I  H M�O�N�M
�O .misccurdldt    ��� null�N  �M  �Q  �P  � m   O P�L
�L 
TEXT�S  �V  �  f   F G� ��� n  V a��� I   W a�K��J�K 0 set_variable  � ��� l  W X��I�H� m   W X�� ��� $ C h i m e _ L a s t _ S o u n d e d�I  �H  � ��G� n  X ]��� I   Y ]�F�E�D�F 0 timestamp_str  �E  �D  �  f   X Y�G  �J  �  f   V W� ��� l  b b�C�B�A�C  �B  �A  � ��� r   b k��� n  b i��� I   c i�@��?�@ 0 read_indigo_variable  � ��� m   c d�� ���  S o u n d C h i m e� ��>� m   d e�=
�= boovtrue�>  �?  �  f   b c� o      �<�< 0 soundchimestr soundChimeStr� � � Z   l ��;�: G   l  G   l w =  l o o   l m�9�9 0 soundchimestr soundChimeStr m   m n		 �

  t r u e =  r u o   r s�8�8 0 soundchimestr soundChimeStr m   s t �  T r u e =  z } o   z {�7�7 0 soundchimestr soundChimeStr m   { | �  1 r   � � m   � ��6
�6 boovtrue o      �5�5 0 
soundchime 
SoundChime�;  �:    �4 n  � � I   � ��3�2�3 0 sound_chime    o   � ��1�1 0 
soundchime 
SoundChime �0 o   � ��/�/ 0 chime_device  �0  �2    f   � ��4  �f  �e  �g  �|  �{  �  �~  �  l     �.�-�,�.  �-  �,    i   � � !  I      �+"�*�+ 0 play_sound_file  " #$# o      �)�) 0 soundfile_to_play  $ %�(% o      �'�' 0 action_bool  �(  �*  ! k     .&& '(' n    )*) I    �&+�%�& 0 log_security  + ,�$, o    �#�# 0 soundfile_to_play  �$  �%  *  f     ( -�"- Z    ../�!� . F    010 H    22 l   
3��3 =   
454 o    �� 0 soundfile_to_play  5 m    	�
� boovfals�  �  1 o    �� 0 action_bool  / k    *66 787 n   9:9 I    �;�� 0 log_security  ; <�< m    == �>>  p l a y i n g   f i l e�  �  :  f    8 ?�? I   *�@�
� .sysoexecTEXT���     TEXT@ b    &ABA b    $CDC b    "EFE m    GG �HH  o p e n   - a  F o    !�� (0 playsound_location PlaySound_LocationD m   " #II �JJ   P l a y \   S o u n d . a p p  B o   $ %�� 0 soundfile_to_play  �  �  �!  �   �"   K�K l     ����  �  �  �  �$                                                                                  INDO   alis    �  Local_Drive                ��
VH+   ��IndigoServer.app                                                ���GM�        ����  	                Indigo 2    ��P�      �G��     �� ��       WLocal_Drive:Library:Application Support:Perceptive Automation:Indigo 2:IndigoServer.app   "  I n d i g o S e r v e r . a p p    L o c a l _ D r i v e  KLibrary/Application Support/Perceptive Automation/Indigo 2/IndigoServer.app   / ��  � LML l     ����  �  �  M NON l     �PQ�  P b \--------------------------------------------------------------------------------------------   Q �RR � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -O STS w      UVU k      WW XYX i   � �Z[Z I     �
\]
�
 .INDOprScnull���   0 EnXS\ o      �	�	 0 	eventtype 	eventType] �^�
� 
ScCd^ o      �� 0 devid devID�  [ k    X__ `a` l     �bc�  b ] W if eventType is sec_ArmHome_min then log "arm home (min)" using type "Security Sample"   c �dd �   i f   e v e n t T y p e   i s   s e c _ A r m H o m e _ m i n   t h e n   l o g   " a r m   h o m e   ( m i n ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "a efe l     �gh�  g ] W if eventType is sec_ArmHome_max then log "arm home (max)" using type "Security Sample"   h �ii �   i f   e v e n t T y p e   i s   s e c _ A r m H o m e _ m a x   t h e n   l o g   " a r m   h o m e   ( m a x ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "f jkj l     �lm�  l ] W if eventType is sec_ArmAway_min then log "arm away (min)" using type "Security Sample"   m �nn �   i f   e v e n t T y p e   i s   s e c _ A r m A w a y _ m i n   t h e n   l o g   " a r m   a w a y   ( m i n ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "k opo l     �qr�  q ] W if eventType is sec_ArmAway_max then log "arm away (max)" using type "Security Sample"   r �ss �   i f   e v e n t T y p e   i s   s e c _ A r m A w a y _ m a x   t h e n   l o g   " a r m   a w a y   ( m a x ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "p tut l     �vw�  v P J if eventType is sec_Disarm then log "disarm" using type "Security Sample"   w �xx �   i f   e v e n t T y p e   i s   s e c _ D i s a r m   t h e n   l o g   " d i s a r m "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "u yzy l     � {|�   { N H if eventType is sec_Panic then log "panic" using type "Security Sample"   | �}} �   i f   e v e n t T y p e   i s   s e c _ P a n i c   t h e n   l o g   " p a n i c "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "z ~~ l     ������  � ^ X if eventType is sec_LightsOn then log "security lights on" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ L i g h t s O n   t h e n   l o g   " s e c u r i t y   l i g h t s   o n "   u s i n g   t y p e   " S e c u r i t y   S a m p l e " ��� l     ������  � ` Z if eventType is sec_LightsOff then log "security lights off" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ L i g h t s O f f   t h e n   l o g   " s e c u r i t y   l i g h t s   o f f "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ������  � m g if eventType is sec_SensorNormal_min then log "sensor normal (min delay)" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ S e n s o r N o r m a l _ m i n   t h e n   l o g   " s e n s o r   n o r m a l   ( m i n   d e l a y ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ������  � m g if eventType is sec_SensorNormal_max then log "sensor normal (max delay)" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ S e n s o r N o r m a l _ m a x   t h e n   l o g   " s e n s o r   n o r m a l   ( m a x   d e l a y ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ������  � k e if eventType is sec_SensorAlert_min then log "sensor alert (min delay)" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ S e n s o r A l e r t _ m i n   t h e n   l o g   " s e n s o r   a l e r t   ( m i n   d e l a y ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ������  � k e if eventType is sec_SensorAlert_max then log "sensor alert (max delay)" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ S e n s o r A l e r t _ m a x   t h e n   l o g   " s e n s o r   a l e r t   ( m a x   d e l a y ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ��������  ��  ��  � ��� r     ��� m     ��
�� boovfals� o      ���� 0 found_in_matrix  � ��� l   ��������  ��  ��  � ��� r    ��� n   ��� I    ������� 0 decode_security  � ��� o    ���� 0 	eventtype 	eventType� ���� o    ���� 0 devid devID��  ��  �  f    � o      ���� 0 decoded_data  � ��� l   ������  � h b found_in_matrix, sensor_name, action_name, action_bool, growl_enabled, chime_device, chime_device   � ��� �   f o u n d _ i n _ m a t r i x ,   s e n s o r _ n a m e ,   a c t i o n _ n a m e ,   a c t i o n _ b o o l ,   g r o w l _ e n a b l e d ,   c h i m e _ d e v i c e ,   c h i m e _ d e v i c e� ��� l   ��������  ��  ��  � ��� Z   ������� =   ��� o    ���� 0 decoded_data  � m    ��
�� boovfals� L    ����  ��  ��  � ��� l   ������  �   Sensor is to be ignored.   � ��� 2   S e n s o r   i s   t o   b e   i g n o r e d .� ��� l   ��������  ��  ��  � ��� r    !��� n    ��� 4    ���
�� 
cobj� m    ���� � o    ���� 0 decoded_data  � o      ���� 0 found_in_matrix  � ��� r   " (��� n   " &��� 4   # &���
�� 
cobj� m   $ %���� � o   " #���� 0 decoded_data  � o      ���� 0 sensor_name  � ��� r   ) /��� n   ) -��� 4   * -���
�� 
cobj� m   + ,���� � o   ) *���� 0 decoded_data  � o      ���� 0 action_name  � ��� r   0 6��� n   0 4��� 4   1 4���
�� 
cobj� m   2 3���� � o   0 1���� 0 decoded_data  � o      ���� 0 action_bool  � ��� r   7 =��� n   7 ;��� 4   8 ;���
�� 
cobj� m   9 :���� � o   7 8���� 0 decoded_data  � o      ���� 0 growl_enabled  � ��� r   > D��� n   > B��� 4   ? B���
�� 
cobj� m   @ A���� � o   > ?���� 0 decoded_data  � o      ���� 0 chime_enabled  � ��� r   E K��� n   E I��� 4   F I���
�� 
cobj� m   G H���� � o   E F���� 0 decoded_data  � o      ���� 0 chime_device  � ��� r   L R��� n   L P��� 4   M P���
�� 
cobj� m   N O���� � o   L M���� 0 decoded_data  � o      ���� 0 
sound_file  � ��� r   S Y��� n   S W��� 4   T W�� 
�� 
cobj  m   U V���� 	� o   S T���� 0 decoded_data  � o      ���� 0 monitor  �  l  Z Z��������  ��  ��    l  Z Z����     Check for Heartbeat    � (   C h e c k   f o r   H e a r t b e a t 	 r   Z ]

 m   Z [��
�� boovfals o      ���� 0 	heartbeat  	  Z   ^ ��� l  ^ i���� >  ^ i n  ^ g I   _ g������ 0 read_indigo_variable    b   _ b o   _ `���� 0 sensor_name   m   ` a �  _ l a s t _ s t a t u s �� m   b c �  C l o s e d��  ��    f   ^ _ o   g h���� 0 action_name  ��  ��   k   l �   !"! l  l l��#$��  # ^ X Check for heart beat by checking to see if this is a rebroadcast of the previous status   $ �%% �   C h e c k   f o r   h e a r t   b e a t   b y   c h e c k i n g   t o   s e e   i f   t h i s   i s   a   r e b r o a d c a s t   o f   t h e   p r e v i o u s   s t a t u s" &'& l  l l��()��  ( = 7 Previous Sensor readings exist, but are not duplicates   ) �** n   P r e v i o u s   S e n s o r   r e a d i n g s   e x i s t ,   b u t   a r e   n o t   d u p l i c a t e s' +,+ l  l l��-.��  - $ eg. New status change, log it.   . �// < e g .   N e w   s t a t u s   c h a n g e ,   l o g   i t ., 010 n  l y232 I   m y��4���� 0 set_variable  4 565 b   m p787 o   m n���� 0 sensor_name  8 m   n o99 �::  _ l a s t _ u p d a t e6 ;��; n  p u<=< I   q u�������� 0 timestamp_str  ��  ��  =  f   p q��  ��  3  f   l m1 >?> n  z �@A@ I   { ���B���� 0 set_variable  B CDC b   { ~EFE o   { |���� 0 sensor_name  F m   | }GG �HH  _ i s _ o p e nD I��I o   ~ ���� 0 action_bool  ��  ��  A  f   z {? JKJ n  � �LML I   � ���N���� 0 set_variable  N OPO b   � �QRQ o   � ����� 0 sensor_name  R m   � �SS �TT  _ l a s t _ s t a t u sP U��U o   � ����� 0 action_name  ��  ��  M  f   � �K VWV Z  � �XY����X F   � �Z[Z o   � ����� @0 update_heartbeat_after_actions Update_Heartbeat_After_Actions[ =  � �\]\ o   � ����� 0 monitor  ] m   � ���
�� boovtrueY n  � �^_^ I   � ���`���� 0 set_variable  ` aba l  � �c����c b   � �ded o   � ����� 0 sensor_name  e m   � �ff �gg  _ l a s t _ h e a r t b e a t��  ��  b h��h n  � �iji I   � ��������� 0 timestamp_str  ��  ��  j  f   � ���  ��  _  f   � ���  ��  W k��k l  � ���������  ��  ��  ��  ��   k   � �ll mnm l  � ���op��  o ( " Previous readings, are duplicates   p �qq D   P r e v i o u s   r e a d i n g s ,   a r e   d u p l i c a t e sn rsr n  � �tut I   � ���v���� 0 log_security  v w��w b   � �xyx m   � �zz �{{ 2 H e a r t   B e a t   d e t e c t e d   f r o m  y o   � ����� 0 sensor_name  ��  ��  u  f   � �s |}| n  � �~~ I   � �������� 0 set_variable  � ��� l  � ����~� b   � ���� o   � ��}�} 0 sensor_name  � m   � ��� ���  _ l a s t _ h e a r t b e a t�  �~  � ��|� n  � ���� I   � ��{�z�y�{ 0 timestamp_str  �z  �y  �  f   � ��|  ��    f   � �} ��x� r   � ���� m   � ��w
�w boovtrue� o      �v�v 0 	heartbeat  �x   ��� l  � ��u�t�s�u  �t  �s  � ��� Z   �R���r�q� =  � ���� o   � ��p�p 0 	heartbeat  � m   � ��o
�o boovfals� k   �N�� ��� l  � ��n���n  � 7 1 Log/chime/beep/growl the non-heartbeat activity.   � ��� b   L o g / c h i m e / b e e p / g r o w l   t h e   n o n - h e a r t b e a t   a c t i v i t y .� ��� n  � ���� I   � ��m��l�m 0 log_security  � ��k� b   � ���� b   � ���� b   � ���� b   � ���� I   � ��j�i�h�j 0 timestamp_str  �i  �h  � m   � ��� ���   � o   � ��g�g 0 sensor_name  � m   � ��� ���   � o   � ��f�f 0 action_name  �k  �l  �  f   � �� ��� Z  ����e�d� o   � ��c�c 0 action_bool  � I  � ��b�a�`
�b .sysobeepnull��� ��� long�a  �`  �e  �d  � ��� n 
��� I  
�_��^�_ 0 do_chime  � ��� o  �]�] 0 chime_enabled  � ��� o  �\�\ 0 action_bool  � ��[� o  �Z�Z 0 chime_device  �[  �^  �  f  � ��� l �Y�X�W�Y  �X  �W  � ��� Z ���V�U� > ��� o  �T�T 0 
sound_file  � m  �S
�S boovfals� I  �R��Q�R 0 play_sound_file  � ��� o  �P�P 0 
sound_file  � ��O� o  �N�N 0 action_bool  �O  �Q  �V  �U  � ��� l �M�L�K�M  �L  �K  � ��� l �J���J  �   Send Growl Notification   � ��� 0   S e n d   G r o w l   N o t i f i c a t i o n� ��� Z 8���I�H� o  "�G�G 0 	use_growl 	Use_Growl� Z %4���F�E� o  %&�D�D 0 growl_enabled  � n )0��� I  *0�C��B�C 0 send_to_growl  � ��� o  *+�A�A 0 sensor_name  � ��@� o  +,�?�? 0 action_name  �@  �B  �  f  )*�F  �E  �I  �H  � ��� l 99�>�=�<�>  �=  �<  � ��� Z 9L���;�:� o  9>�9�9 0 speak_alarms Speak_Alarms� I  AH�8��7�8  0 say_alarm_text Say_Alarm_Text� ��� o  BC�6�6 0 sensor_name  � ��5� o  CD�4�4 0 action_name  �5  �7  �;  �:  � ��3� l MM�2�1�0�2  �1  �0  �3  �r  �q  � ��/� n SX��� I  TX�.�-�,�. 0 check_heartbeats  �-  �,  �  f  ST�/  Y ��+� l     �*�)�(�*  �)  �(  �+  V$                                                                                  INDO   alis    �  Local_Drive                ��
VH+   ��IndigoServer.app                                                ���GM�        ����  	                Indigo 2    ��P�      �G��     �� ��       WLocal_Drive:Library:Application Support:Perceptive Automation:Indigo 2:IndigoServer.app   "  I n d i g o S e r v e r . a p p    L o c a l _ D r i v e  KLibrary/Application Support/Perceptive Automation/Indigo 2/IndigoServer.app   / ��  T ��� l     �'�&�%�'  �&  �%  � ��� l     �$�#�"�$  �#  �"  � ��� l     �!���!  � I C 2006.09.27 Removed deprecated "continue..." line. (Matt Bendiksen)   � ��� �   2 0 0 6 . 0 9 . 2 7   R e m o v e d   d e p r e c a t e d   " c o n t i n u e . . . "   l i n e .   ( M a t t   B e n d i k s e n )� ��� l     � ���   �  �  � ��� l     ����  � 6 0 2008.02.17 Major rewrite. (Benjamin Schollnick)   � ��� `   2 0 0 8 . 0 2 . 1 7   M a j o r   r e w r i t e .   ( B e n j a m i n   S c h o l l n i c k )� ��� l     ����  � + %    http://schollnick.info/wordpress/   � ��� J         h t t p : / / s c h o l l n i c k . i n f o / w o r d p r e s s /� �	 � l     �		�  	      	 �		   	  			 l     �		�  	 < 6 2008.03.30 Enhancements and cleanup. (Matt Bendiksen)   	 �		 l   2 0 0 8 . 0 3 . 3 0   E n h a n c e m e n t s   a n d   c l e a n u p .   ( M a t t   B e n d i k s e n )	 			
		 l     ����  �  �  	
 			 l     �		�  	   v1.0 - General Release   	 �		 .   v 1 . 0   -   G e n e r a l   R e l e a s e	 			 l     ����  �  �  	 			 l     �		�  	 p j v1.2 - Fixed issue with unregistered Alarms not chiming.  Previously they would only show up in log file.   	 �		 �   v 1 . 2   -   F i x e d   i s s u e   w i t h   u n r e g i s t e r e d   A l a r m s   n o t   c h i m i n g .     P r e v i o u s l y   t h e y   w o u l d   o n l y   s h o w   u p   i n   l o g   f i l e .	 			 l     �		�  	 - '         - Created function for chiming   	 �		 N                   -   C r e a t e d   f u n c t i o n   f o r   c h i m i n g	 			 l     �		�  	 f `         - Now any Unregistered Alarms will have "Unregistered Sensor" prefixed to the log entry   	 �	 	  �                   -   N o w   a n y   U n r e g i s t e r e d   A l a r m s   w i l l   h a v e   " U n r e g i s t e r e d   S e n s o r "   p r e f i x e d   t o   t h e   l o g   e n t r y	 	!	"	! l     �	#	$�  	# K E         - Alarm entries will have "alarm" prefixed to the log entry.   	$ �	%	% �                   -   A l a r m   e n t r i e s   w i l l   h a v e   " a l a r m "   p r e f i x e d   t o   t h e   l o g   e n t r y .	" 	&	'	& l     ����  �  �  	' 	(	)	( l     �	*	+�  	* A ; v1.3 - Added HeartBeat detection, and heartbeat recording.   	+ �	,	, v   v 1 . 3   -   A d d e d   H e a r t B e a t   d e t e c t i o n ,   a n d   h e a r t b e a t   r e c o r d i n g .	) 	-	.	- l     �
	/	0�
  	/ { u         - Previously only decoding the Min alarm settings.  Now the max alarms are being mapped to the min settings.   	0 �	1	1 �                   -   P r e v i o u s l y   o n l y   d e c o d i n g   t h e   M i n   a l a r m   s e t t i n g s .     N o w   t h e   m a x   a l a r m s   a r e   b e i n g   m a p p e d   t o   t h e   m i n   s e t t i n g s .	. 	2	3	2 l     �		4	5�	  	4 _ Y            If anyone needs to distinguish between a min or max alarm please let me know.   	5 �	6	6 �                         I f   a n y o n e   n e e d s   t o   d i s t i n g u i s h   b e t w e e n   a   m i n   o r   m a x   a l a r m   p l e a s e   l e t   m e   k n o w .	3 	7	8	7 l     ����  �  �  	8 	9	:	9 l     �	;	<�  	; X R v1.4 - Started to merge changes with suggestions from Matt Bendiksen. (3/30/2008)   	< �	=	= �   v 1 . 4   -   S t a r t e d   t o   m e r g e   c h a n g e s   w i t h   s u g g e s t i o n s   f r o m   M a t t   B e n d i k s e n .   ( 3 / 3 0 / 2 0 0 8 )	: 	>	?	> l     ����  �  �  	? 	@	A	@ l     �	B	C�  	B > 8 v1.5 - Added Heartbeat inactivity detection	(5/28/2008)   	C �	D	D p   v 1 . 5   -   A d d e d   H e a r t b e a t   i n a c t i v i t y   d e t e c t i o n 	 ( 5 / 2 8 / 2 0 0 8 )	A 	E	F	E l     � 	G	H�   	G : 4		- Growl Support for Heartbeat inactivity detection   	H �	I	I h 	 	 -   G r o w l   S u p p o r t   f o r   H e a r t b e a t   i n a c t i v i t y   d e t e c t i o n	F 	J	K	J l     ��	L	M��  	L ' !		- Email on Heartbeat inactivity   	M �	N	N B 	 	 -   E m a i l   o n   H e a r t b e a t   i n a c t i v i t y	K 	O	P	O l     ��	Q	R��  	Q v p		- Added optional switch (Update_Heartbeat_After_Actions) to allow heartbeat to be updated after every action.    	R �	S	S � 	 	 -   A d d e d   o p t i o n a l   s w i t c h   ( U p d a t e _ H e a r t b e a t _ A f t e r _ A c t i o n s )   t o   a l l o w   h e a r t b e a t   t o   b e   u p d a t e d   a f t e r   e v e r y   a c t i o n .  	P 	T	U	T l     ��	V	W��  	V ( "		- Added the following variables:   	W �	X	X D 	 	 -   A d d e d   t h e   f o l l o w i n g   v a r i a b l e s :	U 	Y	Z	Y l     ��	[	\��  	[ ( "			- Inactivity_Heartbeat_Watchdog   	\ �	]	] D 	 	 	 -   I n a c t i v i t y _ H e a r t b e a t _ W a t c h d o g	Z 	^	_	^ l     ��	`	a��  	` ) #			- Update_Heartbeat_After_Actions   	a �	b	b F 	 	 	 -   U p d a t e _ H e a r t b e a t _ A f t e r _ A c t i o n s	_ 	c	d	c l     ��	e	f��  	e  			- SE_IBeat_Address   	f �	g	g * 	 	 	 -   S E _ I B e a t _ A d d r e s s	d 	h	i	h l     ��	j	k��  	j + %			- Send_Email_on_Inactive_Heartbeat   	k �	l	l J 	 	 	 -   S e n d _ E m a i l _ o n _ I n a c t i v e _ H e a r t b e a t	i 	m	n	m l     ��������  ��  ��  	n 	o	p	o l     ��	q	r��  	q "  v1.6 - Added Speech Support   	r �	s	s 8   v 1 . 6   -   A d d e d   S p e e c h   S u p p o r t	p 	t	u	t l     ��	v	w��  	v M G			- Added Speech support for Open Sensor, and Closed Sensor detection.   	w �	x	x � 	 	 	 -   A d d e d   S p e e c h   s u p p o r t   f o r   O p e n   S e n s o r ,   a n d   C l o s e d   S e n s o r   d e t e c t i o n .	u 	y	z	y l     ��	{	|��  	{ 5 /			- Added Ignore Flag (Alarm Matrix #6 Option)   	| �	}	} ^ 	 	 	 -   A d d e d   I g n o r e   F l a g   ( A l a r m   M a t r i x   # 6   O p t i o n )	z 	~		~ l     ��������  ��  ��  	 	�	�	� l     ��	�	���  	� #  v1.65 - Added Speech Support   	� �	�	� :   v 1 . 6 5   -   A d d e d   S p e e c h   S u p p o r t	� 	�	�	� l     ��	�	���  	� M G			- Added Speech support for Open Sensor, and Closed Sensor detection.   	� �	�	� � 	 	 	 -   A d d e d   S p e e c h   s u p p o r t   f o r   O p e n   S e n s o r ,   a n d   C l o s e d   S e n s o r   d e t e c t i o n .	� 	�	�	� l     ��	�	���  	� 5 /			- Added Ignore Flag (Alarm Matrix #6 Option)   	� �	�	� ^ 	 	 	 -   A d d e d   I g n o r e   F l a g   ( A l a r m   M a t r i x   # 6   O p t i o n )	� 	�	�	� l     ��������  ��  ��  	� 	���	� l     ��	�	���  	� V P v2.00 - Working at optimizing the code, and adding better comments for newbies.   	� �	�	� �   v 2 . 0 0   -   W o r k i n g   a t   o p t i m i z i n g   t h e   c o d e ,   a n d   a d d i n g   b e t t e r   c o m m e n t s   f o r   n e w b i e s .��       ��	�	���	�h��~����	�	���	����	�	�	�	�	�	�	�	�	�	�	�	�	�	�	���  	� ������������������������������������������������������������ 0 alarm_matrix Alarm_Matrix�� 0 speak_alarms Speak_Alarms�� (0 sensor_speech_text Sensor_Speech_Text�� 0 speech_voice Speech_Voice�� (0 chime_only_on_open Chime_Only_On_Open�� "0 chime_min_delay Chime_Min_delay�� >0 inactivity_heartbeat_watchdog Inactivity_Heartbeat_Watchdog�� 0 	use_growl 	Use_Growl�� 40 growl_notifications_list Growl_Notifications_List�� :0 growl_enabled_notifications Growl_Enabled_Notifications�� D0  send_email_on_inactive_heartbeat  Send_Email_on_Inactive_Heartbeat�� $0 se_ibeat_address SE_IBeat_Address�� @0 update_heartbeat_after_actions Update_Heartbeat_After_Actions�� (0 playsound_location PlaySound_Location�� 0 send_to_growl  �� 0 replacetext replaceText��  0 say_alarm_text Say_Alarm_Text�� 0 timestamp_str  �� 0 time_elapsed  �� 0 	send_mail  �� 0 read_indigo_variable  �� 0 set_variable  �� 0 log_security  �� 0 check_heartbeats  �� 0 decode_security  �� 0 sound_chime  �� 0 do_chime  �� 0 play_sound_file  
�� .INDOprScnull���   0 EnXS	� ��	��� 	�  	�	�	�	�	�	�	�	�	� ��	��� 	�  �� ~���� ��������� �
�� boovtrue
�� boovfals
�� boovfals
�� boovfals
�� boovfals	� ��	��� 	�  �� ����� ��������� q
�� boovtrue
�� boovfals
�� boovfals
�� boovfals
�� boovfals	� ��	��� 	�  �� ����� ��������� �
�� boovtrue
�� boovfals
�� boovfals
�� boovfals
�� boovfals	� ��	��� 	�  �� ����� ��������� �
�� boovtrue
�� boovtrue
�� boovfals
�� boovfals
�� boovtrue	� ��	��� 	�  �� ����� ��������� -
�� boovtrue
�� boovtrue
�� boovfals
�� boovfals
�� boovtrue	� ��	��� 	�  �� ����� ��������� �
�� boovtrue
�� boovfals
�� boovfals
�� boovfals
�� boovtrue	� ��	��� 	�  �������������� �
�� boovtrue
�� boovtrue
�� boovfals
�� boovfals
�� boovtrue	� ��	��� 	�  ������'�������� �
�� boovtrue
�� boovtrue
�� boovfals
�� boovfals
�� boovtrue
�� boovfals	� ��	��� 	�  UY\
�� boovtrue�� 
�� boovtrue	� ��	��� 	�  ���	� ��	��� 	�  ��
�� boovfals	� ��	��� 	�  ��
�� boovtrue	� ������	�	����� 0 send_to_growl  �� ��	��� 	�  ������ 0 sensor_name  �� 0 action_name  ��  	� ��~�}�|� 0 sensor_name  �~ 0 action_name  �} ,0 allnotificationslist allNotificationsList�| 40 enablednotificationslist enabledNotificationsList	� Z�{3�z�y�x<�w�v�u�tL�sUX�r
�{ 
appl
�z 
anot
�y 
dnot
�x 
iapp�w 
�v .registernull��� ��� null
�u 
name
�t 
titl
�s 
desc
�r .notifygrnull��� ��� null�� 9� 5b  E�Ob  	E�O*������� O*���%�%��%�%��� U	� �qy�p�o	�	��n�q 0 replacetext replaceText�p �m	��m 	�  �l�k�j�l 0 find  �k 0 replace  �j 0 subject  �o  	� �i�h�g�f�i 0 find  �h 0 replace  �g 0 subject  �f 0 prevtids prevTIDs	� �e�d�c�
�e 
ascr
�d 
txdl
�c 
citm�n '��,E�O���,FO��-E�O���,FO�%E�O���,FO�	� �b��a�`	�	��_�b  0 say_alarm_text Say_Alarm_Text�a �^	��^ 	�  �]�\�] 0 sensor_name  �\ 
0 action  �`  	� �[�Z�Y�[ 0 sensor_name  �Z 
0 action  �Y 0 text_to_speak  	� 
��X��W���	�V�U
�X 
cobj�W 0 replacetext replaceText
�V 
VOIC
�U .sysottosnull���     TEXT�_ l��  b  �k/E�O*⠢m+ E�Y hO��  b  �l/E�O*堢m+ E�Y hO��  b  �m/E�O*砢m+ E�Y hO��b  l 		� �T!�S�R	�	��Q�T 0 timestamp_str  �S  �R  	� �P�O�N�M�P 0 my_date  �O 0 y  �N 0 m  �M 0 d  	� �L�K�J�I�HH�G�F^npr�E
�L .misccurdldt    ��� null
�K 
year
�J 
long
�I 
mnth�H 

�G 
ctxt
�F 
day 
�E 
tstr�Q U*j  E�O��,�&E�O��,�&E�O�� �%�&E�Y hO��,�&E�O�� �%�&E�Y hO��%�%�%�%�%��,%	� �D{�C�B	�	��A�D 0 time_elapsed  �C �@	��@ 	�  �?�? 0 td  �B  	� �>�> 0 td  	� �=�<
�= .misccurdldt    ��� null
�< 
ldt �A *j  *�/	� �;��:�9	�	��8�; 0 	send_mail  �: �7	��7 	�  �6�5�4�6 0 rec  �5 0 sub  �4 0 msg  �9  	� �3�2�1�0�3 0 rec  �2 0 sub  �1 0 msg  �0 0 x  	� ��/�.�-�,�+�*�)�(�'�&�%
�/ 
kocl
�. 
bcke
�- .corecrel****      � null
�, 
trcp
�+ 
insh
�* 
prdt
�) 
radd�( 
�' 
subj
�& 
ctnt
�% .emsgsendbool        bcke�8 8� 4*��l E�O� *���*�-6��l� O�*�,FO�*�,FUO�j U	� �$��#�"	�	��!�$ 0 read_indigo_variable  �# � 	��  	�  ��� 0 variable_name  � 0 default_val  �"  	� ��� 0 variable_name  � 0 default_val  	� 	���������
� 
Vrbl
� .coredoexbool        obj 
� 
kocl
� 
prdt
� 
pnam
� 
Valu
� 
TEXT� 
� .corecrel****      � null�! **�/j  *������&�� Y hO*�/�,E	� ����	�	��� 0 set_variable  � �	�� 	�  ��� 0 variable_name  � 0 variable_value  �  	� ��
� 0 variable_name  �
 0 variable_value  	� 	�	��������
�	 
Vrbl
� .coredoexbool        obj 
� 
kocl
� 
prdt
� 
pnam
� 
Valu
� 
TEXT� 
� .corecrel****      � null� **�/j  *������&�� Y ��&*�/�,F	� � &����	�	����  0 log_security  �� ��	��� 	�  ���� 0 log_text  ��  	� ���� 0 log_text  	� ����.��
�� 
TEXT
�� 
LgTy
�� .INDOLog null���    utf8�� 
��&��l 	� ��5����	�	����� 0 check_heartbeats  ��  ��  	� �������������� 0 msg  �� 0 x  �� 0 variable_name  �� 0 v  �� 0 dt  �� 0 log_msg  	� ;��������O����u��y�����������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
TEXT�� 0 read_indigo_variable  �� 0 time_elapsed  �� <�� 0 log_security  �� 0 send_to_growl  
�� 
ret �� 0 	send_mail  �� 0 timestamp_str  �� 0 set_variable  �� ��E�O wb   [��l kh ��l/�&�%E�O)�jl+ E�O)�k+ E�O�b   8��%��"%�%E�O)�k+ Ob   )��l/�&�l+ Y hO��%�%E�Y h[OY��Ob  
 >��  3 -b  [��l kh )a �%k+ O)�a �m+ [OY��Y hY hO)a )j+ l+ 	� �������	�	����� 0 decode_security  �� ��	��� 	�  ������ 0 	eventtype 	eventType�� 0 	device_id 	device_ID��  	� ���������������������������� 0 	eventtype 	eventType�� 0 	device_id 	device_ID�� 0 	alarmdata  �� 0 ignoresensor IgnoreSensor�� 0 sensor_name  �� 0 action_name  �� 0 action_bool  �� 0 growling  �� 0 chiming  �� 0 chime_device  �� 0 
sound_file  �� 0 heartbeat_monitor  �� 0 alarm_detected  	� ������+����������g����z�����������������1
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 read_indigo_variable  �� 
�� EnXSxSs1
�� EnXSxSs2
�� 
bool
�� EnXSxSs3
�� EnXSxSs4�� �� �� �� �� 	�� 0 log_security  ��K �b   [��l kh ���k/  �)�el+ E�O�f  ���/E�Y hO�e  fY hO��l/E�O�� 
 �� �& �E�OfE�Y �� 
 �� �& �E�OeE�Y hO��m/E�O���/E�O���/E�O���/E�O��a /E�Oe��������a vY h[OY�YOa E�Oa E�OfE�OfE�OfE�Oa E�OfE�OfE�O)a k+ O)a k+ O)a �%a %k+ OeE�O�� 
 �� �& a E�OfE�Y �� 
 �� �& a E�OeE�Y hOf��������a v	� ��O����	�	����� 0 sound_chime  �� ��	��� 	�  ������ 0 
soundchime 
SoundChime�� 0 chime_device  ��  	� �������� 0 
soundchime 
SoundChime�� 0 chime_device  �� 0 errnum errNum	� `������n����	���|������ 0 log_security  
�� .INDOOff null���    utf8
�� 
Dura
�� .INDOOn  null���    utf8��  	� ������
�� 
errn�� 0 errnum errNum��  ���@�� Q�e  F)�k+ O �j O���l W )X  ��  )�k+ O)�%�%k+ O)�k+ Y hY )�k+ 	� �������	�	����� 0 do_chime  �� ��	��� 	�  �������� 0 chime_enabled  �� 0 action_bool  �� 0 chime_device  ��  	� �������������� 0 chime_enabled  �� 0 action_bool  �� 0 chime_device  �� 0 last_chimed_ms  �� 0 soundchimestr soundChimeStr�� 0 
soundchime 
SoundChime	� ��������������������	��
�� 
bool�� 0 read_indigo_variable  
�� .misccurdldt    ��� null
�� 
time�� <
�� 
TEXT�� 0 set_variable  �� 0 timestamp_str  �� 0 sound_chime  �� �� �b  f 
 ��& �)�jl+ E�O�*j �, kE�Y hO*j �,�b  �  P)�*j �,�&l+ O)�)j+ 
l+ O)�el+ E�O�� 
 �� �&
 �� �& eE�Y hO)��l+ Y hY hY h	� ��!����	�	����� 0 play_sound_file  �� ��	��� 	�  ������ 0 soundfile_to_play  �� 0 action_bool  ��  	� ������ 0 soundfile_to_play  �� 0 action_bool  	� ����=GI���� 0 log_security  
�� 
bool
�� .sysoexecTEXT���     TEXT�� /)�k+  O�f 	 ��& )�k+  O�b  %�%�%j Y h	� ��[����	�	���
�� .INDOprScnull���   0 EnXS�� 0 	eventtype 	eventType�� �����
�� 
ScCd�� 0 devid devID�  	� �~�}�|�{�z�y�x�w�v�u�t�s�r�~ 0 	eventtype 	eventType�} 0 devid devID�| 0 found_in_matrix  �{ 0 decoded_data  �z 0 sensor_name  �y 0 action_name  �x 0 action_bool  �w 0 growl_enabled  �v 0 chime_enabled  �u 0 chime_device  �t 0 
sound_file  �s 0 monitor  �r 0 	heartbeat  	� �q�p�o�n�m�l�k�j�i9�h�gGS�ffz�e����d�c�b�a�`�_�q 0 decode_security  
�p 
cobj�o �n �m �l �k �j 	�i 0 read_indigo_variable  �h 0 timestamp_str  �g 0 set_variable  
�f 
bool�e 0 log_security  
�d .sysobeepnull��� ��� long�c 0 do_chime  �b 0 play_sound_file  �a 0 send_to_growl  �`  0 say_alarm_text Say_Alarm_Text�_ 0 check_heartbeats  ��YfE�O)��l+  E�O�f  hY hO��k/E�O��l/E�O��m/E�O���/E�O���/E�O���/E�O���/E�O���/E�O���/E�OfE�O)��%�l+ 
� N)��%)j+ l+ O)��%�l+ O)��%�l+ Ob  	 	�e a & )�a %)j+ l+ Y hOPY  )a �%k+ O)�a %)j+ l+ OeE�O�f  v)*j+ a %�%a %�%k+ O� 
*j Y hO)���m+ O�f *��l+ Y hOb   � )��l+ Y hY hOb   *��l+ Y hOPY hO)j+ ascr  ��ޭ