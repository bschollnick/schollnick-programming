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
0 action  ��  ��  � k     g�� ��� Z     [������ =     ��� o     ���� 
0 action  � m    �� ���  O p e n e d� k    �� ��� r    ��� n   ��� 4    ���
�� 
cobj� m    ���� � o    ���� (0 sensor_speech_text Sensor_Speech_Text� o      ���� 0 text_to_speak  � ���� r    ��� I    ������� 0 replacetext replaceText� ��� m    �� ���  % s� ��� o    ���� 0 sensor_name  � ���� o    ���� 0 text_to_speak  ��  ��  � o      ���� 0 text_to_speak  ��  ��  � Z    [������ =    !��� o    ���� 
0 action  � m     �� ���  C l o s e d� k   $ 9�� ��� r   $ .��� n  $ ,��� 4   ) ,���
�� 
cobj� m   * +���� � o   $ )���� (0 sensor_speech_text Sensor_Speech_Text� o      ���� 0 text_to_speak  � ���� r   / 9��� I   / 7������� 0 replacetext replaceText� ��� m   0 1�� ���  % s� ��� o   1 2���� 0 sensor_name  � ���� o   2 3���� 0 text_to_speak  ��  ��  � o      ���� 0 text_to_speak  ��  ��  � Z   < [������� =   < ?��� o   < =���� 
0 action  � m   = >�� ���  T i m e O u t� k   B W�� ��� r   B L��� n  B J��� 4   G J�� 
�� 
cobj  m   H I���� � o   B G���� (0 sensor_speech_text Sensor_Speech_Text� o      ���� 0 text_to_speak  � �� r   M W I   M U������ 0 replacetext replaceText  m   N O �  % s 	
	 o   O P���� 0 sensor_name  
 �� o   P Q���� 0 text_to_speak  ��  ��   o      ���� 0 text_to_speak  ��  ��  ��  � �� I  \ g��
�� .sysottosnull���     TEXT o   \ ]���� 0 text_to_speak   ����
�� 
VOIC o   ^ c���� 0 speech_voice Speech_Voice��  ��  �  l     ����   b \--------------------------------------------------------------------------------------------    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     ����     Time Support    �    T i m e   S u p p o r t  l     ��������  ��  ��    i   � � I      �������� 0 timestamp_str  ��  ��   k     T   !"! l     ��#$��  # 4 . Create the Date format as MM/DD/YYYY HH:MM:SS   $ �%% \   C r e a t e   t h e   D a t e   f o r m a t   a s   M M / D D / Y Y Y Y   H H : M M : S S" &'& r     ()( I    ������
�� .misccurdldt    ��� null��  ��  ) o      ���� 0 my_date  ' *+* r    ,-, c    ./. n    010 1   	 ��
�� 
year1 o    	���� 0 my_date  / m    ��
�� 
long- o      ���� 0 y  + 232 r    454 c    676 n    898 m    ��
�� 
mnth9 o    ���� 0 my_date  7 m    �
� 
long5 o      �~�~ 0 m  3 :;: Z    )<=�}�|< A   >?> o    �{�{ 0 m  ? m    �z�z 
= r    %@A@ c    #BCB b    !DED m    FF �GG  0E o     �y�y 0 m  C m   ! "�x
�x 
ctxtA o      �w�w 0 m  �}  �|  ; HIH r   * 1JKJ c   * /LML n   * -NON 1   + -�v
�v 
day O o   * +�u�u 0 my_date  M m   - .�t
�t 
longK o      �s�s 0 d  I PQP Z   2 CRS�r�qR A  2 5TUT o   2 3�p�p 0 d  U m   3 4�o�o 
S r   8 ?VWV c   8 =XYX b   8 ;Z[Z m   8 9\\ �]]  0[ o   9 :�n�n 0 d  Y m   ; <�m
�m 
ctxtW o      �l�l 0 d  �r  �q  Q ^�k^ L   D T__ b   D S`a` b   D Obcb b   D Mded b   D Kfgf b   D Ihih b   D Gjkj o   D E�j�j 0 m  k m   E Fll �mm  /i o   G H�i�i 0 d  g m   I Jnn �oo  /e o   K L�h�h 0 y  c m   M Npp �qq   a n   O Rrsr 1   P R�g
�g 
tstrs o   O P�f�f 0 my_date  �k   tut l     �e�d�c�e  �d  �c  u vwv i   � �xyx I      �bz�a�b 0 time_elapsed  z {�`{ o      �_�_ 0 td  �`  �a  y k     || }~} l     �^��^   > 8 Return the time lapsed from the Current Date in seconds   � ��� p   R e t u r n   t h e   t i m e   l a p s e d   f r o m   t h e   C u r r e n t   D a t e   i n   s e c o n d s~ ��]� L     �� l    
��\�[� \     
��� l    ��Z�Y� I    �X�W�V
�X .misccurdldt    ��� null�W  �V  �Z  �Y  � l   	��U�T� 4    	�S�
�S 
ldt � l   ��R�Q� o    �P�P 0 td  �R  �Q  �U  �T  �\  �[  �]  w ��� l     �O�N�M�O  �N  �M  � ��� l     �L���L  � b \--------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� i   � ���� I      �K��J�K 0 	send_mail  � ��� o      �I�I 0 rec  � ��� o      �H�H 0 sub  � ��G� o      �F�F 0 msg  �G  �J  � k     7�� ��� l     �E���E  � H B Send an Email, to the recipent, with Subject, and msg as the body   � ��� �   S e n d   a n   E m a i l ,   t o   t h e   r e c i p e n t ,   w i t h   S u b j e c t ,   a n d   m s g   a s   t h e   b o d y� ��D� O     7��� k    6�� ��� r    ��� I   �C�B�
�C .corecrel****      � null�B  � �A��@
�A 
kocl� m    �?
�? 
bcke�@  � o      �>�> 0 x  � ��� O    0��� k    /�� ��� I   #�=�<�
�= .corecrel****      � null�<  � �;��
�; 
kocl� m    �:
�: 
trcp� �9��
�9 
insh� n    ���  ;    � 2   �8
�8 
trcp� �7��6
�7 
prdt� K    �� �5��4
�5 
radd� o    �3�3 0 rec  �4  �6  � ��� r   $ )��� o   $ %�2�2 0 sub  � 1   % (�1
�1 
subj� ��0� r   * /��� o   * +�/�/ 0 msg  � 1   + .�.
�. 
ctnt�0  � o    �-�- 0 x  � ��,� I  1 6�+��*
�+ .emsgsendbool        bcke� o   1 2�)�) 0 x  �*  �,  � m     ���                                                                                  emal   alis    B  Local_Drive                ��
VH+     Mail.app                                                        �ç%L        ����  	                Applications    ��P�      çk�         !Local_Drive:Applications:Mail.app     M a i l . a p p    L o c a l _ D r i v e  Applications/Mail.app   / ��  �D  � ��� l     �(�'�&�(  �'  �&  � ��� w      ��� k      �� ��� i   � ���� I      �%��$�% 0 read_indigo_variable  � ��� o      �#�# 0 variable_name  � ��"� o      �!�! 0 default_val  �"  �$  � k      �� ��� l     � ���   � k e Read variable_name from Indigo's internal variable table.  Create the variable if it does not exist.   � ��� �   R e a d   v a r i a b l e _ n a m e   f r o m   I n d i g o ' s   i n t e r n a l   v a r i a b l e   t a b l e .     C r e a t e   t h e   v a r i a b l e   i f   i t   d o e s   n o t   e x i s t .� ��� Z      ����� I    ���
� .coredoexbool        obj � 4     ��
� 
Vrbl� l   ���� o    �� 0 variable_name  �  �  �  � L    �� e    �� n    ��� 1    �
� 
Valu� l   ���� 4    ��
� 
Vrbl� l   ���� o    �� 0 variable_name  �  �  �  �  �  � k     �� ��� n   ��� I    ���� 0 set_variable  � ��� o    �� 0 variable_name  � ��� o    �� 0 default_val  �  �  �  f    � ��� L     �� o    �
�
 0 default_val  �  �  � ��� l     �	���	  �  �  � ��� i   � ���� I      ���� 0 set_variable  � ��� o      �� 0 variable_name  � ��� o      �� 0 variable_value  �  �  � Z     (� �� I    � ��
�  .coredoexbool        obj  4     ��
�� 
Vrbl l   ���� o    ���� 0 variable_name  ��  ��  ��    r     l   ���� c    	 o    ���� 0 variable_value  	 m    ��
�� 
TEXT��  ��   n      

 1    ��
�� 
Valu l   ���� 4    ��
�� 
Vrbl l   ���� o    ���� 0 variable_name  ��  ��  ��  ��  �   I   (����
�� .corecrel****      � null��   ��
�� 
kocl m    ��
�� 
Vrbl ����
�� 
prdt K    $ ��
�� 
pnam o    ���� 0 variable_name   ����
�� 
Valu l   "���� c    " o     ���� 0 variable_value   m     !��
�� 
TEXT��  ��  ��  ��  �  l     ��������  ��  ��    i   � � I      �� ���� 0 log_security    !��! o      ���� 0 log_text  ��  ��   I    	��"#
�� .INDOLog null���    utf8" c     $%$ o     ���� 0 log_text  % m    ��
�� 
TEXT# ��&��
�� 
LgTy& m    '' �((  S e c u r i t y��   )*) l     ��������  ��  ��  * +,+ i   � �-.- I      �������� 0 check_heartbeats  ��  ��  . k     �// 010 r     232 m     44 �55  3 o      ���� 0 msg  1 676 X    |8��98 k    w:: ;<; r    "=>= b     ?@? l   A����A c    BCB l   D����D n    EFE 4    ��G
�� 
cobjG m    ���� F o    ���� 0 x  ��  ��  C m    ��
�� 
TEXT��  ��  @ m    HH �II  _ l a s t _ u p d a t e> o      ���� 0 variable_name  < JKJ l  # #��������  ��  ��  K LML r   # ,NON n  # *PQP I   $ *��R���� 0 read_indigo_variable  R STS o   $ %���� 0 variable_name  T U��U m   % &����  ��  ��  Q  f   # $O o      ���� 0 v  M VWV r   - 5XYX n  - 3Z[Z I   . 3��\���� 0 time_elapsed  \ ]��] o   . /���� 0 v  ��  ��  [  f   - .Y o      ���� 0 dt  W ^��^ Z   6 w_`����_ ?  6 =aba o   6 7���� 0 dt  b o   7 <���� >0 inactivity_heartbeat_watchdog Inactivity_Heartbeat_Watchdog` k   @ scc ded r   @ Kfgf b   @ Ihih b   @ Gjkj b   @ Clml o   @ A���� 0 variable_name  m m   A Bnn �oo H   m a y   n o t   b e   a c t i v e .     I n a c t i v i t y   f o r  k _   C Fpqp o   C D���� 0 dt  q m   D E���� <i m   G Hrr �ss    m i n u t e s .g o      ���� 0 log_msg  e tut n  L Rvwv I   M R��x���� 0 log_security  x y��y o   M N���� 0 log_msg  ��  ��  w  f   L Mu z{z Z  S k|}����| o   S X���� 0 	use_growl 	Use_Growl} n  [ g~~ I   \ g������� 0 send_to_growl  � ��� c   \ b��� l  \ `������ n   \ `��� 4   ] `���
�� 
cobj� m   ^ _���� � o   \ ]���� 0 x  ��  ��  � m   ` a��
�� 
TEXT� ���� m   b c�� ���  C h e c k   A l a r m��  ��    f   [ \��  ��  { ���� r   l s��� b   l q��� b   l o��� o   l m���� 0 msg  � o   m n���� 0 log_msg  � o   o p��
�� 
ret � o      ���� 0 msg  ��  ��  ��  ��  �� 0 x  9 o    ���� 0 alarm_matrix Alarm_Matrix7 ��� l  } }��������  ��  ��  � ��� Z   } �������� o   } ����� D0  send_email_on_inactive_heartbeat  Send_Email_on_Inactive_Heartbeat� Z   � �������� H   � ��� l  � ������� =   � ���� o   � ����� 0 msg  � m   � ��� ���  ��  ��  � X   � ������ k   � ��� ��� n  � ���� I   � �������� 0 log_security  � ���� b   � ���� m   � ��� ��� B S e n d i n g   H e a r t B e a t   A l e r t   e m a i l   t o  � o   � ����� 0 x  ��  ��  �  f   � �� ���� n  � ���� I   � �������� 0 	send_mail  � ��� o   � ����� 0 x  � ��� m   � ��� ��� V S e c u r i t y   S e n s o r   H e a r t B e a t   I n a c t i v i t y   R e p o r t� ���� o   � ����� 0 msg  ��  ��  �  f   � ���  �� 0 x  � o   � ����� $0 se_ibeat_address SE_IBeat_Address��  ��  ��  ��  � ���� n  � ���� I   � ����~� 0 set_variable  � ��� m   � ��� ��� $ C h e c k e d _ H e a r t b e a t s� ��}� n  � ���� I   � ��|�{�z�| 0 timestamp_str  �{  �z  �  f   � ��}  �~  �  f   � ���  , ��� l     �y�x�w�y  �x  �w  � ��� i   � ���� I      �v�u�t�v  0 unknown_sensor Unknown_sensor�u  �t  � k     {�� ��� l     �s���s  � H B Didn't find it in our Alarm_Matrix; use some reasonable defaults.   � ��� �   D i d n ' t   f i n d   i t   i n   o u r   A l a r m _ M a t r i x ;   u s e   s o m e   r e a s o n a b l e   d e f a u l t s .� ��� r     ��� m     �� ��� & U n r e c o g n i z e d _ S e n s o r� o      �r�r 0 sensor_name  � ��� r    ��� m    �� ���  � o      �q�q 0 action_name  � ��� r    ��� m    	�p
�p boovfals� o      �o�o 0 action_bool  � ��� r    ��� m    �n
�n boovfals� o      �m�m 0 growling  � ��� r    ��� m    �l
�l boovfals� o      �k�k 0 chiming  � ��� r    ��� m    �� ���  � o      �j�j 0 chime_device  � ��� r    ��� m    �i
�i boovfals� o      �h�h 0 
sound_file  � ��� r    ��� m    �g
�g boovfals� o      �f�f 0 heartbeat_monitor  � ��� l     �e�d�c�e  �d  �c  � ��� l     �b���b  � Y Smy log_security("(device ID " & device_ID & ")") --using type "UnRegistered Sensor"   � ��� � m y   l o g _ s e c u r i t y ( " ( d e v i c e   I D   "   &   d e v i c e _ I D   &   " ) " )   - - u s i n g   t y p e   " U n R e g i s t e r e d   S e n s o r "� ��� n    &� � I   ! &�a�`�a 0 log_security   �_ m   ! " � � S e c u r i t y   d e v i c e   i s   n o t   d e f i n e d   i n   ' s e c u r i t y   s a m p l e . s c p t '   A l a r m _ M a t r i x   p r o p e r t y .�_  �`     f     !�  n  ' - I   ( -�^	�]�^ 0 log_security  	 
�\
 m   ( ) � � P l e a s e   a d d   a   n e w   l i n e   t o   t h e   A l a r m _ M a t r i x   p r o p e r t y   a t   t h e   t o p   o f   t h a t   f i l e�\  �]    f   ' (  n  . 8 I   / 8�[�Z�[ 0 log_security   �Y b   / 4 b   / 2 m   / 0 � , w i t h   t h e   D e v i c e   I D   o f   o   0 1�X�X 0 	device_id 	device_ID m   2 3 �  .�Y  �Z    f   . /  r   9 < m   9 :�W
�W boovtrue o      �V�V 0 alarm_detected     l  = =�U�T�S�U  �T  �S    !"! Z   = n#$%�R# G   = H&'& =  = @()( o   = >�Q�Q 0 	eventtype 	eventType) m   > ?�P
�P EnXSxSs1' =  C F*+* o   C D�O�O 0 	eventtype 	eventType+ m   D E�N
�N EnXSxSs2$ k   K R,, -.- r   K N/0/ m   K L11 �22  C l o s e d0 o      �M�M 0 action_name  . 3�L3 r   O R454 m   O P�K
�K boovfals5 o      �J�J 0 action_bool  �L  % 676 G   U `898 =  U X:;: o   U V�I�I 0 	eventtype 	eventType; m   V W�H
�H EnXSxSs39 =  [ ^<=< o   [ \�G�G 0 	eventtype 	eventType= m   \ ]�F
�F EnXSxSs47 >�E> k   c j?? @A@ r   c fBCB m   c dDD �EE  O p e n e dC o      �D�D 0 action_name  A F�CF r   g jGHG m   g h�B
�B boovtrueH o      �A�A 0 action_bool  �C  �E  �R  " I�@I L   o {JJ J   o zKK LML m   o p�?
�? boovfalsM NON o   p q�>�> 0 sensor_name  O PQP o   q r�=�= 0 action_name  Q RSR o   r s�<�< 0 action_bool  S TUT o   s t�;�; 0 growling  U VWV o   t u�:�: 0 chiming  W XYX o   u v�9�9 0 chime_device  Y Z[Z o   v w�8�8 0 
sound_file  [ \�7\ o   w x�6�6 0 heartbeat_monitor  �7  �@  � ]^] l     �5�4�3�5  �4  �3  ^ _`_ i   � �aba I      �2c�1�2 0 decode_security  c ded o      �0�0 0 	eventtype 	eventTypee f�/f o      �.�. 0 	device_id 	device_ID�/  �1  b k     �gg hih l     �-jk�-  j X R Will take the eventType, and device_ID and decode it and return the decoded data.   k �ll �   W i l l   t a k e   t h e   e v e n t T y p e ,   a n d   d e v i c e _ I D   a n d   d e c o d e   i t   a n d   r e t u r n   t h e   d e c o d e d   d a t a .i mnm l     �,op�,  o D > found_in_matrix 	- boolean 	- true = found, false = not found   p �qq |   f o u n d _ i n _ m a t r i x   	 -   b o o l e a n   	 -   t r u e   =   f o u n d ,   f a l s e   =   n o t   f o u n dn rsr l     �+tu�+  t B < sensor_name     	- string  		- defined name in alarm_matrix   u �vv x   s e n s o r _ n a m e           	 -   s t r i n g     	 	 -   d e f i n e d   n a m e   i n   a l a r m _ m a t r i xs wxw l     �*yz�*  y 6 0 action_name	  	- string  		- "Open" or "Closed"   z �{{ `   a c t i o n _ n a m e 	     	 -   s t r i n g     	 	 -   " O p e n "   o r   " C l o s e d "x |}| l     �)~�)  ~ B < action_bool     		- string  		- true = open, false = closed    ��� x   a c t i o n _ b o o l           	 	 -   s t r i n g     	 	 -   t r u e   =   o p e n ,   f a l s e   =   c l o s e d} ��� l     �(���(  � b \ growling        		- boolean 	- true = growl message enabled, false = growl message disabled   � ��� �   g r o w l i n g                 	 	 -   b o o l e a n   	 -   t r u e   =   g r o w l   m e s s a g e   e n a b l e d ,   f a l s e   =   g r o w l   m e s s a g e   d i s a b l e d� ��� l     �'���'  � R L chiming         		- boolean 	- true = chime enabled, false = chime disabled   � ��� �   c h i m i n g                   	 	 -   b o o l e a n   	 -   t r u e   =   c h i m e   e n a b l e d ,   f a l s e   =   c h i m e   d i s a b l e d� ��� l     �&���&  � X R chime_device    		- string  		- device id for Chime device as set in alarm_matrix   � ��� �   c h i m e _ d e v i c e         	 	 -   s t r i n g     	 	 -   d e v i c e   i d   f o r   C h i m e   d e v i c e   a s   s e t   i n   a l a r m _ m a t r i x� ��� l     �%���%  � "  Ignore_Device 		- Boolean -   � ��� 8   I g n o r e _ D e v i c e   	 	 -   B o o l e a n   -� ��� l     �$���$  � &   Sound File		- Boolean / String.   � ��� @   S o u n d   F i l e 	 	 -   B o o l e a n   /   S t r i n g .� ��� l     �#���#  � #  Heartbeat_monitor 	- Boolean   � ��� :   H e a r t b e a t _ m o n i t o r   	 -   B o o l e a n� ��� l     �"�!� �"  �!  �   � ��� l     ����  �   Sensor Recognized   � ��� $   S e n s o r   R e c o g n i z e d� ��� X     ����� k    ��� ��� Z    ������ =   ��� o    �� 0 	device_id 	device_ID� n   ��� 4    ��
� 
cobj� m    �� � o    �� 0 	alarmdata  � k    ��� ��� l   ����  �    The Device has been found   � ��� 4   T h e   D e v i c e   h a s   b e e n   f o u n d� ��� l   ����  �  �  � ��� r    &��� n   $��� I    $���� 0 read_indigo_variable  � ��� m    �� ��� . I g n o r e _ S e c u r i t y _ S e n s o r s� ��� m     �
� boovtrue�  �  �  f    � o      �� 0 ignoresensor IgnoreSensor� ��� Z   ' :����� =  ' *��� o   ' (�� 0 ignoresensor IgnoreSensor� m   ( )�
� boovfals� r   - 3��� n  - 1��� 4   . 1��
� 
cobj� m   / 0�
�
 � o   - .�	�	 0 	alarmdata  � o      �� 0 ignoresensor IgnoreSensor�  � k   6 :�� ��� L   6 8�� m   6 7�
� boovfals� ��� l  9 9����  � 6 0if item 6 in alarmdata is true then return false   � ��� ` i f   i t e m   6   i n   a l a r m d a t a   i s   t r u e   t h e n   r e t u r n   f a l s e� ��� l  9 9����  � , &  The device is flagged to be ignored.   � ��� L     T h e   d e v i c e   i s   f l a g g e d   t o   b e   i g n o r e d .�  � ��� l  ; ;����  �  �  � ��� r   ; A��� n  ; ?��� 4   < ?� �
�  
cobj� m   = >���� � o   ; <���� 0 	alarmdata  � o      ���� 0 sensor_name  � ��� Z   B s������ G   B M��� =  B E��� o   B C���� 0 	eventtype 	eventType� m   C D��
�� EnXSxSs1� =  H K��� o   H I���� 0 	eventtype 	eventType� m   I J��
�� EnXSxSs2� k   P W�� ��� r   P S��� m   P Q�� ���  C l o s e d� o      ���� 0 action_name  � ���� r   T W��� m   T U��
�� boovfals� o      ���� 0 action_bool  ��  � � � G   Z e =  Z ] o   Z [���� 0 	eventtype 	eventType m   [ \��
�� EnXSxSs3 =  ` c o   ` a���� 0 	eventtype 	eventType m   a b��
�� EnXSxSs4  �� k   h o 	
	 r   h k m   h i �  O p e n e d o      ���� 0 action_name  
 �� r   l o m   l m��
�� boovtrue o      ���� 0 action_bool  ��  ��  ��  �  r   t z n  t x 4   u x��
�� 
cobj m   v w����  o   t u���� 0 	alarmdata   o      ���� 0 growling    r   { � n  {  4   | ��
�� 
cobj m   } ~����  o   { |���� 0 	alarmdata   o      ���� 0 chiming    !  r   � �"#" n  � �$%$ 4   � ���&
�� 
cobj& m   � ����� % o   � ����� 0 	alarmdata  # o      ���� 0 chime_device  ! '(' r   � �)*) n  � �+,+ 4   � ���-
�� 
cobj- m   � ����� , o   � ����� 0 	alarmdata  * o      ���� 0 
sound_file  ( ./. r   � �010 n  � �232 4   � ���4
�� 
cobj4 m   � ����� 3 o   � ����� 0 	alarmdata  1 o      ���� 0 heartbeat_monitor  / 5��5 L   � �66 J   � �77 898 m   � ���
�� boovtrue9 :;: o   � ����� 0 sensor_name  ; <=< o   � ����� 0 action_name  = >?> o   � ����� 0 action_bool  ? @A@ o   � ����� 0 growling  A BCB o   � ����� 0 chiming  C DED o   � ����� 0 chime_device  E FGF o   � ����� 0 
sound_file  G H��H o   � ����� 0 heartbeat_monitor  ��  ��  �  �  � IJI l  � ���������  ��  ��  J KLK l  � ���MN��  M   Sensor Unknown   N �OO    S e n s o r   U n k n o w nL P��P L   � �QQ I   � ���������  0 unknown_sensor Unknown_sensor��  ��  ��  � 0 	alarmdata  � o    ���� 0 alarm_matrix Alarm_Matrix� RSR l  � ���������  ��  ��  S T��T l  � ���������  ��  ��  ��  ` UVU l     ��������  ��  ��  V WXW i   � �YZY I      ��[���� 0 sound_chime  [ \]\ o      ���� 0 
soundchime 
SoundChime] ^��^ o      ���� 0 chime_device  ��  ��  Z Z     P_`��a_ =    bcb o     ���� 0 
soundchime 
SoundChimec m    ��
�� boovtrue` k    Gdd efe n   ghg I    ��i���� 0 log_security  i j��j m    kk �ll  S o u n d i n g   C h i m e��  ��  h  f    f m��m Q    Gnopn k    qq rsr I   ��t��
�� .INDOOff null���    utf8t o    ���� 0 chime_device  ��  s u��u I   ��vw
�� .INDOOn  null���    utf8v o    ���� 0 chime_device  w ��x��
�� 
Durax m    yy ?�      ��  ��  o R      ����z
�� .ascrerr ****      � ****��  z ��{��
�� 
errn{ o      ���� 0 errnum errNum��  p Z   % G|}����| =  % (~~ o   % &���� 0 errnum errNum m   & '�����@} k   + C�� ��� n  + 1��� I   , 1������� 0 log_security  � ���� m   , -�� ��� � T h e   C h i m e   D e v i c e   d e f i n e d   i n   t h e   A l a r m _ M a t r i x   p r o p e r t y   d o e s   n o t   e x i s t .��  ��  �  f   + ,� ��� n  2 <��� I   3 <������� 0 log_security  � ���� b   3 8��� b   3 6��� m   3 4�� ��� T C r e a t e   a   n e w   I n d i g o   D e v i c e   w i t h   t h e   n a m e   "� o   4 5���� 0 chime_device  � m   6 7�� ���  " ,   o r   m o d i f y��  ��  �  f   2 3� ���� n  = C��� I   > C������� 0 log_security  � ���� m   > ?�� ��� � t h e   A l a r m _ M a t r i x   p r o p e r t y   a t   t h e   t o p   o f   t h e   ' s e c u r i t y   s a m p l e . s c p t '   f i l e .��  ��  �  f   = >��  ��  ��  ��  ��  a n  J P��� I   K P������� 0 log_security  � ���� m   K L�� ��� ^ C h i m e   S u p r e s s e d . . .   ( D u e   t o   S o u n d C h i m e   V a r i a b l e )��  ��  �  f   J KX ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 do_chime  � ��� o      ���� 0 chime_enabled  � ��� o      ���� 0 action_bool  � ���� o      ���� 0 chime_device  ��  ��  � Z     �������� o     ���� 0 chime_enabled  � Z    �������� G    ��� =   ��� o    	�� (0 chime_only_on_open Chime_Only_On_Open� m   	 
�~
�~ boovfals� o    �}�} 0 action_bool  � k    ��� ��� r    ��� n   ��� I    �|��{�| 0 read_indigo_variable  � ��� m    �� ��� * C h i m e _ L a s t _ S o u n d e d _ m s� ��z� m    �y�y  �z  �{  �  f    � o      �x�x 0 last_chimed_ms  � ��� Z    1���w�v� ?    '��� o    �u�u 0 last_chimed_ms  � n    &��� 1   $ &�t
�t 
time� l   $��s�r� I   $�q�p�o
�q .misccurdldt    ��� null�p  �o  �s  �r  � r   * -��� m   * +�n�n � o      �m�m 0 last_chimed_ms  �w  �v  � ��l� Z   2 ����k�j� l  2 C��i�h� @   2 C��� n   2 9��� 1   7 9�g
�g 
time� l  2 7��f�e� I  2 7�d�c�b
�d .misccurdldt    ��� null�c  �b  �f  �e  � [   9 B��� o   9 :�a�a 0 last_chimed_ms  � l  : A��`�_� ]   : A��� o   : ?�^�^ "0 chime_min_delay Chime_Min_delay� m   ? @�]�] <�`  �_  �i  �h  � k   F ��� ��� n  F U��� I   G U�\��[�\ 0 set_variable  � ��� l  G H��Z�Y� m   G H�� ��� * C h i m e _ L a s t _ S o u n d e d _ m s�Z  �Y  � ��X� c   H Q��� n   H O��� 1   M O�W
�W 
time� l  H M��V�U� I  H M�T�S�R
�T .misccurdldt    ��� null�S  �R  �V  �U  � m   O P�Q
�Q 
TEXT�X  �[  �  f   F G� ��� n  V a��� I   W a�P��O�P 0 set_variable  � ��� l  W X��N�M� m   W X�� ��� $ C h i m e _ L a s t _ S o u n d e d�N  �M  � ��L� n  X ]��� I   Y ]�K�J�I�K 0 timestamp_str  �J  �I  �  f   X Y�L  �O  �  f   V W� ��� l  b b�H�G�F�H  �G  �F  � ��� r   b k   n  b i I   c i�E�D�E 0 read_indigo_variable    m   c d �  S o u n d C h i m e 	�C	 m   d e�B
�B boovtrue�C  �D    f   b c o      �A�A 0 soundchimestr soundChimeStr� 

 Z   l ��@�? G   l  G   l w =  l o o   l m�>�> 0 soundchimestr soundChimeStr m   m n �  t r u e =  r u o   r s�=�= 0 soundchimestr soundChimeStr m   s t �  T r u e =  z } o   z {�<�< 0 soundchimestr soundChimeStr m   { | �  1 r   � � m   � ��;
�; boovtrue o      �:�: 0 
soundchime 
SoundChime�@  �?    �9  n  � �!"! I   � ��8#�7�8 0 sound_chime  # $%$ o   � ��6�6 0 
soundchime 
SoundChime% &�5& o   � ��4�4 0 chime_device  �5  �7  "  f   � ��9  �k  �j  �l  ��  ��  ��  ��  � '(' l     �3�2�1�3  �2  �1  ( )*) i   � �+,+ I      �0-�/�0 0 play_sound_file  - ./. o      �.�. 0 soundfile_to_play  / 0�-0 o      �,�, 0 action_bool  �-  �/  , k     .11 232 n    454 I    �+6�*�+ 0 log_security  6 7�)7 o    �(�( 0 soundfile_to_play  �)  �*  5  f     3 8�'8 Z    .9:�&�%9 F    ;<; H    == l   
>�$�#> =   
?@? o    �"�" 0 soundfile_to_play  @ m    	�!
�! boovfals�$  �#  < o    � �  0 action_bool  : k    *AA BCB n   DED I    �F�� 0 log_security  F G�G m    HH �II  p l a y i n g   f i l e�  �  E  f    C J�J I   *�K�
� .sysoexecTEXT���     TEXTK b    &LML b    $NON b    "PQP m    RR �SS  o p e n   - a  Q o    !�� (0 playsound_location PlaySound_LocationO m   " #TT �UU   P l a y \   S o u n d . a p p  M o   $ %�� 0 soundfile_to_play  �  �  �&  �%  �'  * V�V l     ����  �  �  �  �$                                                                                  INDO   alis    �  Local_Drive                ��
VH+  m��IndigoServer.app                                               m��ŀ�        ����  	                Indigo 4    ��P�      ŀb
    m�� ��       WLocal_Drive:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app   "  I n d i g o S e r v e r . a p p    L o c a l _ D r i v e  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��  � WXW l     ����  �  �  X YZY l     �[\�  [ b \--------------------------------------------------------------------------------------------   \ �]] � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -Z ^_^ w      `a` k      bb cdc i   � �efe I     �gh
� .INDOprScnull���   0 EnXSg o      �� 0 	eventtype 	eventTypeh �i�
� 
ScCdi o      �� 0 devid devID�  f k    Xjj klk l     �
mn�
  m ] W if eventType is sec_ArmHome_min then log "arm home (min)" using type "Security Sample"   n �oo �   i f   e v e n t T y p e   i s   s e c _ A r m H o m e _ m i n   t h e n   l o g   " a r m   h o m e   ( m i n ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "l pqp l     �	rs�	  r ] W if eventType is sec_ArmHome_max then log "arm home (max)" using type "Security Sample"   s �tt �   i f   e v e n t T y p e   i s   s e c _ A r m H o m e _ m a x   t h e n   l o g   " a r m   h o m e   ( m a x ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "q uvu l     �wx�  w ] W if eventType is sec_ArmAway_min then log "arm away (min)" using type "Security Sample"   x �yy �   i f   e v e n t T y p e   i s   s e c _ A r m A w a y _ m i n   t h e n   l o g   " a r m   a w a y   ( m i n ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "v z{z l     �|}�  | ] W if eventType is sec_ArmAway_max then log "arm away (max)" using type "Security Sample"   } �~~ �   i f   e v e n t T y p e   i s   s e c _ A r m A w a y _ m a x   t h e n   l o g   " a r m   a w a y   ( m a x ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "{ � l     ����  � P J if eventType is sec_Disarm then log "disarm" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ D i s a r m   t h e n   l o g   " d i s a r m "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ����  � N H if eventType is sec_Panic then log "panic" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ P a n i c   t h e n   l o g   " p a n i c "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ����  � ^ X if eventType is sec_LightsOn then log "security lights on" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ L i g h t s O n   t h e n   l o g   " s e c u r i t y   l i g h t s   o n "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ����  � ` Z if eventType is sec_LightsOff then log "security lights off" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ L i g h t s O f f   t h e n   l o g   " s e c u r i t y   l i g h t s   o f f "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ����  � m g if eventType is sec_SensorNormal_min then log "sensor normal (min delay)" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ S e n s o r N o r m a l _ m i n   t h e n   l o g   " s e n s o r   n o r m a l   ( m i n   d e l a y ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ����  � m g if eventType is sec_SensorNormal_max then log "sensor normal (max delay)" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ S e n s o r N o r m a l _ m a x   t h e n   l o g   " s e n s o r   n o r m a l   ( m a x   d e l a y ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     � ���   � k e if eventType is sec_SensorAlert_min then log "sensor alert (min delay)" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ S e n s o r A l e r t _ m i n   t h e n   l o g   " s e n s o r   a l e r t   ( m i n   d e l a y ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ������  � k e if eventType is sec_SensorAlert_max then log "sensor alert (max delay)" using type "Security Sample"   � ��� �   i f   e v e n t T y p e   i s   s e c _ S e n s o r A l e r t _ m a x   t h e n   l o g   " s e n s o r   a l e r t   ( m a x   d e l a y ) "   u s i n g   t y p e   " S e c u r i t y   S a m p l e "� ��� l     ��������  ��  ��  � ��� r     ��� m     ��
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
cobj� m   G H���� � o   E F���� 0 decoded_data  � o      ���� 0 chime_device  � ��� r   L R   n   L P 4   M P��
�� 
cobj m   N O����  o   L M���� 0 decoded_data   o      ���� 0 
sound_file  �  r   S Y n   S W	
	 4   T W��
�� 
cobj m   U V���� 	
 o   S T���� 0 decoded_data   o      ���� 0 monitor    l  Z Z��������  ��  ��    l  Z Z����     Check for Heartbeat    � (   C h e c k   f o r   H e a r t b e a t  r   Z ] m   Z [��
�� boovfals o      ���� 0 	heartbeat    Z   ^ ��� l  ^ i���� >  ^ i n  ^ g  I   _ g��!���� 0 read_indigo_variable  ! "#" b   _ b$%$ o   _ `���� 0 sensor_name  % m   ` a&& �''  _ l a s t _ s t a t u s# (��( m   b c)) �**  C l o s e d��  ��     f   ^ _ o   g h���� 0 action_name  ��  ��   k   l �++ ,-, l  l l��./��  . ^ X Check for heart beat by checking to see if this is a rebroadcast of the previous status   / �00 �   C h e c k   f o r   h e a r t   b e a t   b y   c h e c k i n g   t o   s e e   i f   t h i s   i s   a   r e b r o a d c a s t   o f   t h e   p r e v i o u s   s t a t u s- 121 l  l l��34��  3 = 7 Previous Sensor readings exist, but are not duplicates   4 �55 n   P r e v i o u s   S e n s o r   r e a d i n g s   e x i s t ,   b u t   a r e   n o t   d u p l i c a t e s2 676 l  l l��89��  8 $ eg. New status change, log it.   9 �:: < e g .   N e w   s t a t u s   c h a n g e ,   l o g   i t .7 ;<; n  l y=>= I   m y��?���� 0 set_variable  ? @A@ b   m pBCB o   m n���� 0 sensor_name  C m   n oDD �EE  _ l a s t _ u p d a t eA F��F n  p uGHG I   q u�������� 0 timestamp_str  ��  ��  H  f   p q��  ��  >  f   l m< IJI n  z �KLK I   { ���M���� 0 set_variable  M NON b   { ~PQP o   { |���� 0 sensor_name  Q m   | }RR �SS  _ i s _ o p e nO T��T o   ~ ���� 0 action_bool  ��  ��  L  f   z {J UVU n  � �WXW I   � ���Y���� 0 set_variable  Y Z[Z b   � �\]\ o   � ����� 0 sensor_name  ] m   � �^^ �__  _ l a s t _ s t a t u s[ `��` o   � ����� 0 action_name  ��  ��  X  f   � �V aba Z  � �cd����c F   � �efe o   � ����� @0 update_heartbeat_after_actions Update_Heartbeat_After_Actionsf =  � �ghg o   � ����� 0 monitor  h m   � ���
�� boovtrued n  � �iji I   � ���k���� 0 set_variable  k lml l  � �n����n b   � �opo o   � ����� 0 sensor_name  p m   � �qq �rr  _ l a s t _ u p d a t e��  ��  m s��s n  � �tut I   � ��������� 0 timestamp_str  ��  ��  u  f   � ���  ��  j  f   � ���  ��  b v��v l  � ���������  ��  ��  ��  ��   k   � �ww xyx l  � ���z{��  z ( " Previous readings, are duplicates   { �|| D   P r e v i o u s   r e a d i n g s ,   a r e   d u p l i c a t e sy }~} n  � �� I   � �������� 0 log_security  � ���� b   � ���� m   � ��� ��� 2 H e a r t   B e a t   d e t e c t e d   f r o m  � o   � ����� 0 sensor_name  ��  ��  �  f   � �~ ��� n  � ���� I   � �������� 0 set_variable  � ��� l  � ������� b   � ���� o   � ����� 0 sensor_name  � m   � ��� ���  _ l a s t _ u p d a t e��  ��  � ���� n  � ���� I   � �����~�� 0 timestamp_str  �  �~  �  f   � ���  ��  �  f   � �� ��}� r   � ���� m   � ��|
�| boovtrue� o      �{�{ 0 	heartbeat  �}   ��� l  � ��z�y�x�z  �y  �x  � ��� Z   �R���w�v� =  � ���� o   � ��u�u 0 	heartbeat  � m   � ��t
�t boovfals� k   �N�� ��� l  � ��s���s  � 7 1 Log/chime/beep/growl the non-heartbeat activity.   � ��� b   L o g / c h i m e / b e e p / g r o w l   t h e   n o n - h e a r t b e a t   a c t i v i t y .� ��� n  � ���� I   � ��r��q�r 0 log_security  � ��p� b   � ���� b   � ���� b   � ���� b   � ���� I   � ��o�n�m�o 0 timestamp_str  �n  �m  � m   � ��� ���   � o   � ��l�l 0 sensor_name  � m   � ��� ���   � o   � ��k�k 0 action_name  �p  �q  �  f   � �� ��� Z  ����j�i� o   � ��h�h 0 action_bool  � I  � ��g�f�e
�g .sysobeepnull��� ��� long�f  �e  �j  �i  � ��� n 
��� I  
�d��c�d 0 do_chime  � ��� o  �b�b 0 chime_enabled  � ��� o  �a�a 0 action_bool  � ��`� o  �_�_ 0 chime_device  �`  �c  �  f  � ��� l �^�]�\�^  �]  �\  � ��� Z ���[�Z� > ��� o  �Y�Y 0 
sound_file  � m  �X
�X boovfals� I  �W��V�W 0 play_sound_file  � ��� o  �U�U 0 
sound_file  � ��T� o  �S�S 0 action_bool  �T  �V  �[  �Z  � ��� l �R�Q�P�R  �Q  �P  � ��� l �O���O  �   Send Growl Notification   � ��� 0   S e n d   G r o w l   N o t i f i c a t i o n� ��� Z 8���N�M� o  "�L�L 0 	use_growl 	Use_Growl� Z %4���K�J� o  %&�I�I 0 growl_enabled  � n )0��� I  *0�H��G�H 0 send_to_growl  � ��� o  *+�F�F 0 sensor_name  � ��E� o  +,�D�D 0 action_name  �E  �G  �  f  )*�K  �J  �N  �M  � ��� l 99�C�B�A�C  �B  �A  � ��� Z 9L���@�?� o  9>�>�> 0 speak_alarms Speak_Alarms� I  AH�=��<�=  0 say_alarm_text Say_Alarm_Text� ��� o  BC�;�; 0 sensor_name  � ��:� o  CD�9�9 0 action_name  �:  �<  �@  �?  � ��8� l MM�7�6�5�7  �6  �5  �8  �w  �v  � ��4� n SX��� I  TX�3�2�1�3 0 check_heartbeats  �2  �1  �  f  ST�4  d ��0� l     �/�.�-�/  �.  �-  �0  a$                                                                                  INDO   alis    �  Local_Drive                ��
VH+  m��IndigoServer.app                                               m��ŀ�        ����  	                Indigo 4    ��P�      ŀb
    m�� ��       WLocal_Drive:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app   "  I n d i g o S e r v e r . a p p    L o c a l _ D r i v e  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��  _ ��� l     �,�+�*�,  �+  �*  � ��� l     �)�(�'�)  �(  �'  � ��� l     �&���&  � I C 2006.09.27 Removed deprecated "continue..." line. (Matt Bendiksen)   � ��� �   2 0 0 6 . 0 9 . 2 7   R e m o v e d   d e p r e c a t e d   " c o n t i n u e . . . "   l i n e .   ( M a t t   B e n d i k s e n )� ��� l     �%�$�#�%  �$  �#  � 	 		  l     �"		�"  	 6 0 2008.02.17 Major rewrite. (Benjamin Schollnick)   	 �		 `   2 0 0 8 . 0 2 . 1 7   M a j o r   r e w r i t e .   ( B e n j a m i n   S c h o l l n i c k )	 			 l     �!		�!  	 + %    http://schollnick.info/wordpress/   	 �				 J         h t t p : / / s c h o l l n i c k . i n f o / w o r d p r e s s /	 	
		
 l     � 		�   	      	 �		   	 			 l     �		�  	 < 6 2008.03.30 Enhancements and cleanup. (Matt Bendiksen)   	 �		 l   2 0 0 8 . 0 3 . 3 0   E n h a n c e m e n t s   a n d   c l e a n u p .   ( M a t t   B e n d i k s e n )	 			 l     ����  �  �  	 			 l     �		�  	   v1.0 - General Release   	 �		 .   v 1 . 0   -   G e n e r a l   R e l e a s e	 			 l     ����  �  �  	 			 l     �		 �  	 p j v1.2 - Fixed issue with unregistered Alarms not chiming.  Previously they would only show up in log file.   	  �	!	! �   v 1 . 2   -   F i x e d   i s s u e   w i t h   u n r e g i s t e r e d   A l a r m s   n o t   c h i m i n g .     P r e v i o u s l y   t h e y   w o u l d   o n l y   s h o w   u p   i n   l o g   f i l e .	 	"	#	" l     �	$	%�  	$ - '         - Created function for chiming   	% �	&	& N                   -   C r e a t e d   f u n c t i o n   f o r   c h i m i n g	# 	'	(	' l     �	)	*�  	) f `         - Now any Unregistered Alarms will have "Unregistered Sensor" prefixed to the log entry   	* �	+	+ �                   -   N o w   a n y   U n r e g i s t e r e d   A l a r m s   w i l l   h a v e   " U n r e g i s t e r e d   S e n s o r "   p r e f i x e d   t o   t h e   l o g   e n t r y	( 	,	-	, l     �	.	/�  	. K E         - Alarm entries will have "alarm" prefixed to the log entry.   	/ �	0	0 �                   -   A l a r m   e n t r i e s   w i l l   h a v e   " a l a r m "   p r e f i x e d   t o   t h e   l o g   e n t r y .	- 	1	2	1 l     ����  �  �  	2 	3	4	3 l     �	5	6�  	5 A ; v1.3 - Added HeartBeat detection, and heartbeat recording.   	6 �	7	7 v   v 1 . 3   -   A d d e d   H e a r t B e a t   d e t e c t i o n ,   a n d   h e a r t b e a t   r e c o r d i n g .	4 	8	9	8 l     �	:	;�  	: { u         - Previously only decoding the Min alarm settings.  Now the max alarms are being mapped to the min settings.   	; �	<	< �                   -   P r e v i o u s l y   o n l y   d e c o d i n g   t h e   M i n   a l a r m   s e t t i n g s .     N o w   t h e   m a x   a l a r m s   a r e   b e i n g   m a p p e d   t o   t h e   m i n   s e t t i n g s .	9 	=	>	= l     �	?	@�  	? _ Y            If anyone needs to distinguish between a min or max alarm please let me know.   	@ �	A	A �                         I f   a n y o n e   n e e d s   t o   d i s t i n g u i s h   b e t w e e n   a   m i n   o r   m a x   a l a r m   p l e a s e   l e t   m e   k n o w .	> 	B	C	B l     ����  �  �  	C 	D	E	D l     �
	F	G�
  	F X R v1.4 - Started to merge changes with suggestions from Matt Bendiksen. (3/30/2008)   	G �	H	H �   v 1 . 4   -   S t a r t e d   t o   m e r g e   c h a n g e s   w i t h   s u g g e s t i o n s   f r o m   M a t t   B e n d i k s e n .   ( 3 / 3 0 / 2 0 0 8 )	E 	I	J	I l     �	���	  �  �  	J 	K	L	K l     �	M	N�  	M > 8 v1.5 - Added Heartbeat inactivity detection	(5/28/2008)   	N �	O	O p   v 1 . 5   -   A d d e d   H e a r t b e a t   i n a c t i v i t y   d e t e c t i o n 	 ( 5 / 2 8 / 2 0 0 8 )	L 	P	Q	P l     �	R	S�  	R : 4		- Growl Support for Heartbeat inactivity detection   	S �	T	T h 	 	 -   G r o w l   S u p p o r t   f o r   H e a r t b e a t   i n a c t i v i t y   d e t e c t i o n	Q 	U	V	U l     �	W	X�  	W ' !		- Email on Heartbeat inactivity   	X �	Y	Y B 	 	 -   E m a i l   o n   H e a r t b e a t   i n a c t i v i t y	V 	Z	[	Z l     �	\	]�  	\ v p		- Added optional switch (Update_Heartbeat_After_Actions) to allow heartbeat to be updated after every action.    	] �	^	^ � 	 	 -   A d d e d   o p t i o n a l   s w i t c h   ( U p d a t e _ H e a r t b e a t _ A f t e r _ A c t i o n s )   t o   a l l o w   h e a r t b e a t   t o   b e   u p d a t e d   a f t e r   e v e r y   a c t i o n .  	[ 	_	`	_ l     �	a	b�  	a ( "		- Added the following variables:   	b �	c	c D 	 	 -   A d d e d   t h e   f o l l o w i n g   v a r i a b l e s :	` 	d	e	d l     �	f	g�  	f ( "			- Inactivity_Heartbeat_Watchdog   	g �	h	h D 	 	 	 -   I n a c t i v i t y _ H e a r t b e a t _ W a t c h d o g	e 	i	j	i l     � 	k	l�   	k ) #			- Update_Heartbeat_After_Actions   	l �	m	m F 	 	 	 -   U p d a t e _ H e a r t b e a t _ A f t e r _ A c t i o n s	j 	n	o	n l     ��	p	q��  	p  			- SE_IBeat_Address   	q �	r	r * 	 	 	 -   S E _ I B e a t _ A d d r e s s	o 	s	t	s l     ��	u	v��  	u + %			- Send_Email_on_Inactive_Heartbeat   	v �	w	w J 	 	 	 -   S e n d _ E m a i l _ o n _ I n a c t i v e _ H e a r t b e a t	t 	x	y	x l     ��������  ��  ��  	y 	z	{	z l     ��	|	}��  	| "  v1.6 - Added Speech Support   	} �	~	~ 8   v 1 . 6   -   A d d e d   S p e e c h   S u p p o r t	{ 		�	 l     ��	�	���  	� M G			- Added Speech support for Open Sensor, and Closed Sensor detection.   	� �	�	� � 	 	 	 -   A d d e d   S p e e c h   s u p p o r t   f o r   O p e n   S e n s o r ,   a n d   C l o s e d   S e n s o r   d e t e c t i o n .	� 	�	�	� l     ��	�	���  	� 5 /			- Added Ignore Flag (Alarm Matrix #6 Option)   	� �	�	� ^ 	 	 	 -   A d d e d   I g n o r e   F l a g   ( A l a r m   M a t r i x   # 6   O p t i o n )	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��	�	���  	� #  v1.65 - Added Speech Support   	� �	�	� :   v 1 . 6 5   -   A d d e d   S p e e c h   S u p p o r t	� 	�	�	� l     ��	�	���  	� M G			- Added Speech support for Open Sensor, and Closed Sensor detection.   	� �	�	� � 	 	 	 -   A d d e d   S p e e c h   s u p p o r t   f o r   O p e n   S e n s o r ,   a n d   C l o s e d   S e n s o r   d e t e c t i o n .	� 	�	�	� l     ��	�	���  	� 5 /			- Added Ignore Flag (Alarm Matrix #6 Option)   	� �	�	� ^ 	 	 	 -   A d d e d   I g n o r e   F l a g   ( A l a r m   M a t r i x   # 6   O p t i o n )	� 	�	�	� l     ��������  ��  ��  	� 	���	� l     ��	�	���  	� V P v2.00 - Working at optimizing the code, and adding better comments for newbies.   	� �	�	� �   v 2 . 0 0   -   W o r k i n g   a t   o p t i m i z i n g   t h e   c o d e ,   a n d   a d d i n g   b e t t e r   c o m m e n t s   f o r   n e w b i e s .��        ��	�	���	�h��~����	�	���	����	�	�	�	�	�	�	�	�	�	�	�	�	�	�	�	���  	� �������������������������������������������������������������� 0 alarm_matrix Alarm_Matrix�� 0 speak_alarms Speak_Alarms�� (0 sensor_speech_text Sensor_Speech_Text�� 0 speech_voice Speech_Voice�� (0 chime_only_on_open Chime_Only_On_Open�� "0 chime_min_delay Chime_Min_delay�� >0 inactivity_heartbeat_watchdog Inactivity_Heartbeat_Watchdog�� 0 	use_growl 	Use_Growl�� 40 growl_notifications_list Growl_Notifications_List�� :0 growl_enabled_notifications Growl_Enabled_Notifications�� D0  send_email_on_inactive_heartbeat  Send_Email_on_Inactive_Heartbeat�� $0 se_ibeat_address SE_IBeat_Address�� @0 update_heartbeat_after_actions Update_Heartbeat_After_Actions�� (0 playsound_location PlaySound_Location�� 0 send_to_growl  �� 0 replacetext replaceText��  0 say_alarm_text Say_Alarm_Text�� 0 timestamp_str  �� 0 time_elapsed  �� 0 	send_mail  �� 0 read_indigo_variable  �� 0 set_variable  �� 0 log_security  �� 0 check_heartbeats  ��  0 unknown_sensor Unknown_sensor�� 0 decode_security  �� 0 sound_chime  �� 0 do_chime  �� 0 play_sound_file  
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
�� boovtrue	� ������	�	����� 0 send_to_growl  �� ��	��� 	�  ������ 0 sensor_name  �� 0 action_name  ��  	� ���������� 0 sensor_name  �� 0 action_name  �� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList	� Z�3�~�}�|<�{�z�y�xL�wUX�v
� 
appl
�~ 
anot
�} 
dnot
�| 
iapp�{ 
�z .registernull��� ��� null
�y 
name
�x 
titl
�w 
desc
�v .notifygrnull��� ��� null�� 9� 5b  E�Ob  	E�O*������� O*���%�%��%�%��� U	� �uy�t�s	�	��r�u 0 replacetext replaceText�t �q	��q 	�  �p�o�n�p 0 find  �o 0 replace  �n 0 subject  �s  	� �m�l�k�j�m 0 find  �l 0 replace  �k 0 subject  �j 0 prevtids prevTIDs	� �i�h�g�
�i 
ascr
�h 
txdl
�g 
citm�r '��,E�O���,FO��-E�O���,FO�%E�O���,FO�	� �f��e�d	�	��c�f  0 say_alarm_text Say_Alarm_Text�e �b	��b 	�  �a�`�a 0 sensor_name  �` 
0 action  �d  	� �_�^�]�_ 0 sensor_name  �^ 
0 action  �] 0 text_to_speak  	� 
��\��[����Z�Y
�\ 
cobj�[ 0 replacetext replaceText
�Z 
VOIC
�Y .sysottosnull���     TEXT�c h��  b  �k/E�O*⠢m+ E�Y ?��  b  �l/E�O*堢m+ E�Y !��  b  �m/E�O*砢m+ E�Y hO��b  l 		� �X�W�V	�	��U�X 0 timestamp_str  �W  �V  	� �T�S�R�Q�T 0 my_date  �S 0 y  �R 0 m  �Q 0 d  	� �P�O�N�M�LF�K�J\lnp�I
�P .misccurdldt    ��� null
�O 
year
�N 
long
�M 
mnth�L 

�K 
ctxt
�J 
day 
�I 
tstr�U U*j  E�O��,�&E�O��,�&E�O�� �%�&E�Y hO��,�&E�O�� �%�&E�Y hO��%�%�%�%�%��,%	� �Hy�G�F	�	��E�H 0 time_elapsed  �G �D	��D 	�  �C�C 0 td  �F  	� �B�B 0 td  	� �A�@
�A .misccurdldt    ��� null
�@ 
ldt �E *j  *�/	� �?��>�=	�	��<�? 0 	send_mail  �> �;	��; 	�  �:�9�8�: 0 rec  �9 0 sub  �8 0 msg  �=  	� �7�6�5�4�7 0 rec  �6 0 sub  �5 0 msg  �4 0 x  	� ��3�2�1�0�/�.�-�,�+�*�)
�3 
kocl
�2 
bcke
�1 .corecrel****      � null
�0 
trcp
�/ 
insh
�. 
prdt
�- 
radd�, 
�+ 
subj
�* 
ctnt
�) .emsgsendbool        bcke�< 8� 4*��l E�O� *���*�-6��l� O�*�,FO�*�,FUO�j U	� �(��'�&	�	��%�( 0 read_indigo_variable  �' �$	��$ 	�  �#�"�# 0 variable_name  �" 0 default_val  �&  	� �!� �! 0 variable_name  �  0 default_val  	� ����
� 
Vrbl
� .coredoexbool        obj 
� 
Valu� 0 set_variable  �% !*�/j  *�/�,EY )��l+ O�	� ����	�	��� 0 set_variable  � �	�� 	�  ��� 0 variable_name  � 0 variable_value  �  	� ��� 0 variable_name  � 0 variable_value  	� 	���������

� 
Vrbl
� .coredoexbool        obj 
� 
TEXT
� 
Valu
� 
kocl
� 
prdt
� 
pnam� 
�
 .corecrel****      � null� )*�/j  ��&*�/�,FY *������&�� 	� �	��	�	���	 0 log_security  � �	�� 	�  �� 0 log_text  �  	� �� 0 log_text  	� ��'� 
� 
TEXT
� 
LgTy
�  .INDOLog null���    utf8� 
��&��l 	� ��.����	�	����� 0 check_heartbeats  ��  ��  	� �������������� 0 msg  �� 0 x  �� 0 variable_name  �� 0 v  �� 0 dt  �� 0 log_msg  	� 4��������H����n��r�����������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
TEXT�� 0 read_indigo_variable  �� 0 time_elapsed  �� <�� 0 log_security  �� 0 send_to_growl  
�� 
ret �� 0 	send_mail  �� 0 timestamp_str  �� 0 set_variable  �� ��E�O wb   [��l kh ��l/�&�%E�O)�jl+ E�O)�k+ E�O�b   8��%��"%�%E�O)�k+ Ob   )��l/�&�l+ Y hO��%�%E�Y h[OY��Ob  
 >��  3 -b  [��l kh )a �%k+ O)�a �m+ [OY��Y hY hO)a )j+ l+ 	� �������	�	�����  0 unknown_sensor Unknown_sensor��  ��  	� ������������������������ 0 sensor_name  �� 0 action_name  �� 0 action_bool  �� 0 growling  �� 0 chiming  �� 0 chime_device  �� 0 
sound_file  �� 0 heartbeat_monitor  �� 0 	device_id 	device_ID�� 0 alarm_detected  �� 0 	eventtype 	eventType	� �����������1����D���� 0 log_security  
�� EnXSxSs1
�� EnXSxSs2
�� 
bool
�� EnXSxSs3
�� EnXSxSs4�� 	�� |�E�O�E�OfE�OfE�OfE�O�E�OfE�OfE�O)�k+ O)�k+ O)�%�%k+ OeE�O�� 
 �� �& �E�OfE�Y �� 
 �� �& �E�OeE�Y hOf���������v	� ��b����	�	����� 0 decode_security  �� ��	��� 	�  ������ 0 	eventtype 	eventType�� 0 	device_id 	device_ID��  	� �������������������������� 0 	eventtype 	eventType�� 0 	device_id 	device_ID�� 0 	alarmdata  �� 0 ignoresensor IgnoreSensor�� 0 sensor_name  �� 0 action_name  �� 0 action_bool  �� 0 growling  �� 0 chiming  �� 0 chime_device  �� 0 
sound_file  �� 0 heartbeat_monitor  	� ����������������������������������
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
�� EnXSxSs4�� �� �� �� �� 	��  0 unknown_sensor Unknown_sensor�� � �b   [��l kh ���k/  �)�el+ E�O�f  ���/E�Y fOPO��l/E�O�� 
 �� �& �E�OfE�Y �� 
 �� �& �E�OeE�Y hO��m/E�O���/E�O���/E�O���/E�O��a /E�Oe��������a vY hO*j+ [OY�\OP	� ��Z����	�	����� 0 sound_chime  �� ��	��� 	�  ������ 0 
soundchime 
SoundChime�� 0 chime_device  ��  	� �������� 0 
soundchime 
SoundChime�� 0 chime_device  �� 0 errnum errNum	� k������y����	���������� 0 log_security  
�� .INDOOff null���    utf8
�� 
Dura
�� .INDOOn  null���    utf8��  	� ������
�� 
errn�� 0 errnum errNum��  ���@�� Q�e  F)�k+ O �j O���l W )X  ��  )�k+ O)�%�%k+ O)�k+ Y hY )�k+ 	� �������	�	����� 0 do_chime  �� ��	��� 	�  �������� 0 chime_enabled  �� 0 action_bool  �� 0 chime_device  ��  	� �������������� 0 chime_enabled  �� 0 action_bool  �� 0 chime_device  �� 0 last_chimed_ms  �� 0 soundchimestr soundChimeStr�� 0 
soundchime 
SoundChime	� ���������������������
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
 �� �& eE�Y hO)��l+ Y hY hY h	� ��,����	�	����� 0 play_sound_file  �� ��	��� 	�  ����� 0 soundfile_to_play  � 0 action_bool  ��  	� �~�}�~ 0 soundfile_to_play  �} 0 action_bool  	� �|�{HRT�z�| 0 log_security  
�{ 
bool
�z .sysoexecTEXT���     TEXT�� /)�k+  O�f 	 ��& )�k+  O�b  %�%�%j Y h	� �yf�x�w	�	��v
�y .INDOprScnull���   0 EnXS�x 0 	eventtype 	eventType�w �u�t�s
�u 
ScCd�t 0 devid devID�s  	� �r�q�p�o�n�m�l�k�j�i�h�g�f�r 0 	eventtype 	eventType�q 0 devid devID�p 0 found_in_matrix  �o 0 decoded_data  �n 0 sensor_name  �m 0 action_name  �l 0 action_bool  �k 0 growl_enabled  �j 0 chime_enabled  �i 0 chime_device  �h 0 
sound_file  �g 0 monitor  �f 0 	heartbeat  	� �e�d�c�b�a�`�_�^&)�]D�\�[R^�Zq��Y����X�W�V�U�T�S�e 0 decode_security  
�d 
cobj�c �b �a �` �_ �^ 	�] 0 read_indigo_variable  �\ 0 timestamp_str  �[ 0 set_variable  
�Z 
bool�Y 0 log_security  
�X .sysobeepnull��� ��� long�W 0 do_chime  �V 0 play_sound_file  �U 0 send_to_growl  �T  0 say_alarm_text Say_Alarm_Text�S 0 check_heartbeats  �vYfE�O)��l+  E�O�f  hY hO��k/E�O��l/E�O��m/E�O���/E�O���/E�O���/E�O���/E�O���/E�O���/E�OfE�O)��%�l+ 
� N)��%)j+ l+ O)��%�l+ O)��%�l+ Ob  	 	�e a & )�a %)j+ l+ Y hOPY  )a �%k+ O)�a %)j+ l+ OeE�O�f  v)*j+ a %�%a %�%k+ O� 
*j Y hO)���m+ O�f *��l+ Y hOb   � )��l+ Y hY hOb   *��l+ Y hOPY hO)j+ ascr  ��ޭ