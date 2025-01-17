FasdUAS 1.101.10   ��   ��    k             l     ��  ��   )# Sample attachment script that illustrates how to listen to commands from security devices. Only the W800RF32 and CM15 interfaces receives these commands. 2003.05.15 (mmb).  Only the most recent Version history is at the top, the rest of the Version history is now at the bottom of the file.     � 	 	F   S a m p l e   a t t a c h m e n t   s c r i p t   t h a t   i l l u s t r a t e s   h o w   t o   l i s t e n   t o   c o m m a n d s   f r o m   s e c u r i t y   d e v i c e s .   O n l y   t h e   W 8 0 0 R F 3 2   a n d   C M 1 5   i n t e r f a c e s   r e c e i v e s   t h e s e   c o m m a n d s .   2 0 0 3 . 0 5 . 1 5   ( m m b ) .     O n l y   t h e   m o s t   r e c e n t   V e r s i o n   h i s t o r y   i s   a t   t h e   t o p ,   t h e   r e s t   o f   t h e   V e r s i o n   h i s t o r y   i s   n o w   a t   t h e   b o t t o m   o f   t h e   f i l e .   
  
 l     ��������  ��  ��        l     ��  ��    E ? Change & Version History		- Are at the bottom of the script...     �   ~   C h a n g e   &   V e r s i o n   H i s t o r y 	 	 -   A r e   a t   t h e   b o t t o m   o f   t h e   s c r i p t . . .      l     ��������  ��  ��        l     ��  ��    u o To start using the security script, scroll down to "property Alarm_Matrix", and fill in the entries as needed.     �   �   T o   s t a r t   u s i n g   t h e   s e c u r i t y   s c r i p t ,   s c r o l l   d o w n   t o   " p r o p e r t y   A l a r m _ M a t r i x " ,   a n d   f i l l   i n   t h e   e n t r i e s   a s   n e e d e d .      l     ��  ��    3 - Each block (the { }'s), contain 8 entries...     �   Z   E a c h   b l o c k   ( t h e   {   } ' s ) ,   c o n t a i n   8   e n t r i e s . . .      l     ��������  ��  ��         l     �� ! "��   !   Alarm_Matrix values: --    " � # # 0   A l a r m _ M a t r i x   v a l u e s :   - -    $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( [ U 1 - Device ID  			- The X10 sensor module ID, as shown in Indigo's Event Log window.    ) � * * �   1   -   D e v i c e   I D     	 	 	 -   T h e   X 1 0   s e n s o r   m o d u l e   I D ,   a s   s h o w n   i n   I n d i g o ' s   E v e n t   L o g   w i n d o w . '  + , + l     �� - .��   - g a 2 - Sensor Name		- The name you wish the sensor to have (used in Event Log and Variable window).    . � / / �   2   -   S e n s o r   N a m e 	 	 -   T h e   n a m e   y o u   w i s h   t h e   s e n s o r   t o   h a v e   ( u s e d   i n   E v e n t   L o g   a n d   V a r i a b l e   w i n d o w ) . ,  0 1 0 l     �� 2 3��   2 W Q						- The sensor name must *NOT* have a space in it.  Instead use a underscore.    3 � 4 4 � 	 	 	 	 	 	 -   T h e   s e n s o r   n a m e   m u s t   * N O T *   h a v e   a   s p a c e   i n   i t .     I n s t e a d   u s e   a   u n d e r s c o r e . 1  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 q k 3 - Growl Enabled 		- If true, and if Use_Growl is true, then this sensor's changes will be sent to Growl.    : � ; ; �   3   -   G r o w l   E n a b l e d   	 	 -   I f   t r u e ,   a n d   i f   U s e _ G r o w l   i s   t r u e ,   t h e n   t h i s   s e n s o r ' s   c h a n g e s   w i l l   b e   s e n t   t o   G r o w l . 8  < = < l     �� > ?��   > n h 4 - Chime Enabled		- If true, then an ON command will be sent to the Device named by Chime Device Name.    ? � @ @ �   4   -   C h i m e   E n a b l e d 	 	 -   I f   t r u e ,   t h e n   a n   O N   c o m m a n d   w i l l   b e   s e n t   t o   t h e   D e v i c e   n a m e d   b y   C h i m e   D e v i c e   N a m e . =  A B A l     �� C D��   C l f 5 - Chime Device Name	- The Device name to which an ON command will be sent if Chime Enabled is True.    D � E E �   5   -   C h i m e   D e v i c e   N a m e 	 -   T h e   D e v i c e   n a m e   t o   w h i c h   a n   O N   c o m m a n d   w i l l   b e   s e n t   i f   C h i m e   E n a b l e d   i s   T r u e . B  F G F l     �� H I��   H u o 6 - Ignore Sensor		- Allows the owner to have the sensor in the list, but to ignore any input from the sensor.    I � J J �   6   -   I g n o r e   S e n s o r 	 	 -   A l l o w s   t h e   o w n e r   t o   h a v e   t h e   s e n s o r   i n   t h e   l i s t ,   b u t   t o   i g n o r e   a n y   i n p u t   f r o m   t h e   s e n s o r . G  K L K l     �� M N��   M _ Y						- Generally used if the sensor is sending out false positives (eg. High Winds, etc)    N � O O � 	 	 	 	 	 	 -   G e n e r a l l y   u s e d   i f   t h e   s e n s o r   i s   s e n d i n g   o u t   f a l s e   p o s i t i v e s   ( e g .   H i g h   W i n d s ,   e t c ) L  P Q P l     �� R S��   R > 8						- False equals Do Not Ignore.  True equals Ignore.    S � T T p 	 	 	 	 	 	 -   F a l s e   e q u a l s   D o   N o t   I g n o r e .     T r u e   e q u a l s   I g n o r e . Q  U V U l     �� W X��   W h b 7 - Specialized Sound File - Set to false, if you do not want a specialized sound for this alarm.    X � Y Y �   7   -   S p e c i a l i z e d   S o u n d   F i l e   -   S e t   t o   f a l s e ,   i f   y o u   d o   n o t   w a n t   a   s p e c i a l i z e d   s o u n d   f o r   t h i s   a l a r m . V  Z [ Z l     �� \ ]��   \ V P						- Otherwise set to the fully qualified filename of the sound file to play.    ] � ^ ^ � 	 	 	 	 	 	 -   O t h e r w i s e   s e t   t o   t h e   f u l l y   q u a l i f i e d   f i l e n a m e   o f   t h e   s o u n d   f i l e   t o   p l a y . [  _ ` _ l     �� a b��   a R L						- This requires PlaySound to be installed, and usable via applescript.    b � c c � 	 	 	 	 	 	 -   T h i s   r e q u i r e s   P l a y S o u n d   t o   b e   i n s t a l l e d ,   a n d   u s a b l e   v i a   a p p l e s c r i p t . `  d e d l     �� f g��   f 8 2 8 - WatchDog / Heartbeat - Monitor for heartbeats    g � h h d   8   -   W a t c h D o g   /   H e a r t b e a t   -   M o n i t o r   f o r   h e a r t b e a t s e  i j i l     ��������  ��  ��   j  k l k l     �� m n��   m V P 9 - Action Group 		- False equals "Do Not Use".  If set to a name (for example)    n � o o �   9   -   A c t i o n   G r o u p   	 	 -   F a l s e   e q u a l s   " D o   N o t   U s e " .     I f   s e t   t o   a   n a m e   ( f o r   e x a m p l e ) l  p q p l     �� r s��   r Y S 	{153, "Kitchen_Door", false, true, "Sound Chime", false, false, true, "Kitchen"},    s � t t �   	 { 1 5 3 ,   " K i t c h e n _ D o o r " ,   f a l s e ,   t r u e ,   " S o u n d   C h i m e " ,   f a l s e ,   f a l s e ,   t r u e ,   " K i t c h e n " } , q  u v u l     �� w x��   w U O							The security script will attempt to trigger the following action groups:    x � y y � 	 	 	 	 	 	 	 T h e   s e c u r i t y   s c r i p t   w i l l   a t t e m p t   t o   t r i g g e r   t h e   f o l l o w i n g   a c t i o n   g r o u p s : v  z { z l     ��������  ��  ��   {  | } | l     �� ~ ��   ~   							Kitchen_sec_ArmHome     � � � 4 	 	 	 	 	 	 	 K i t c h e n _ s e c _ A r m H o m e }  � � � l     �� � ���   �   							Kitchen_sec_ArmAway    � � � � 4 	 	 	 	 	 	 	 K i t c h e n _ s e c _ A r m A w a y �  � � � l     �� � ���   �  							Kitchen_sec_Disarm    � � � � 2 	 	 	 	 	 	 	 K i t c h e n _ s e c _ D i s a r m �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � A ;							When the security code is detected from that sensor.    � � � � v 	 	 	 	 	 	 	 W h e n   t h e   s e c u r i t y   c o d e   i s   d e t e c t e d   f r o m   t h a t   s e n s o r . �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � Y S	To add an alarm sensor, just add block with the 8 entries, seperated by a comma.      � � � � � 	 T o   a d d   a n   a l a r m   s e n s o r ,   j u s t   a d d   b l o c k   w i t h   t h e   8   e n t r i e s ,   s e p e r a t e d   b y   a   c o m m a .     �  � � � j     ��� ��� 0 alarm_matrix Alarm_Matrix � J     � � �  � � � l 	    ����� � J      � �  � � � m     ���� [ �  � � � m     � � � � �  B e n _ A l a r m F o b �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovtrue �  � � � m     � � � � �  S o u n d   C h i m e �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  ��� � m    	 � � � � �  B e n _ A l a r m F o b��  ��  ��   �  � � � l 	   ����� � J     � �  � � � m    ���� q �  � � � m     � � � � �  W o r k R o o m _ D o o r 2 �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  � � � m     � � � � �  S o u n d   C h i m e �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  ��� � m    ��
�� boovfals��  ��  ��   �  � � � l 	  ! ����� � J    ! � �  � � � m    ���� � �  � � � m     � � � � �  B a s e m e n t _ D o o r �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  � � � m     � � � � �  S o u n d   C h i m e �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  ��� � m    ��
�� boovfals��  ��  ��   �  � � � l 	 ! , ����� � J   ! , � �  � � � m   ! "���� � �  � � � m   " # � � � � � ( G a r a g e _ D o o r _ D e a d b o l t �  � � � m   # $��
�� boovfals �  � � � m   $ %��
�� boovfals �  � � � m   % & � � � � �  S o u n d   C h i m e �  � � � m   & '��
�� boovfals �    m   ' (��
�� boovfals  m   ( )��
�� boovtrue �� m   ) *��
�� boovfals��  ��  ��   �  l 	 , 9���� J   , 9 	
	 m   , -���� �
  m   - . �  D i n i n g _ R o o m  m   . /��
�� boovfals  m   / 0��
�� boovtrue  m   0 3 �  S o u n d   C h i m e  m   3 4��
�� boovfals  m   4 5��
�� boovfals  m   5 6��
�� boovtrue �� m   6 7��
�� boovfals��  ��  ��    l 	 9 J ����  J   9 J!! "#" m   9 <���� �# $%$ m   < ?&& �''  R e c _ R o o m% ()( m   ? @��
�� boovfals) *+* m   @ A��
�� boovtrue+ ,-, m   A D.. �//  S o u n d   C h i m e- 010 m   D E��
�� boovfals1 232 m   E F��
�� boovfals3 454 m   F G��
�� boovtrue5 6��6 m   G H��
�� boovfals��  ��  ��   787 l 	 J [9����9 J   J [:: ;<; m   J M���� �< =>= m   M P?? �@@  W o r k R o o m _ D o o r> ABA m   P Q��
�� boovfalsB CDC m   Q R��
�� boovfalsD EFE m   R UGG �HH  S o u n d   C h i m eF IJI m   U V��
�� boovfalsJ KLK m   V W��
�� boovfalsL MNM m   W X��
�� boovfalsN O��O m   X Y��
�� boovfals��  ��  ��  8 PQP l 	 [ lR���R J   [ lSS TUT m   [ ^�~�~ �U VWV m   ^ aXX �YY  t e s t i n gW Z[Z m   a b�}
�} boovfals[ \]\ m   b c�|
�| boovtrue] ^_^ m   c f`` �aa  S o u n d   C h i m e_ bcb m   f g�{
�{ boovtruec ded m   g h�z
�z boovfalse fgf m   h i�y
�y boovtrueg h�xh m   i j�w
�w boovfals�x  ��  �  Q iji l 	 l }k�v�uk J   l }ll mnm m   l o�t�t  �nn opo m   o rqq �rr  G a r a g e _ D o o rp sts m   r s�s
�s boovfalst uvu m   s t�r
�r boovtruev wxw m   t wyy �zz  S o u n d   C h i m ex {|{ m   w x�q
�q boovfals| }~} m   x y�p
�p boovfals~ � m   y z�o
�o boovfals� ��n� m   z {�m
�m boovfals�n  �v  �u  j ��l� l 	 } ���k�j� J   } ��� ��� m   } ��i�i  �%� ��� m   � ��� ���  K i t c h e n _ D o o r� ��� m   � ��h
�h boovfals� ��� m   � ��g
�g boovtrue� ��� m   � ��� ���  S o u n d   C h i m e� ��� m   � ��f
�f boovfals� ��� m   � ��e
�e boovfals� ��� m   � ��d
�d boovfals� ��c� m   � ��b
�b boovfals�c  �k  �j  �l   � ��� l     �a�`�_�a  �`  �_  � ��� l     �^���^  � 9 3- , "/Users/benjamin/Desktop/alarm_clock_1.wav"}, �   � ��� f -   ,   " / U s e r s / b e n j a m i n / D e s k t o p / a l a r m _ c l o c k _ 1 . w a v " } ,   �� ��� l     �]�\�[�]  �\  �[  � ��� l     �Z���Z  �   Supressing Alarm Sensors   � ��� 2   S u p r e s s i n g   A l a r m   S e n s o r s� ��� l     �Y���Y  � The Ignore_Security_Sensors variable will override *ALL* the sensors ignore settings, and force the security script to ignore all sensors until it is set to false.  If it is set to true, then all sensors will be ignored.  If set to false, normal behavior will occur.   � ���   T h e   I g n o r e _ S e c u r i t y _ S e n s o r s   v a r i a b l e   w i l l   o v e r r i d e   * A L L *   t h e   s e n s o r s   i g n o r e   s e t t i n g s ,   a n d   f o r c e   t h e   s e c u r i t y   s c r i p t   t o   i g n o r e   a l l   s e n s o r s   u n t i l   i t   i s   s e t   t o   f a l s e .     I f   i t   i s   s e t   t o   t r u e ,   t h e n   a l l   s e n s o r s   w i l l   b e   i g n o r e d .     I f   s e t   t o   f a l s e ,   n o r m a l   b e h a v i o r   w i l l   o c c u r .� ��� l     �X�W�V�X  �W  �V  � ��� l     �U���U  �   Speech Controls   � ���     S p e e c h   C o n t r o l s� ��� l     �T�S�R�T  �S  �R  � ��� j   � ��Q��Q 0 speak_alarms Speak_Alarms� m   � ��P
�P boovfals� ��� l     �O�N�M�O  �N  �M  � ��� j   � ��L��L (0 sensor_speech_text Sensor_Speech_Text� J   � ��� ��� m   � ��� ��� ( S e n s o r   % s   h a s   O p e n e d� ��� m   � ��� ��� * S e n s o r   % s   h a s   C l o s e d .� ��K� m   � ��� ��� $ S e n s o r   % s   T i m e   O u t�K  � ��� l     �J���J  � - ' %s is replaced with the Sensor Name.     � ��� N   % s   i s   r e p l a c e d   w i t h   t h e   S e n s o r   N a m e .    � ��� l     �I�H�G�I  �H  �G  � ��� j   � ��F��F 0 speech_voice Speech_Voice� m   � ��� ���  A l e x� ��� l     �E�D�C�E  �D  �C  � ��� l     �B���B  �>8 The SoundChime variable (in Indigo's Variable's table) will override the Chiming settings.  For example, you can set a trigger action to disable the chime for XX minutes.  Setting SoundChime to True, enables the Chime.  Setting SoundChime to False, disables the chime.  This lasts until the variable is changed.   � ���p   T h e   S o u n d C h i m e   v a r i a b l e   ( i n   I n d i g o ' s   V a r i a b l e ' s   t a b l e )   w i l l   o v e r r i d e   t h e   C h i m i n g   s e t t i n g s .     F o r   e x a m p l e ,   y o u   c a n   s e t   a   t r i g g e r   a c t i o n   t o   d i s a b l e   t h e   c h i m e   f o r   X X   m i n u t e s .     S e t t i n g   S o u n d C h i m e   t o   T r u e ,   e n a b l e s   t h e   C h i m e .     S e t t i n g   S o u n d C h i m e   t o   F a l s e ,   d i s a b l e s   t h e   c h i m e .     T h i s   l a s t s   u n t i l   t h e   v a r i a b l e   i s   c h a n g e d .� ��� l     �A�@�?�A  �@  �?  � ��� j   � ��>��> *0 disable_system_beep Disable_System_Beep� m   � ��=
�= boovfals� ��� l     �<���<  � � | I don't recommend this, but if you want to disable the system beep on processing security events, you can set this to true.   � ��� �   I   d o n ' t   r e c o m m e n d   t h i s ,   b u t   i f   y o u   w a n t   t o   d i s a b l e   t h e   s y s t e m   b e e p   o n   p r o c e s s i n g   s e c u r i t y   e v e n t s ,   y o u   c a n   s e t   t h i s   t o   t r u e .� ��� l     �;�:�9�;  �:  �9  � ��� j   � ��8��8 &0 disable_chime_log Disable_Chime_Log� m   � ��7
�7 boovfals� ��� l     �6���6  � , & Disable all Chime related log entries   � ��� L   D i s a b l e   a l l   C h i m e   r e l a t e d   l o g   e n t r i e s� ��� l     �5�4�3�5  �4  �3  � ��� j   � ��2��2 (0 chime_only_on_open Chime_Only_On_Open� m   � ��1
�1 boovtrue� ��� l     �0���0  � b \ Only trigger the Chime on a Open Security notification.  The default beep will always play.   � ��� �   O n l y   t r i g g e r   t h e   C h i m e   o n   a   O p e n   S e c u r i t y   n o t i f i c a t i o n .     T h e   d e f a u l t   b e e p   w i l l   a l w a y s   p l a y .� ��� l     �/�.�-�/  �.  �-  � ��� j   � ��,��, "0 chime_min_delay Chime_Min_delay� m   � ��+�+ �    l     �*�*   � � The minimium delay between Chime requests.  Any chime request that is within this delay (in minutes) will be logged, but the chime will not be triggered.    �4   T h e   m i n i m i u m   d e l a y   b e t w e e n   C h i m e   r e q u e s t s .     A n y   c h i m e   r e q u e s t   t h a t   i s   w i t h i n   t h i s   d e l a y   ( i n   m i n u t e s )   w i l l   b e   l o g g e d ,   b u t   t h e   c h i m e   w i l l   n o t   b e   t r i g g e r e d .  l     �)�(�'�)  �(  �'    j   � ��&	�& >0 inactivity_heartbeat_watchdog Inactivity_Heartbeat_Watchdog	 m   � ��%�%  

 l     �$�$   The maximium number of seconds before a warning will start appearing for an alarm heartbeat.  If you receive an inactivity warning, please check the batteries, and test the contacts. The Deafult is : 7200 seconds = 120 Min = 2 Hrs before a inactivity warning will start logging.    �.   T h e   m a x i m i u m   n u m b e r   o f   s e c o n d s   b e f o r e   a   w a r n i n g   w i l l   s t a r t   a p p e a r i n g   f o r   a n   a l a r m   h e a r t b e a t .     I f   y o u   r e c e i v e   a n   i n a c t i v i t y   w a r n i n g ,   p l e a s e   c h e c k   t h e   b a t t e r i e s ,   a n d   t e s t   t h e   c o n t a c t s .   T h e   D e a f u l t   i s   :   7 2 0 0   s e c o n d s   =   1 2 0   M i n   =   2   H r s   b e f o r e   a   i n a c t i v i t y   w a r n i n g   w i l l   s t a r t   l o g g i n g .  l     �#�"�!�#  �"  �!    l     � �    6 0 Property usage comments follow item definitions    � `   P r o p e r t y   u s a g e   c o m m e n t s   f o l l o w   i t e m   d e f i n i t i o n s  j   � ��� 0 	use_growl 	Use_Growl m   � ��
� boovfals  l     ��   � � Use_Growl, if true, Growl notifications will be broadcast for any Opened / Closed events. If false, no Growl notifications will be sent.     �   U s e _ G r o w l ,   i f   t r u e ,   G r o w l   n o t i f i c a t i o n s   w i l l   b e   b r o a d c a s t   f o r   a n y   O p e n e d   /   C l o s e d   e v e n t s .   I f   f a l s e ,   n o   G r o w l   n o t i f i c a t i o n s   w i l l   b e   s e n t .    l     ����  �  �    !  l     "#$" j   � ��%� 40 growl_notifications_list Growl_Notifications_List% J   � �&& '(' m   � �)) �**  O p e n e d( +,+ m   � �-- �..  C l o s e d, /�/ m   � �00 �11  C h e c k   A l a r m�  # 8 2 List the Growl notifications that you wish to use   $ �22 d   L i s t   t h e   G r o w l   n o t i f i c a t i o n s   t h a t   y o u   w i s h   t o   u s e! 343 l     ����  �  �  4 565 l     7897 j   � ��:� :0 growl_enabled_notifications Growl_Enabled_Notifications: J   � �;; <=< m   � �>> �??  O p e n e d= @�@ m   � �AA �BB  C h e c k   A l a r m�  8 7 1 The default growl Notifications that are enabled   9 �CC b   T h e   d e f a u l t   g r o w l   N o t i f i c a t i o n s   t h a t   a r e   e n a b l e d6 DED l     ����  �  �  E FGF l     ����  �  �  G HIH l     �JK�  J   Advanced Settings   K �LL $   A d v a n c e d   S e t t i n g sI MNM j   � ��O� D0  send_email_on_inactive_heartbeat  Send_Email_on_Inactive_HeartbeatO m   � ��

�
 boovfalsN PQP l     �	RS�	  R a [ Send an email if the security Heartbeats have not been detected within the Watchdog value.   S �TT �   S e n d   a n   e m a i l   i f   t h e   s e c u r i t y   H e a r t b e a t s   h a v e   n o t   b e e n   d e t e c t e d   w i t h i n   t h e   W a t c h d o g   v a l u e .Q UVU l     ����  �  �  V WXW j   � ��Y� $0 se_ibeat_address SE_IBeat_AddressY J   � �ZZ [\[ m   � �]] �^^ & e x a m p l e @ e x a m p l e . c o m\ _�_ m   � �`` �aa ( e x a m p l e 2 @ e x a m p l e . c o m�  X bcb l     �de�  d F @ Send Email(s) to the following addresses, seperated by a comma.   e �ff �   S e n d   E m a i l ( s )   t o   t h e   f o l l o w i n g   a d d r e s s e s ,   s e p e r a t e d   b y   a   c o m m a .c ghg l     ��� �  �  �   h iji j   � ���k�� @0 update_heartbeat_after_actions Update_Heartbeat_After_Actionsk m   � ���
�� boovtruej lml l     ��no��  n � �  Update the heartbeat after every action.  Normal behavior is to not update Heartbeats after an action occurs.  This forces the heartbeat to update after every action of the device.   o �ppl     U p d a t e   t h e   h e a r t b e a t   a f t e r   e v e r y   a c t i o n .     N o r m a l   b e h a v i o r   i s   t o   n o t   u p d a t e   H e a r t b e a t s   a f t e r   a n   a c t i o n   o c c u r s .     T h i s   f o r c e s   t h e   h e a r t b e a t   t o   u p d a t e   a f t e r   e v e r y   a c t i o n   o f   t h e   d e v i c e .m qrq l     ��������  ��  ��  r sts j   � ���u�� (0 playsound_location PlaySound_Locationu m   � �vv �ww  / A p p l i c a t i o n s /t xyx l     ��������  ��  ��  y z{z l     |}~| j   � ����� 20 securitydeviceaddresses securityDeviceAddresses m   � ��� ��� 
 e m p t y} ) # automatically filled in at runtime   ~ ��� F   a u t o m a t i c a l l y   f i l l e d   i n   a t   r u n t i m e{ ��� l     ��������  ��  ��  � ��� l     ������  � b \--------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  �   Growl Support   � ���    G r o w l   S u p p o r t� ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 send_to_growl  � ��� o      ���� 0 sensor_name  � ���� o      ���� 0 action_name  ��  ��  � k     s�� ��� l     ������  � !  Send announcement to Growl   � ��� 6   S e n d   a n n o u n c e m e n t   t o   G r o w l� ��� O     ��� r    ��� ?    ��� l 	  ������ l   ������ I   �����
�� .corecnte****       ****� l   ������ 6   ��� 2    ��
�� 
prcs� =   ��� 1   	 ��
�� 
pnam� m    �� ���  G r o w l H e l p e r A p p��  ��  ��  ��  ��  ��  ��  � m    ����  � o      ���� 0 	isrunning 	isRunning� m     ��                                                                                  sevs  alis    �  Nerv_Central_Control       ��KH+  
�0�System Events.app                                              
�[2�7��        ����  	                CoreServices    ��      �8'7    
�0�
�0�
�0�  BNerv_Central_Control:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p  *  N e r v _ C e n t r a l _ C o n t r o l  -System/Library/CoreServices/System Events.app   / ��  � ��� Z    .������� =   ��� o    ���� 0 	isrunning 	isRunning� m    ��
�� boovfals� k     *�� ��� n    '��� I   ! '������� 0 log_security  � ��� m   ! "�� ��� � G r o w l   i s   n o t   r u n n i n g ,   p l e a s e   I n s t a l l   o r   T u r n   o n   G r o w l ,   o r   T u r n   o f f   G r o w l   N o t i f i c a t i o n s   i n   t h e   S e c u r i t y   S c r i p t� ���� o   " #���� 0 action_name  ��  ��  �  f     !� ���� L   ( *����  ��  ��  ��  � ���� O   / s��� k   3 r�� ��� l  3 3������  � 1 + Make a list of all the notification types    � ��� V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s  � ��� l  3 3������  � ' ! that this script will ever send:   � ��� B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d :� ��� r   3 :��� o   3 8���� 40 growl_notifications_list Growl_Notifications_List� l     ������ o      ���� ,0 allnotificationslist allNotificationsList��  ��  � ��� r   ; B��� o   ; @���� :0 growl_enabled_notifications Growl_Enabled_Notifications� l     ������ o      ���� 40 enablednotificationslist enabledNotificationsList��  ��  � ��� l  C C��������  ��  ��  � ��� I  C P�����
�� .registernull��� ��� null��  � ����
�� 
appl� l 	 E F������ m   E F�� ���  I n d i g o   S e c u r i t y��  ��  � ����
�� 
anot� l 
 G H������ o   G H���� ,0 allnotificationslist allNotificationsList��  ��  � ����
�� 
dnot� l 
 I J������ o   I J���� 40 enablednotificationslist enabledNotificationsList��  ��  � �����
�� 
iapp� m   K L�� ���  S c r i p t   E d i t o r��  � ��� l  Q Q��������  ��  ��  � ���� I  Q r�����
�� .notifygrnull��� ��� null��  � ����
�� 
name� l 	 U V������ o   U V���� 0 action_name  ��  ��  � ����
�� 
titl� b   Y `��� b   Y ^��� l 	 Y Z������ o   Y Z���� 0 sensor_name  ��  ��  � m   Z ]�� ���   � o   ^ _���� 0 action_name  � ��� 
�� 
desc� b   c j b   c h l 	 c d���� o   c d���� 0 sensor_name  ��  ��   m   d g �    o   h i���� 0 action_name    ����
�� 
appl m   k n		 �

  I n d i g o   S e c u r i t y��  ��  � m   / 0v                                                                                  GRRR  alis      Nerv_Central_Control       ��KH+  
�\GrowlHelperApp.app                                             
�x��        ����  	                	Resources     ��      ��_    
�\
�X
�W q~ h& L�  ��  pNerv_Central_Control:Users:benjamin:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p  *  N e r v _ C e n t r a l _ C o n t r o l  [Users/benjamin/Library/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app   /    ��  ��  �  l     ��������  ��  ��    l     ����   b \--------------------------------------------------------------------------------------------    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     ����     Find & Replace     �     F i n d   &   R e p l a c e    l     ����     find : Text to be found    � 0   f i n d   :   T e x t   t o   b e   f o u n d  l     �� ��   %  replace : Text to replace with     �!! >   r e p l a c e   :   T e x t   t o   r e p l a c e   w i t h "#" l     ��$%��  $ $  subject : Text to be searched   % �&& <   s u b j e c t   :   T e x t   t o   b e   s e a r c h e d# '(' i   � �)*) I      ��+���� 0 replacetext replaceText+ ,-, o      ���� 0 find  - ./. o      ���� 0 replace  / 0��0 o      ���� 0 subject  ��  ��  * k     &11 232 r     454 n    676 1    ��
�� 
txdl7 1     ��
�� 
ascr5 o      ���� 0 prevtids prevTIDs3 898 r    :;: o    ���� 0 find  ; n     <=< 1    
��
�� 
txdl= 1    ��
�� 
ascr9 >?> r    @A@ n    BCB 2   ��
�� 
citmC o    ���� 0 subject  A o      ���� 0 subject  ? DED l   ��������  ��  ��  E FGF r    HIH o    ���� 0 replace  I n     JKJ 1    ��
�� 
txdlK 1    ��
�� 
ascrG LML r    NON b    PQP m    RR �SS  Q o    ���� 0 subject  O o      �� 0 subject  M TUT r    #VWV o    �~�~ 0 prevtids prevTIDsW n     XYX 1     "�}
�} 
txdlY 1     �|
�| 
ascrU Z[Z l  $ $�{�z�y�{  �z  �y  [ \�x\ L   $ &]] o   $ %�w�w 0 subject  �x  ( ^_^ l     �v�u�t�v  �u  �t  _ `a` l     �sbc�s  b b \--------------------------------------------------------------------------------------------   c �dd � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -a efe l     �rgh�r  g ? 9 Compose the Text to be spoken for the Speak Alarm option   h �ii r   C o m p o s e   t h e   T e x t   t o   b e   s p o k e n   f o r   t h e   S p e a k   A l a r m   o p t i o nf jkj i   � �lml I      �qn�p�q  0 say_alarm_text Say_Alarm_Textn opo o      �o�o 0 sensor_name  p q�nq o      �m�m 
0 action  �n  �p  m k     krr sts Z     uv�l�ku =     wxw o     �j�j 
0 action  x m    yy �zz  O p e n e dv k    {{ |}| r    ~~ n   ��� 4    �i�
�i 
cobj� m    �h�h � o    �g�g (0 sensor_speech_text Sensor_Speech_Text o      �f�f 0 text_to_speak  } ��e� r    ��� I    �d��c�d 0 replacetext replaceText� ��� m    �� ���  % s� ��� o    �b�b 0 sensor_name  � ��a� o    �`�` 0 text_to_speak  �a  �c  � o      �_�_ 0 text_to_speak  �e  �l  �k  t ��� Z     ?���^�]� =     #��� o     !�\�\ 
0 action  � m   ! "�� ���  C l o s e d� k   & ;�� ��� r   & 0��� n  & .��� 4   + .�[�
�[ 
cobj� m   , -�Z�Z � o   & +�Y�Y (0 sensor_speech_text Sensor_Speech_Text� o      �X�X 0 text_to_speak  � ��W� r   1 ;��� I   1 9�V��U�V 0 replacetext replaceText� ��� m   2 3�� ���  % s� ��� o   3 4�T�T 0 sensor_name  � ��S� o   4 5�R�R 0 text_to_speak  �S  �U  � o      �Q�Q 0 text_to_speak  �W  �^  �]  � ��� Z   @ _���P�O� =   @ C��� o   @ A�N�N 
0 action  � m   A B�� ���  T i m e O u t� k   F [�� ��� r   F P��� n  F N��� 4   K N�M�
�M 
cobj� m   L M�L�L � o   F K�K�K (0 sensor_speech_text Sensor_Speech_Text� o      �J�J 0 text_to_speak  � ��I� r   Q [��� I   Q Y�H��G�H 0 replacetext replaceText� ��� m   R S�� ���  % s� ��� o   S T�F�F 0 sensor_name  � ��E� o   T U�D�D 0 text_to_speak  �E  �G  � o      �C�C 0 text_to_speak  �I  �P  �O  � ��B� I  ` k�A��
�A .sysottosnull���     TEXT� o   ` a�@�@ 0 text_to_speak  � �?��>
�? 
VOIC� o   b g�=�= 0 speech_voice Speech_Voice�>  �B  k ��� l     �<���<  � b \--------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �;���;  �   Time Support   � ���    T i m e   S u p p o r t� ��� l     �:�9�8�:  �9  �8  � ��� i   ���� I      �7�6�5�7 0 timestamp_str  �6  �5  � L     �� c     ��� l    ��4�3� I    �2�1�0
�2 .misccurdldt    ��� null�1  �0  �4  �3  � m    �/
�/ 
TEXT� ��� l     �.�-�,�.  �-  �,  � ��� i  ��� I      �+��*�+ 0 time_elapsed  � ��)� o      �(�( 0 td  �)  �*  � k     �� ��� l     �'���'  � > 8 Return the time lapsed from the Current Date in seconds   � ��� p   R e t u r n   t h e   t i m e   l a p s e d   f r o m   t h e   C u r r e n t   D a t e   i n   s e c o n d s� ��&� Z     ���%�� =    ��� o     �$�$ 0 td  � m    �#�#  � L    �� I   �"�!� 
�" .misccurdldt    ��� null�!  �   �%  � L    �� l   ���� \    ��� l   ���� I   ���
� .misccurdldt    ��� null�  �  �  �  � l   ���� 4    ��
� 
ldt � l   ���� o    �� 0 td  �  �  �  �  �  �  �&  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     �� �  � b \--------------------------------------------------------------------------------------------     � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -�  i  	 I      ��
� 20 _converthexstrtointeger _convertHexStrToInteger �	 o      �� 0 hexstr hexStr�	  �
   k     � 	
	 r      m      �   0 1 2 3 4 5 6 7 8 9 A B C D E F l     �� o      �� 0 hexlist hexList�  �  
  s    F o    �� 0 hexstr hexStr J        o      �� 0 a1    o      �� 0 a2    o      �� 	0 skip1    o      � �  0 b1    o      ���� 0 b2     o      ���� 	0 skip2    !"! o      ���� 0 c1  " #��# o      ���� 0 c2  ��   $%$ r   G T&'& \   G R()( l  G P*����* I  G P����+
�� .sysooffslong    ��� null��  + ��,-
�� 
psof, o   I J���� 0 a1  - ��.��
�� 
psin. o   K L���� 0 hexlist hexList��  ��  ��  ) m   P Q���� ' o      ���� 0 a1o  % /0/ r   U b121 \   U `343 l  U ^5����5 I  U ^����6
�� .sysooffslong    ��� null��  6 ��78
�� 
psof7 o   W X���� 0 a1  8 ��9��
�� 
psin9 o   Y Z���� 0 hexlist hexList��  ��  ��  4 m   ^ _���� 2 o      ���� 0 a1o  0 :;: r   c p<=< \   c n>?> l  c l@����@ I  c l����A
�� .sysooffslong    ��� null��  A ��BC
�� 
psofB o   e f���� 0 a2  C ��D��
�� 
psinD o   g h���� 0 hexlist hexList��  ��  ��  ? m   l m���� = o      ���� 0 a2o  ; EFE r   q ~GHG \   q |IJI l  q zK����K I  q z����L
�� .sysooffslong    ��� null��  L ��MN
�� 
psofM o   s t���� 0 b1  N ��O��
�� 
psinO o   u v���� 0 hexlist hexList��  ��  ��  J m   z {���� H o      ���� 0 b1o  F PQP r    �RSR \    �TUT l   �V����V I   �����W
�� .sysooffslong    ��� null��  W ��XY
�� 
psofX o   � ����� 0 b2  Y ��Z��
�� 
psinZ o   � ����� 0 hexlist hexList��  ��  ��  U m   � ����� S o      ���� 0 b2o  Q [\[ r   � �]^] \   � �_`_ l  � �a����a I  � �����b
�� .sysooffslong    ��� null��  b ��cd
�� 
psofc o   � ����� 0 c1  d ��e��
�� 
psine o   � ����� 0 hexlist hexList��  ��  ��  ` m   � ����� ^ o      ���� 0 c1o  \ fgf r   � �hih \   � �jkj l  � �l����l I  � �����m
�� .sysooffslong    ��� null��  m ��no
�� 
psofn o   � ����� 0 c2  o ��p��
�� 
psinp o   � ����� 0 hexlist hexList��  ��  ��  k m   � ����� i o      ���� 0 c2o  g qrq r   � �sts ]   � �uvu ]   � �wxw m   � ����� x m   � ����� v l  � �y����y [   � �z{z ]   � �|}| o   � ����� 0 a1o  } m   � ����� { o   � ����� 0 a2o  ��  ��  t o      ���� 0 val  r ~~ r   � ���� [   � ���� o   � ����� 0 val  � ]   � ���� m   � ����� � l  � ������� [   � ���� ]   � ���� o   � ����� 0 b1o  � m   � ����� � o   � ����� 0 b2o  ��  ��  � o      ���� 0 val   ��� r   � ���� [   � ���� [   � ���� o   � ����� 0 val  � ]   � ���� o   � ����� 0 c1o  � m   � ����� � o   � ����� 0 c2o  � o      ���� 0 val  � ���� L   � ��� o   � ����� 0 val  ��   ��� l     ������  � b \--------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� i  
��� I      ������� 0 	send_mail  � ��� o      ���� 0 rec  � ��� o      ���� 0 sub  � ���� o      ���� 0 msg  ��  ��  � k     7�� ��� l     ������  � H B Send an Email, to the recipent, with Subject, and msg as the body   � ��� �   S e n d   a n   E m a i l ,   t o   t h e   r e c i p e n t ,   w i t h   S u b j e c t ,   a n d   m s g   a s   t h e   b o d y� ���� O     7��� k    6�� ��� r    ��� I   �����
�� .corecrel****      � null��  � �����
�� 
kocl� m    ��
�� 
bcke��  � o      ���� 0 x  � ��� O    0��� k    /�� ��� I   #�����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
trcp� ����
�� 
insh� n    ���  ;    � 2   ��
�� 
trcp� �����
�� 
prdt� K    �� ���~
� 
radd� o    �}�} 0 rec  �~  ��  � ��� r   $ )��� o   $ %�|�| 0 sub  � 1   % (�{
�{ 
subj� ��z� r   * /��� o   * +�y�y 0 msg  � 1   + .�x
�x 
ctnt�z  � o    �w�w 0 x  � ��v� I  1 6�u��t
�u .emsgsendbool        bcke� o   1 2�s�s 0 x  �t  �v  � m     ���                                                                                  emal  alis    \  Nerv_Central_Control       ��KH+  
�0�Mail.app                                                       
��Ǝ��        ����  	                Applications    ��      Ǝ�    
�0�  *Nerv_Central_Control:Applications:Mail.app    M a i l . a p p  *  N e r v _ C e n t r a l _ C o n t r o l  Applications/Mail.app   / ��  ��  � ��� l     �r�q�p�r  �q  �p  � ��� w      ��� k      �� ��� i  ��� I      �o��n�o 0 read_indigo_variable  � ��� o      �m�m 0 variable_name  � ��l� o      �k�k 0 default_val  �l  �n  � k     )�� ��� l     �j���j  � k e Read variable_name from Indigo's internal variable table.  Create the variable if it does not exist.   � ��� �   R e a d   v a r i a b l e _ n a m e   f r o m   I n d i g o ' s   i n t e r n a l   v a r i a b l e   t a b l e .     C r e a t e   t h e   v a r i a b l e   i f   i t   d o e s   n o t   e x i s t .� ��� Z     ���i�h� H     	�� l    ��g�f� I    �e��d
�e .coredoexbool        obj � 4     �c�
�c 
Vrbl� l   ��b�a� o    �`�` 0 variable_name  �b  �a  �d  �g  �f  � I   �_�^�
�_ .corecrel****      � null�^  � �]��
�] 
kocl� m    �\
�\ 
Vrbl� �[��Z
�[ 
prdt� K    �� �Y��
�Y 
pnam� o    �X�X 0 variable_name  � �W��V
�W 
Valu� l   ��U�T� c    ��� o    �S�S 0 default_val  � m    �R
�R 
TEXT�U  �T  �V  �Z  �i  �h  � ��Q� L   ! )�� e   ! (�� n   ! (��� 1   % '�P
�P 
Valu� l  ! %��O�N� 4   ! %�M 
�M 
Vrbl  l  # $�L�K o   # $�J�J 0 variable_name  �L  �K  �O  �N  �Q  �  l     �I�H�G�I  �H  �G    i   I      �F�E�F 0 set_variable   	
	 o      �D�D 0 variable_name  
 �C o      �B�B 0 variable_value  �C  �E   k     )  l     �A�A   5 / Set variable name into Indigo's variable table    � ^   S e t   v a r i a b l e   n a m e   i n t o   I n d i g o ' s   v a r i a b l e   t a b l e �@ Z     )�? H     	 l    �>�= I    �<�;
�< .coredoexbool        obj  4     �:
�: 
Vrbl l   �9�8 o    �7�7 0 variable_name  �9  �8  �;  �>  �=   I   �6�5
�6 .corecrel****      � null�5   �4
�4 
kocl m    �3
�3 
Vrbl �2�1
�2 
prdt K     �0 !
�0 
pnam  o    �/�/ 0 variable_name  ! �."�-
�. 
Valu" l   #�,�+# c    $%$ o    �*�* 0 variable_value  % m    �)
�) 
TEXT�,  �+  �-  �1  �?   r    )&'& l   "(�(�'( c    ")*) o     �&�& 0 variable_value  * m     !�%
�% 
TEXT�(  �'  ' n      +,+ 1   & (�$
�$ 
Valu, l  " &-�#�"- 4   " &�!.
�! 
Vrbl. l  $ %/� �/ o   $ %�� 0 variable_name  �   �  �#  �"  �@   010 l     ����  �  �  1 232 i  454 I      �6�� 0 log_security  6 787 o      �� 0 log_text  8 9�9 o      �� 0 action_name  �  �  5 k     	:: ;<; l     �=>�  = = 7 Write Log_Text to the Indigo Log with the Security Tag   > �?? n   W r i t e   L o g _ T e x t   t o   t h e   I n d i g o   L o g   w i t h   t h e   S e c u r i t y   T a g< @�@ I    	�AB
� .INDOLog null���    utf8A c     CDC o     �� 0 log_text  D m    �
� 
TEXTB �E�
� 
LgTyE m    FF �GG  S e c u r i t y�  �  3 HIH l     ����  �  �  I JKJ i  LML I      �N�
� 0 check_heartbeats  N O�	O o      �� 0 growl_enabled  �	  �
  M k     �PP QRQ l     �ST�  S   Check to see    T �UU    C h e c k   t o   s e e  R VWV r     XYX m     ZZ �[[  Y o      �� 0 msg  W \]\ X    �^�_^ Z    �`a��` =   bcb n    ded 4    �f
� 
cobjf m    �� e o    � �  0 x  c m    ��
�� boovtruea k   ! �gg hih r   ! +jkj b   ! )lml l  ! 'n����n c   ! 'opo l  ! %q����q n   ! %rsr 4   " %��t
�� 
cobjt m   # $���� s o   ! "���� 0 x  ��  ��  p m   % &��
�� 
TEXT��  ��  m m   ' (uu �vv  _ l a s t _ u p d a t ek o      ���� 0 variable_name  i wxw l  , ,��������  ��  ��  x yzy l  , ,��{|��  { ; 5			set v to my read_indigo_variable(variable_name, 0)   | �}} j 	 	 	 s e t   v   t o   m y   r e a d _ i n d i g o _ v a r i a b l e ( v a r i a b l e _ n a m e ,   0 )z ~~ r   , :��� n  , 8��� I   - 8������� 0 time_elapsed  � ���� I   - 4������� 0 read_indigo_variable  � ��� o   . /���� 0 variable_name  � ���� m   / 0����  ��  ��  ��  ��  �  f   , -� o      ���� 0 dt   ���� Z   ; �������� l  ; B������ ?  ; B��� o   ; <���� 0 dt  � o   < A���� >0 inactivity_heartbeat_watchdog Inactivity_Heartbeat_Watchdog��  ��  � k   E ��� ��� r   E P��� b   E N��� b   E L��� b   E H��� o   E F���� 0 variable_name  � m   F G�� ��� H   m a y   n o t   b e   a c t i v e .     I n a c t i v i t y   f o r  � _   H K��� o   H I���� 0 dt  � m   I J���� <� m   L M�� ���    m i n u t e s .� o      ���� 0 log_msg  � ��� n  Q X��� I   R X������� 0 log_security  � ��� o   R S���� 0 log_msg  � ���� m   S T�� ���  ��  ��  �  f   Q R� ��� Z  Y y������� o   Y ^���� 0 	use_growl 	Use_Growl� Z  a u������� o   a b���� 0 growl_enabled  � n  e q��� I   f q������� 0 send_to_growl  � ��� c   f l��� l  f j������ n   f j��� 4   g j���
�� 
cobj� m   h i���� � o   f g���� 0 x  ��  ��  � m   j k��
�� 
TEXT� ���� m   l m�� ���  C h e c k   A l a r m��  ��  �  f   e f��  ��  ��  ��  � ���� r   z ���� b   z ���� b   z }��� o   z {���� 0 msg  � o   { |���� 0 log_msg  � o   } ���
�� 
ret � o      ���� 0 msg  ��  ��  ��  ��  �  �  � 0 x  _ o    ���� 0 alarm_matrix Alarm_Matrix] ��� l  � ���������  ��  ��  � ��� Z   � �������� o   � ����� D0  send_email_on_inactive_heartbeat  Send_Email_on_Inactive_Heartbeat� Z   � �������� H   � ��� l  � ������� =   � ���� o   � ����� 0 msg  � m   � ��� ���  ��  ��  � X   � ������ k   � ��� ��� n  � ���� I   � �������� 0 log_security  � ��� b   � ���� m   � ��� ��� B S e n d i n g   H e a r t B e a t   A l e r t   e m a i l   t o  � o   � ����� 0 x  � ���� m   � ��� ���  ��  ��  �  f   � �� ���� n  � ���� I   � �������� 0 	send_mail  � ��� o   � ����� 0 x  � ��� m   � ��� ��� V S e c u r i t y   S e n s o r   H e a r t B e a t   I n a c t i v i t y   R e p o r t� ���� o   � ����� 0 msg  ��  ��  �  f   � ���  �� 0 x  � o   � ����� $0 se_ibeat_address SE_IBeat_Address��  ��  ��  ��  � ���� n  � ���� I   � �������� 0 set_variable  � ��� m   � ��� ��� $ C h e c k e d _ H e a r t b e a t s� ���� n  � ���� I   � ��������� 0 timestamp_str  ��  ��  �  f   � ���  ��  �  f   � ���  K ��� l     ��������  ��  ��  � ��� i  !� � I      ������ 0 unrecognized_sensor    o      ���� 0 	eventtype 	eventType �� o      ���� 0 	device_id 	device_ID��  ��    k     �  l     ��	��   [ U Didn't find it in our Alarm_Matrix; populate the variables some reasonable defaults.   	 �

 �   D i d n ' t   f i n d   i t   i n   o u r   A l a r m _ M a t r i x ;   p o p u l a t e   t h e   v a r i a b l e s   s o m e   r e a s o n a b l e   d e f a u l t s .  r      m      � & U n r e c o g n i z e d _ S e n s o r o      ���� 0 sensor_name    r     m     �   o      ���� 0 action_name    r     m    	��
�� boovfals o      ���� 0 action_bool    r     m    ��
�� boovfals o      ���� 0 growling     r    !"! m    ��
�� boovfals" o      ���� 0 chiming    #$# r    %&% m    '' �((  & o      ���� 0 chime_device  $ )*) r    +,+ m    ��
�� boovfals, o      ���� 0 
sound_file  * -.- r    /0/ m    ��
�� boovfals0 o      ���� 0 heartbeat_monitor  . 121 r     #343 m     !��
�� boovfals4 o      ���� 0 action_group  2 565 l  $ $��������  ��  ��  6 787 l  $ $��9:��  9 Y Smy log_security("(device ID " & device_ID & ")") --using type "UnRegistered Sensor"   : �;; � m y   l o g _ s e c u r i t y ( " ( d e v i c e   I D   "   &   d e v i c e _ I D   &   " ) " )   - - u s i n g   t y p e   " U n R e g i s t e r e d   S e n s o r "8 <=< n  $ +>?> I   % +��@���� 0 log_security  @ ABA m   % &CC �DD � S e c u r i t y   d e v i c e   i s   n o t   d e f i n e d   i n   ' s e c u r i t y   s a m p l e . s c p t '   A l a r m _ M a t r i x   p r o p e r t y .B E��E m   & 'FF �GG  ��  ��  ?  f   $ %= HIH n  , 3JKJ I   - 3��L���� 0 log_security  L MNM m   - .OO �PP � P l e a s e   a d d   a   n e w   l i n e   t o   t h e   A l a r m _ M a t r i x   p r o p e r t y   a t   t h e   t o p   o f   t h a t   f i l eN Q��Q m   . /RR �SS  ��  ��  K  f   , -I TUT n  4 ?VWV I   5 ?��X���� 0 log_security  X YZY b   5 :[\[ b   5 8]^] m   5 6__ �`` , w i t h   t h e   D e v i c e   I D   o f  ^ o   6 7���� 0 	device_id 	device_ID\ m   8 9aa �bb  .Z c��c m   : ;dd �ee  ��  ��  W  f   4 5U fgf n  @ Nhih I   A N��j��� 0 log_security  j klk b   A Imnm m   A Boo �pp    E v e n t   T y p e   -  n I   B H�~q�}�~ 0 str  q r�|r o   C D�{�{ 0 	eventtype 	eventType�|  �}  l s�zs m   I Jtt �uu  �z  �  i  f   @ Ag vwv r   O Rxyx m   O P�y
�y boovtruey o      �x�x 0 alarm_detected  w z{z l  S S�w�v�u�w  �v  �u  { |}| Z   S �~��t~ G   S `��� =  S V��� o   S T�s�s 0 	eventtype 	eventType� m   T U�r
�r EnXSxSs1� =  Y \��� o   Y Z�q�q 0 	eventtype 	eventType� m   Z [�p
�p EnXSxSs2 k   c l�� ��� r   c h��� m   c f�� ���  C l o s e d� o      �o�o 0 action_name  � ��n� r   i l��� m   i j�m
�m boovfals� o      �l�l 0 action_bool  �n  � ��� G   o ���� =  o t��� o   o p�k�k 0 	eventtype 	eventType� m   p s�j
�j EnXSxSs3� =  w |��� o   w x�i�i 0 	eventtype 	eventType� m   x {�h
�h EnXSxSs4� ��g� k   � ��� ��� r   � ���� m   � ��� ���  O p e n e d� o      �f�f 0 action_name  � ��e� r   � ���� m   � ��d
�d boovtrue� o      �c�c 0 action_bool  �e  �g  �t  } ��b� L   � ��� J   � ��� ��� m   � ��a
�a boovfals� ��� o   � ��`�` 0 sensor_name  � ��� o   � ��_�_ 0 action_name  � ��� o   � ��^�^ 0 action_bool  � ��� o   � ��]�] 0 growling  � ��� o   � ��\�\ 0 chiming  � ��� o   � ��[�[ 0 chime_device  � ��� o   � ��Z�Z 0 
sound_file  � ��� o   � ��Y�Y 0 heartbeat_monitor  � ��X� o   � ��W�W 0 action_group  �X  �b  � ��� l     �V�U�T�V  �U  �T  � ��� i  "%��� I      �S��R�S 0 decode_security  � ��� o      �Q�Q 0 	eventtype 	eventType� ��P� o      �O�O 0 	device_id 	device_ID�P  �R  � k    ��� ��� l     �N���N  � X R Will take the eventType, and device_ID and decode it and return the decoded data.   � ��� �   W i l l   t a k e   t h e   e v e n t T y p e ,   a n d   d e v i c e _ I D   a n d   d e c o d e   i t   a n d   r e t u r n   t h e   d e c o d e d   d a t a .� ��� l     �M���M  � D > found_in_matrix 	- boolean 	- true = found, false = not found   � ��� |   f o u n d _ i n _ m a t r i x   	 -   b o o l e a n   	 -   t r u e   =   f o u n d ,   f a l s e   =   n o t   f o u n d� ��� l     �L���L  � B < sensor_name     	- string  		- defined name in alarm_matrix   � ��� x   s e n s o r _ n a m e           	 -   s t r i n g     	 	 -   d e f i n e d   n a m e   i n   a l a r m _ m a t r i x� ��� l     �K���K  � 6 0 action_name	  	- string  		- "Open" or "Closed"   � ��� `   a c t i o n _ n a m e 	     	 -   s t r i n g     	 	 -   " O p e n "   o r   " C l o s e d "� ��� l     �J���J  � B < action_bool     		- string  		- true = open, false = closed   � ��� x   a c t i o n _ b o o l           	 	 -   s t r i n g     	 	 -   t r u e   =   o p e n ,   f a l s e   =   c l o s e d� ��� l     �I���I  � b \ growling        		- boolean 	- true = growl message enabled, false = growl message disabled   � ��� �   g r o w l i n g                 	 	 -   b o o l e a n   	 -   t r u e   =   g r o w l   m e s s a g e   e n a b l e d ,   f a l s e   =   g r o w l   m e s s a g e   d i s a b l e d� ��� l     �H���H  � R L chiming         		- boolean 	- true = chime enabled, false = chime disabled   � ��� �   c h i m i n g                   	 	 -   b o o l e a n   	 -   t r u e   =   c h i m e   e n a b l e d ,   f a l s e   =   c h i m e   d i s a b l e d� ��� l     �G���G  � X R chime_device    		- string  		- device id for Chime device as set in alarm_matrix   � ��� �   c h i m e _ d e v i c e         	 	 -   s t r i n g     	 	 -   d e v i c e   i d   f o r   C h i m e   d e v i c e   a s   s e t   i n   a l a r m _ m a t r i x� ��� l     �F���F  � "  Ignore_Device 		- Boolean -   � ��� 8   I g n o r e _ D e v i c e   	 	 -   B o o l e a n   -� ��� l     �E���E  � &   Sound File		- Boolean / String.   � ��� @   S o u n d   F i l e 	 	 -   B o o l e a n   /   S t r i n g .� ��� l     �D���D  � #  Heartbeat_monitor 	- Boolean   � ��� :   H e a r t b e a t _ m o n i t o r   	 -   B o o l e a n� ��� l     �C�B�A�C  �B  �A  � ��� l     �@�?�>�@  �?  �>  �    X    ��= Z   }�<�; =    o    �:�: 0 	device_id 	device_ID n   	 4    �9

�9 
cobj
 m    �8�8 	 o    �7�7 0 	alarmdata   k   y  l   �6�6      The Device has been found    � 4   T h e   D e v i c e   h a s   b e e n   f o u n d  l   �5�4�3�5  �4  �3    r    & n   $ I    $�2�1�2 0 read_indigo_variable    m     � . I g n o r e _ S e c u r i t y _ S e n s o r s �0 m     �/
�/ boovtrue�0  �1    f     o      �.�. 0 ignoresensor IgnoreSensor   Z  ' 7!"�-�,! =  ' *#$# o   ' (�+�+ 0 ignoresensor IgnoreSensor$ m   ( )�*
�* boovfals" r   - 3%&% n  - 1'(' 4   . 1�))
�) 
cobj) m   / 0�(�( ( o   - .�'�' 0 	alarmdata  & o      �&�& 0 ignoresensor IgnoreSensor�-  �,    *+* l  8 8�%�$�#�%  �$  �#  + ,-, Z  8 D./�"�!. =  8 ;010 o   8 9� �  0 ignoresensor IgnoreSensor1 m   9 :�
� boovtrue/ L   > @22 m   > ?�
� boovfals�"  �!  - 343 l  E E�56�  5 , &  The device is flagged to be ignored.   6 �77 L     T h e   d e v i c e   i s   f l a g g e d   t o   b e   i g n o r e d .4 898 l  E E����  �  �  9 :;: l  E E����  �  �  ; <=< r   E K>?> n  E I@A@ 4   F I�B
� 
cobjB m   G H�� A o   E F�� 0 	alarmdata  ? o      �� 0 sensor_name  = CDC Z   L5EFGHE G   L _IJI G   L WKLK =  L OMNM o   L M�� 0 	eventtype 	eventTypeN m   M N�
� EnITxF03L =  R UOPO o   R S�� 0 	eventtype 	eventTypeP m   S T�
� EnXSxSs1J =  Z ]QRQ o   Z [�� 0 	eventtype 	eventTypeR m   [ \�
� EnXSxSs2F k   b iSS TUT r   b eVWV m   b cXX �YY  C l o s e dW o      �� 0 action_name  U Z�Z r   f i[\[ m   f g�

�
 boovfals\ o      �	�	 0 action_bool  �  G ]^] G   l _`_ G   l waba =  l ocdc o   l m�� 0 	eventtype 	eventTyped m   m n�
� EnITxF02b =  r uefe o   r s�� 0 	eventtype 	eventTypef m   s t�
� EnXSxSs3` =  z }ghg o   z {�� 0 	eventtype 	eventTypeh m   { |�
� EnXSxSs4^ iji k   � �kk lml r   � �non m   � �pp �qq  O p e n e do o      �� 0 action_name  m r�r r   � �sts m   � �� 
�  boovtruet o      ���� 0 action_bool  �  j uvu G   � �wxw =  � �yzy o   � ����� 0 	eventtype 	eventTypez m   � ���
�� EnXSxSa1x =  � �{|{ o   � ����� 0 	eventtype 	eventType| m   � ���
�� EnXSxSa2v }~} k   � � ��� r   � ���� m   � ��� ���  H o m e   A r m e d� o      ���� 0 action_name  � ���� r   � ���� m   � ���
�� boovtrue� o      ���� 0 action_bool  ��  ~ ��� G   � ���� =  � ���� o   � ����� 0 	eventtype 	eventType� m   � ���
�� EnXSxSa3� =  � ���� o   � ����� 0 	eventtype 	eventType� m   � ���
�� EnXSxSa4� ��� k   � ��� ��� r   � ���� m   � ��� ���  A w a y   A r m e d� o      ���� 0 action_name  � ���� r   � ���� m   � ���
�� boovtrue� o      ���� 0 action_bool  ��  � ��� =  � ���� o   � ����� 0 	eventtype 	eventType� m   � ���
�� EnXSxSda� ��� k   � ��� ��� r   � ���� m   � ��� ���  D i s a r m� o      ���� 0 action_name  � ���� r   � ���� m   � ���
�� boovfals� o      ���� 0 action_bool  ��  � ��� =  � ���� o   � ����� 0 	eventtype 	eventType� m   � ���
�� EnXSxSlf� ��� k   � ��� ��� r   � ���� m   � ��� ���  L i g h t s   O f f� o      ���� 0 action_name  � ���� r   � ���� m   � ���
�� boovfals� o      ���� 0 action_bool  ��  � ��� =  � ���� o   � ����� 0 	eventtype 	eventType� m   � ���
�� EnXSxSlo� ��� k   � ��� ��� r   � ���� m   � ��� ���  L i g h t s   O n� o      ���� 0 action_name  � ���� r   � ���� m   � ���
�� boovtrue� o      ���� 0 action_bool  ��  � ��� = ��� o  ���� 0 	eventtype 	eventType� m  ��
�� EnXSxSpa� ��� k  
�� ��� r  
��� m  
�� ��� 
 P a n i c� o      ���� 0 action_name  � ���� r  ��� m  ��
�� boovtrue� o      ���� 0 action_bool  ��  � ��� = ��� o  ���� 0 	eventtype 	eventType� m  ��
�� EnXSxSpr� ���� k  '�� ��� r  #��� m  !�� ��� 
 P a n i c� o      ���� 0 action_name  � ���� r  $'��� m  $%��
�� boovfals� o      ���� 0 action_bool  ��  ��  H k  *5�� ��� r  *1��� b  */��� m  *-�� ��� & U n k n o w n   S e c u r i t y   -  � o  -.���� 0 	eventtype 	eventType� o      ���� 0 action_name  � ���� r  25��� m  23��
�� boovfals� o      ���� 0 action_bool  ��  D ��� r  6<��� n 6:��� 4  7:���
�� 
cobj� m  89���� � o  67���� 0 	alarmdata  � o      ���� 0 growling  � � � r  =E n =C 4  >C��
�� 
cobj m  ?B����  o  =>���� 0 	alarmdata   o      ���� 0 chiming     r  FN	 n FL

 4  GL��
�� 
cobj m  HK����  o  FG���� 0 	alarmdata  	 o      ���� 0 chime_device    r  OW n OU 4  PU��
�� 
cobj m  QT����  o  OP���� 0 	alarmdata   o      ���� 0 
sound_file    r  X` n X^ 4  Y^��
�� 
cobj m  Z]����  o  XY���� 0 	alarmdata   o      ���� 0 heartbeat_monitor    r  ai n ag  4  bg��!
�� 
cobj! m  cf���� 	  o  ab���� 0 	alarmdata   o      ���� 0 action_group   "��" L  jy## J  jx$$ %&% m  jk��
�� boovtrue& '(' o  kl���� 0 sensor_name  ( )*) o  lm���� 0 action_name  * +,+ o  mn���� 0 action_bool  , -.- o  no���� 0 growling  . /0/ o  op���� 0 chiming  0 121 o  pq���� 0 chime_device  2 343 o  qr���� 0 
sound_file  4 565 o  rs���� 0 heartbeat_monitor  6 7��7 o  st���� 0 action_group  ��  ��  �<  �;  �= 0 	alarmdata   o    ���� 0 alarm_matrix Alarm_Matrix 8��8 L  ��99 n ��:;: I  ����<���� 0 unrecognized_sensor  < =>= o  ������ 0 	eventtype 	eventType> ?��? o  ������ 0 	device_id 	device_ID��  ��  ;  f  ����  � @A@ l     ��������  ��  ��  A BCB i  &)DED I      ��F���� 0 sound_chime  F GHG o      ���� 0 
soundchime 
SoundChimeH I��I o      ���� 0 chime_device  ��  ��  E Z     EJK����J =    LML o     ���� 0 
soundchime 
SoundChimeM m    ��
�� boovtrueK Q    ANOPN I  	 ��QR
�� .INDOOn  null���    utf8Q o   	 
���� 0 chime_device  R ��ST
�� 
DuraS m    ���� T ��U��
�� 
DelyU m    VV ?�      ��  O R      ����W
�� .ascrerr ****      � ****��  W ��X��
�� 
errnX o      ���� 0 errnum errNum��  P Z    AYZ����Y =   [\[ o    ���� 0 errnum errNum\ m    �����@Z k     =]] ^_^ n    '`a` I   ! '��b���� 0 log_security  b cdc m   ! "ee �ff � T h e   C h i m e   D e v i c e   d e f i n e d   i n   t h e   A l a r m _ M a t r i x   p r o p e r t y   d o e s   n o t   e x i s t .d g��g m   " #hh �ii  ��  ��  a  f     !_ jkj n  ( 3lml I   ) 3��n���� 0 log_security  n opo b   ) .qrq b   ) ,sts m   ) *uu �vv T C r e a t e   a   n e w   I n d i g o   D e v i c e   w i t h   t h e   n a m e   "t o   * +�� 0 chime_device  r m   , -ww �xx  " ,   o r   m o d i f yp y�~y m   . /zz �{{  �~  ��  m  f   ( )k |�}| n  4 =}~} I   5 =�|�{�| 0 log_security   ��� m   5 6�� ��� � t h e   A l a r m _ M a t r i x   p r o p e r t y   a t   t h e   t o p   o f   t h e   ' s e c u r i t y   s a m p l e . s c p t '   f i l e .� ��z� m   6 9�� ���  �z  �{  ~  f   4 5�}  ��  ��  ��  ��  C ��� l     �y�x�w�y  �x  �w  � ��� i  *-��� I      �v��u�v 0 do_chime  � ��� o      �t�t 0 chime_enabled  � ��� o      �s�s 0 action_bool  � ��r� o      �q�q 0 chime_device  �r  �u  � k     ��� ��� Z    ���p�o� F     ��� o     �n�n (0 chime_only_on_open Chime_Only_On_Open� =    ��� o    	�m�m 0 action_bool  � m   	 
�l
�l boovfals� r    ��� m    �k
�k boovfals� o      �j�j 0 chime_enabled  �p  �o  � ��i� Z    ����h�� o    �g�g 0 chime_enabled  � Z    ����f�e� =    %��� I    #�d��c�d 0 read_indigo_variable  � ��� m    �� ��� * T i m e r _ C h i m e _ A v a i l a b l e� ��b� m    �� ���  0�b  �c  � m   # $�� ���  0� k   ( ��� ��� n  ( 3��� I   ) 3�a��`�a 0 set_variable  � ��� l  ) *��_�^� m   ) *�� ��� $ C h i m e _ L a s t _ S o u n d e d�_  �^  � ��]� n  * /��� I   + /�\�[�Z�\ 0 timestamp_str  �[  �Z  �  f   * +�]  �`  �  f   ( )� ��� n  4 A��� I   5 A�Y��X�Y 0 set_variable  � ��� m   5 6�� ��� * T i m e r _ C h i m e _ A v a i l a b l e� ��W� ]   6 =��� o   6 ;�V�V "0 chime_min_delay Chime_Min_delay� m   ; <�U�U <�W  �X  �  f   4 5� ��� r   B K��� n  B I��� I   C I�T��S�T 0 read_indigo_variable  � ��� m   C D�� ���  S o u n d C h i m e� ��R� m   D E�Q
�Q boovtrue�R  �S  �  f   B C� o      �P�P 0 soundchimestr soundChimeStr� ��� l  L L�O���O  � Q Kif Chime_Only_On_Open is false or action_bool then set soundChimeStr to "0"   � ��� � i f   C h i m e _ O n l y _ O n _ O p e n   i s   f a l s e   o r   a c t i o n _ b o o l   t h e n   s e t   s o u n d C h i m e S t r   t o   " 0 "� ��N� Z   L ����M�� G   L _��� G   L W��� =  L O��� o   L M�L�L 0 soundchimestr soundChimeStr� m   M N�� ���  t r u e� =  R U��� o   R S�K�K 0 soundchimestr soundChimeStr� m   S T�� ���  T r u e� =  Z ]��� o   Z [�J�J 0 soundchimestr soundChimeStr� m   [ \�� ���  1� n  b i��� I   c i�I��H�I 0 sound_chime  � ��� m   c d�G
�G boovtrue� ��F� o   d e�E�E 0 chime_device  �F  �H  �  f   b c�M  � k   l ��� ��� Z  l ����D�C� =  l s��� o   l q�B�B &0 disable_chime_log Disable_Chime_Log� m   q r�A
�A boovfals� n  v ��� I   w �@��?�@ 0 log_security  � �	 � m   w x		 �		 N C h i m e   s u p r e s s e d   d u e   t o   M i n .   C h i m e   T i m e r	  	�>	 m   x {		 �		  �>  �?  �  f   v w�D  �C  � 	�=	 r   � �			 m   � ��<
�< boovfals	 o      �;�; 0 
soundchime 
SoundChime�=  �N  �f  �e  �h  � Z  � �			
�:�9		 =  � �			 o   � ��8�8 &0 disable_chime_log Disable_Chime_Log	 m   � ��7
�7 boovfals	
 n  � �			 I   � ��6	�5�6 0 log_security  	 			 m   � �		 �		 h C h i m e   s u p r e s s e d   d u e   t o   c h i m e _ e n a b l e d   b e i n g   d i s a b l e d .	 	�4	 m   � �		 �		  �4  �5  	  f   � ��:  �9  �i  � 			 l     �3�2�1�3  �2  �1  	 			 i  .1			 I      �0	�/�0 0 play_sound_file  	 			 o      �.�. 0 soundfile_to_play  	 	 �-	  o      �,�, 0 action_bool  �-  �/  	 k     0	!	! 	"	#	" n    	$	%	$ I    �+	&�*�+ 0 log_security  	& 	'	(	' o    �)�) 0 soundfile_to_play  	( 	)�(	) m    	*	* �	+	+  �(  �*  	%  f     	# 	,�'	, Z    0	-	.�&�%	- F    	/	0	/ H    	1	1 l   	2�$�#	2 =   	3	4	3 o    	�"�" 0 soundfile_to_play  	4 m   	 
�!
�! boovfals�$  �#  	0 o    � �  0 action_bool  	. k    ,	5	5 	6	7	6 n   	8	9	8 I    �	:�� 0 log_security  	: 	;	<	; m    	=	= �	>	> 2 P l a y i n g   c u s t o m   S o u n d   f i l e	< 	?�	? m    	@	@ �	A	A  �  �  	9  f    	7 	B�	B I   ,�	C�
� .sysoexecTEXT���     TEXT	C b    (	D	E	D b    &	F	G	F b    $	H	I	H m    	J	J �	K	K  o p e n   - a  	I o    #�� (0 playsound_location PlaySound_Location	G m   $ %	L	L �	M	M   P l a y \   S o u n d . a p p  	E o   & '�� 0 soundfile_to_play  �  �  �&  �%  �'  	 	N	O	N l     ����  �  �  	O 	P�	P i  25	Q	R	Q I      �	S�� 0 do_security_event  	S 	T	U	T o      �� 0 	eventtype 	eventType	U 	V�	V o      �� 0 devid devID�  �  	R k    �	W	W 	X	Y	X r     	Z	[	Z m     �
� boovfals	[ o      �� 0 found_in_matrix  	Y 	\	]	\ l   ���
�  �  �
  	] 	^	_	^ r    	`	a	` n   	b	c	b I    �		d��	 0 decode_security  	d 	e	f	e o    �� 0 	eventtype 	eventType	f 	g�	g o    �� 0 devid devID�  �  	c  f    	a o      �� 0 decoded_data  	_ 	h	i	h l   �	j	k�  	j h b found_in_matrix, sensor_name, action_name, action_bool, growl_enabled, chime_device, chime_device   	k �	l	l �   f o u n d _ i n _ m a t r i x ,   s e n s o r _ n a m e ,   a c t i o n _ n a m e ,   a c t i o n _ b o o l ,   g r o w l _ e n a b l e d ,   c h i m e _ d e v i c e ,   c h i m e _ d e v i c e	i 	m	n	m l   ��� �  �  �   	n 	o	p	o Z   	q	r����	q =   	s	t	s n    	u	v	u 4    ��	w
�� 
cobj	w m    ���� 	v o    ���� 0 decoded_data  	t m    ��
�� boovfals	r L    ����  ��  ��  	p 	x	y	x l   ��	z	{��  	z   Sensor is to be ignored.   	{ �	|	| 2   S e n s o r   i s   t o   b e   i g n o r e d .	y 	}	~	} l   ��������  ��  ��  	~ 		�	 r    $	�	�	� n    "	�	�	� 4    "��	�
�� 
cobj	� m     !���� 	� o    ���� 0 decoded_data  	� o      ���� 0 found_in_matrix  	� 	�	�	� r   % +	�	�	� n   % )	�	�	� 4   & )��	�
�� 
cobj	� m   ' (���� 	� o   % &���� 0 decoded_data  	� o      ���� 0 sensor_name  	� 	�	�	� r   , 2	�	�	� n   , 0	�	�	� 4   - 0��	�
�� 
cobj	� m   . /���� 	� o   , -���� 0 decoded_data  	� o      ���� 0 action_name  	� 	�	�	� r   3 9	�	�	� n   3 7	�	�	� 4   4 7��	�
�� 
cobj	� m   5 6���� 	� o   3 4���� 0 decoded_data  	� o      ���� 0 action_bool  	� 	�	�	� r   : @	�	�	� n   : >	�	�	� 4   ; >��	�
�� 
cobj	� m   < =���� 	� o   : ;���� 0 decoded_data  	� o      ���� 0 growl_enabled  	� 	�	�	� r   A G	�	�	� n   A E	�	�	� 4   B E��	�
�� 
cobj	� m   C D���� 	� o   A B���� 0 decoded_data  	� o      ���� 0 chime_enabled  	� 	�	�	� r   H N	�	�	� n   H L	�	�	� 4   I L��	�
�� 
cobj	� m   J K���� 	� o   H I���� 0 decoded_data  	� o      ���� 0 chime_device  	� 	�	�	� r   O U	�	�	� n   O S	�	�	� 4   P S��	�
�� 
cobj	� m   Q R���� 	� o   O P���� 0 decoded_data  	� o      ���� 0 
sound_file  	� 	�	�	� r   V \	�	�	� n   V Z	�	�	� 4   W Z��	�
�� 
cobj	� m   X Y���� 		� o   V W���� 0 decoded_data  	� o      ���� 0 monitor  	� 	�	�	� r   ] c	�	�	� n   ] a	�	�	� 4   ^ a��	�
�� 
cobj	� m   _ `���� 
	� o   ] ^���� 0 decoded_data  	� o      ���� 0 action_group  	� 	�	�	� l  d d��������  ��  ��  	� 	�	�	� Z   d	�	�����	� >  d g	�	�	� o   d e���� 0 action_group  	� m   e f��
�� boovfals	� k   j	�	� 	�	�	� Z   j �	�	�	�	�	� =  j m	�	�	� o   j k���� 0 action_name  	� m   k l	�	� �	�	�  H o m e   A r m e d	� r   p u	�	�	� b   p s	�	�	� o   p q���� 0 action_group  	� m   q r	�	� �	�	�  _ A r m H o m e	� o      ���� 0 sec_group_name  	� 	�	�	� =  x {	�	�	� o   x y���� 0 action_name  	� m   y z	�	� �	�	�  A w a y   A r m e d	� 	�	�	� r   ~ �	�	�	� b   ~ �	�	�	� o   ~ ���� 0 action_group  	� m    �	�	� �	�	�  _ A r m A w a y	� o      ���� 0 sec_group_name  	� 	�	�	� =  � �	�	�	� o   � ����� 0 action_name  	� m   � �	�	� �	�	�  D i s a r m	� 	�	�	� r   � �	�	�	� b   � �	�	�	� o   � ����� 0 action_group  	� m   � �	�	� �	�	�  _ D i s a r m	� o      ���� 0 sec_group_name  	� 	�	�	� =  � �	�	�	� o   � ����� 0 action_name  	� m   � �	�	� �	�	�  L i g h t s   O n	� 
 

  r   � �


 b   � �


 o   � ����� 0 action_group  
 m   � �

 �

  _ L i g h t s O n
 o      ���� 0 sec_group_name  
 

	
 =  � �




 o   � ����� 0 action_name  
 m   � �

 �

  L i g h t s   O f f
	 


 r   � �


 b   � �


 o   � ����� 0 action_group  
 m   � �

 �

  _ L i g h t s O f f
 o      ���� 0 sec_group_name  
 


 =  � �


 o   � ����� 0 action_name  
 m   � �

 �

 
 P a n i c
 
��
 k   � �

 


 Z   � �
 
!��
"
  =  � �
#
$
# o   � ����� 0 action_bool  
$ m   � ���
�� boovtrue
! r   � �
%
&
% b   � �
'
(
' o   � ����� 0 action_group  
( m   � �
)
) �
*
*  _ P a n i c _ O n
& o      ���� 0 sec_group_name  ��  
" r   � �
+
,
+ b   � �
-
.
- o   � ����� 0 action_group  
. m   � �
/
/ �
0
0  _ P a n i c _ O f f
, o      ���� 0 sec_group_name  
 
1��
1 l  � ���������  ��  ��  ��  ��  	� r   � �
2
3
2 b   � �
4
5
4 o   � ����� 0 action_group  
5 m   � �
6
6 �
7
7  _ u n k n o w n
3 o      ���� 0 sec_group_name  	� 
8
9
8 l  � ���������  ��  ��  
9 
:��
: Z   �
;
<��
=
; l  � �
>����
> I  � ���
?��
�� .coredoexbool        obj 
? l  � �
@����
@ 5   � ���
A��
�� 
AcGp
A o   � ����� 0 sec_group_name  
�� kfrmname��  ��  ��  ��  ��  
< I  � ���
B��
�� .INDOExeGnull���    utf8
B o   � ����� 0 sec_group_name  ��  ��  
= n  �
C
D
C I   ���
E���� 0 log_security  
E 
F
G
F b   � 
H
I
H m   � �
J
J �
K
K . E r r o r   e x e c u t i n g   g r o u p :  
I o   � ����� 0 sec_group_name  
G 
L��
L m   
M
M �
N
N  ��  ��  
D  f   � ���  ��  ��  	� 
O
P
O l ��������  ��  ��  
P 
Q
R
Q l ��
S
T��  
S   Check for Heartbeat   
T �
U
U (   C h e c k   f o r   H e a r t b e a t
R 
V
W
V r  
X
Y
X m  ��
�� boovfals
Y o      ���� 0 	heartbeat  
W 
Z
[
Z Z  m
\
]��
^
\ l 
_����
_ > 
`
a
` n 
b
c
b I  ��
d���� 0 read_indigo_variable  
d 
e
f
e b  
g
h
g o  ���� 0 sensor_name  
h m  
i
i �
j
j  _ l a s t _ s t a t u s
f 
k��
k m  
l
l �
m
m  C l o s e d��  ��  
c  f  
a o  ���� 0 action_name  ��  ��  
] k  "I
n
n 
o
p
o l ""��
q
r��  
q &  my log_security("Non heartbeat")   
r �
s
s @ m y   l o g _ s e c u r i t y ( " N o n   h e a r t b e a t " )
p 
t
u
t l ""��
v
w��  
v ^ X Check for heart beat by checking to see if this is a rebroadcast of the previous status   
w �
x
x �   C h e c k   f o r   h e a r t   b e a t   b y   c h e c k i n g   t o   s e e   i f   t h i s   i s   a   r e b r o a d c a s t   o f   t h e   p r e v i o u s   s t a t u s
u 
y
z
y l ""��
{
|��  
{ = 7 Previous Sensor readings exist, but are not duplicates   
| �
}
} n   P r e v i o u s   S e n s o r   r e a d i n g s   e x i s t ,   b u t   a r e   n o t   d u p l i c a t e s
z 
~

~ l ""��
�
���  
� $ eg. New status change, log it.   
� �
�
� < e g .   N e w   s t a t u s   c h a n g e ,   l o g   i t .
 
�
�
� n "1
�
�
� I  #1��
���� 0 set_variable  
� 
�
�
� b  #(
�
�
� o  #$�~�~ 0 sensor_name  
� m  $'
�
� �
�
�  _ l a s t _ u p d a t e
� 
��}
� n (-
�
�
� I  )-�|�{�z�| 0 timestamp_str  �{  �z  
�  f  ()�}  �  
�  f  "#
� 
�
�
� n 2=
�
�
� I  3=�y
��x�y 0 set_variable  
� 
�
�
� b  38
�
�
� o  34�w�w 0 sensor_name  
� m  47
�
� �
�
�  _ i s _ o p e n
� 
��v
� o  89�u�u 0 action_bool  �v  �x  
�  f  23
� 
��t
� n >I
�
�
� I  ?I�s
��r�s 0 set_variable  
� 
�
�
� b  ?D
�
�
� o  ?@�q�q 0 sensor_name  
� m  @C
�
� �
�
�  _ l a s t _ s t a t u s
� 
��p
� o  DE�o�o 0 action_name  �p  �r  
�  f  >?�t  ��  
^ k  Lm
�
� 
�
�
� l LL�n
�
��n  
� - 'my log_security("Processing Heartbeat")   
� �
�
� N m y   l o g _ s e c u r i t y ( " P r o c e s s i n g   H e a r t b e a t " )
� 
�
�
� l LL�m
�
��m  
� ( " Previous readings, are duplicates   
� �
�
� D   P r e v i o u s   r e a d i n g s ,   a r e   d u p l i c a t e s
� 
�
�
� n LY
�
�
� I  MY�l
��k�l 0 log_security  
� 
�
�
� b  MR
�
�
� m  MP
�
� �
�
� 2 H e a r t   B e a t   d e t e c t e d   f r o m  
� o  PQ�j�j 0 sensor_name  
� 
��i
� m  RU
�
� �
�
�  H e a r t b e a t�i  �k  
�  f  LM
� 
�
�
� n Zi
�
�
� I  [i�h
��g�h 0 set_variable  
� 
�
�
� l [`
��f�e
� b  [`
�
�
� o  [\�d�d 0 sensor_name  
� m  \_
�
� �
�
�  _ l a s t _ u p d a t e�f  �e  
� 
��c
� n `e
�
�
� I  ae�b�a�`�b 0 timestamp_str  �a  �`  
�  f  `a�c  �g  
�  f  Z[
� 
��_
� r  jm
�
�
� m  jk�^
�^ boovtrue
� o      �]�] 0 	heartbeat  �_  
[ 
�
�
� l nn�\�[�Z�\  �[  �Z  
� 
�
�
� Z  n�
�
��Y�X
� = nq
�
�
� o  no�W�W 0 	heartbeat  
� m  op�V
�V boovfals
� k  t�
�
� 
�
�
� l tt�U
�
��U  
� 7 1 Log/chime/beep/growl the non-heartbeat activity.   
� �
�
� b   L o g / c h i m e / b e e p / g r o w l   t h e   n o n - h e a r t b e a t   a c t i v i t y .
� 
�
�
� n t�
�
�
� I  u��T
��S�T 0 log_security  
� 
�
�
� b  u�
�
�
� b  u�
�
�
� b  u�
�
�
� b  u~
�
�
� I  uz�R�Q�P�R 0 timestamp_str  �Q  �P  
� m  z}
�
� �
�
�   
� o  ~�O�O 0 sensor_name  
� m  ��
�
� �
�
�   
� o  ���N�N 0 action_name  
� 
��M
� o  ���L�L 0 action_name  �M  �S  
�  f  tu
� 
�
�
� Z ��
�
��K�J
� F  ��
�
�
� o  ���I�I 0 action_bool  
� = ��
�
�
� o  ���H�H *0 disable_system_beep Disable_System_Beep
� m  ���G
�G boovfals
� I ���F�E�D
�F .sysobeepnull��� ��� long�E  �D  �K  �J  
� 
�
�
� n ��
� 
� I  ���C�B�C 0 do_chime    o  ���A�A 0 chime_enabled    o  ���@�@ 0 action_bool   �? o  ���>�> 0 chime_device  �?  �B     f  ��
�  l ���=�<�;�=  �<  �;   	
	 Z ���:�9 > �� o  ���8�8 0 
sound_file   m  ���7
�7 boovfals I  ���6�5�6 0 play_sound_file    o  ���4�4 0 
sound_file   �3 o  ���2�2 0 action_bool  �3  �5  �:  �9  
  l ���1�0�/�1  �0  �/    l ���.�.     Send Growl Notification    � 0   S e n d   G r o w l   N o t i f i c a t i o n  Z ���-�, o  ���+�+ 0 	use_growl 	Use_Growl Z ���*�) o  ���(�( 0 growl_enabled   n �� !  I  ���'"�&�' 0 send_to_growl  " #$# o  ���%�% 0 sensor_name  $ %�$% o  ���#�# 0 action_name  �$  �&  !  f  ���*  �)  �-  �,   &'& l ���"�!� �"  �!  �   ' ()( Z ��*+��* o  ���� 0 speak_alarms Speak_Alarms+ I  ���,��  0 say_alarm_text Say_Alarm_Text, -.- o  ���� 0 sensor_name  . /�/ o  ���� 0 action_name  �  �  �  �  ) 0�0 l ������  �  �  �  �Y  �X  
� 1�1 n ��232 I  ���4�� 0 check_heartbeats  4 5�5 o  ���� 0 growl_enabled  �  �  3  f  ���  �  �>                                                                                  INDO  alis    �  Nerv_Central_Control       ��KH+   �@IndigoServer.app                                                ���k.A        ����  	                Indigo 4    ��      �kt�     �@
��;
�:�
�1<  `Nerv_Central_Control:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p  *  N e r v _ C e n t r a l _ C o n t r o l  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��  � 676 l     ����  �  �  7 898 l     ��
�	�  �
  �	  9 :;: l     �<=�  < b \--------------------------------------------------------------------------------------------   = �>> � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -; ?@? w      ABA k      CC DED i  69FGF I     �HI
� .INDOprScnull���   0 EnXSH o      �� 0 	eventtype 	eventTypeI �J�
� 
ScCdJ o      �� 0 devid devID�  G k     
KK LML l     �NO�  N  my log_security(devID)   O �PP , m y   l o g _ s e c u r i t y ( d e v I D )M QRQ I     �S� � 0 do_security_event  S TUT o    ���� 0 	eventtype 	eventTypeU V��V o    ���� 0 devid devID��  �   R W��W L    
����  ��  E XYX l     ��������  ��  ��  Y Z[Z i  :=\]\ I     ��^_
�� .INDOpITNnull���   0 EnIT^ o      ���� 0 	eventtype 	eventType_ ��`a
�� 
ToIA` o      ���� 0 
addrstring 
addrStringa ��bc
�� 
GrpNb o      ���� 0 groupnum groupNumc ��de
�� 
By  d o      ���� 0 deltaval deltaVale ��f��
�� 
StBnf o      ���� 0 absval absVal��  ] k     �gg hih l     ��jk��  j 0 *my log_security("Insteon Event Detected.")   k �ll T m y   l o g _ s e c u r i t y ( " I n s t e o n   E v e n t   D e t e c t e d . " )i mnm l     ��op��  o ; 5my log_security("Checking against Security Devices.")   p �qq j m y   l o g _ s e c u r i t y ( " C h e c k i n g   a g a i n s t   S e c u r i t y   D e v i c e s . " )n rsr l     ��������  ��  ��  s tut Z     $vw����v F     xyx F     z{z F     |}| >    ~~ o     ���� 0 	eventtype 	eventType m    ��
�� EnITxF02} >   	��� o    ���� 0 	eventtype 	eventType� m    ��
�� EnITxF03{ >   ��� o    ���� 0 	eventtype 	eventType� m    ��
�� EnITxF16y >   ��� o    ���� 0 	eventtype 	eventType� m    ��
�� EnITxF17w l    ���� L     ����  � . ( not a command type we are interested in   � ��� P   n o t   a   c o m m a n d   t y p e   w e   a r e   i n t e r e s t e d   i n��  ��  u ��� l  % %��������  ��  ��  � ��� Z   % w������� =  % ,��� o   % *���� 20 securitydeviceaddresses securityDeviceAddresses� m   * +�� ��� 
 e m p t y� l  / s���� k   / s�� ��� r   / 7��� J   / 1����  � o      ���� 20 securitydeviceaddresses securityDeviceAddresses� ���� X   8 s����� Z   J n������� =  J O��� n   J M��� 1   K M��
�� 
DvTp� o   J K���� 0 dev  � m   M N�� ���  T r i g g e r L i n c� k   R j�� ��� r   R \��� n  R Z��� I   S Z������� 20 _converthexstrtointeger _convertHexStrToInteger� ���� n   S V��� 1   T V��
�� 
X10a� o   S T���� 0 dev  ��  ��  �  f   R S� o      ���� 0 addrval addrVal� ���� r   ] j��� b   ] d��� o   ] b���� 20 securitydeviceaddresses securityDeviceAddresses� o   b c���� 0 addrval addrVal� o      ���� 20 securitydeviceaddresses securityDeviceAddresses��  ��  ��  �� 0 dev  � 2  ; >��
�� 
Devc��  � 3 - only calculate first time we are ever called   � ��� Z   o n l y   c a l c u l a t e   f i r s t   t i m e   w e   a r e   e v e r   c a l l e d��  ��  � ��� l  x x��������  ��  ��  � ��� r   x {��� m   x y��
�� boovfals� o      ���� 0 
foundmatch 
foundMatch� ��� X   | ������ Z   � �������� =   � ���� l  � ������� c   � ���� o   � ����� 0 devaddr devAddr� m   � ���
�� 
long��  ��  � l  � ������� c   � ���� o   � ����� 0 
addrstring 
addrString� m   � ���
�� 
long��  ��  � r   � ���� m   � ���
�� boovtrue� o      ���� 0 
foundmatch 
foundMatch��  ��  �� 0 devaddr devAddr� o    ����� 20 securitydeviceaddresses securityDeviceAddresses� ��� Z   � �������� H   � ��� o   � ����� 0 
foundmatch 
foundMatch� k   � ��� ��� l  � �������  � . (my log_security("Is not a triggerlinc.")   � ��� P m y   l o g _ s e c u r i t y ( " I s   n o t   a   t r i g g e r l i n c . " )� ���� l  � ����� L   � �����  � 0 * not a device address we are interested in   � ��� T   n o t   a   d e v i c e   a d d r e s s   w e   a r e   i n t e r e s t e d   i n��  ��  ��  � ��� l  � ���������  ��  ��  � ��� n  � ���� I   � �������� 0 log_security  � ��� m   � ��� ��� L I n s t e o n   S e c u r i t y   E v e n t   b e i n g   p r o c e s s e d� ���� m   � ��� ���  ��  ��  �  f   � �� ��� r   � ���� o   � ����� 0 
addrstring 
addrString� o      ���� 0 devid devID� ��� l  � �������  � 8 2 If you get here you know that it is a TriggerLinc   � ��� d   I f   y o u   g e t   h e r e   y o u   k n o w   t h a t   i t   i s   a   T r i g g e r L i n c� ��� I   � �������� 0 do_security_event  � ��� o   � ����� 0 	eventtype 	eventType� ���� o   � ����� 0 devid devID��  ��  � ��� l  � �������  � . (my log_security("TriggerLinc Detected.")   � ��� P m y   l o g _ s e c u r i t y ( " T r i g g e r L i n c   D e t e c t e d . " )�  ��  L   � �����  ��  [ �� l    ���� n     I    ������ 0 log_security    m     �		 < S e c u r i t y   E v e n t   P r o c e s s i n g   D o n e 
��
 m     �  ��  ��    f     ��  ��  ��  B>                                                                                  INDO  alis    �  Nerv_Central_Control       ��KH+   �@IndigoServer.app                                                ���k.A        ����  	                Indigo 4    ��      �kt�     �@
��;
�:�
�1<  `Nerv_Central_Control:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p  *  N e r v _ C e n t r a l _ C o n t r o l  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��  @  l     ��������  ��  ��    l     ����   J Drun script ("/Users/<username>/Documents/woohoo.scpt" as POSIX file)    � � r u n   s c r i p t   ( " / U s e r s / < u s e r n a m e > / D o c u m e n t s / w o o h o o . s c p t "   a s   P O S I X   f i l e )  l     ��������  ��  ��    l     ����   I C 2006.09.27 Removed deprecated "continue..." line. (Matt Bendiksen)    � �   2 0 0 6 . 0 9 . 2 7   R e m o v e d   d e p r e c a t e d   " c o n t i n u e . . . "   l i n e .   ( M a t t   B e n d i k s e n )  l     ��������  ��  ��    l     �� ��   6 0 2008.02.17 Major rewrite. (Benjamin Schollnick)     �!! `   2 0 0 8 . 0 2 . 1 7   M a j o r   r e w r i t e .   ( B e n j a m i n   S c h o l l n i c k ) "#" l     ��$%��  $ + %    http://schollnick.info/wordpress/   % �&& J         h t t p : / / s c h o l l n i c k . i n f o / w o r d p r e s s /# '(' l     ��)*��  )      * �++   ( ,-, l     ��./��  . < 6 2008.03.30 Enhancements and cleanup. (Matt Bendiksen)   / �00 l   2 0 0 8 . 0 3 . 3 0   E n h a n c e m e n t s   a n d   c l e a n u p .   ( M a t t   B e n d i k s e n )- 121 l     ��������  ��  ��  2 343 l     ��56��  5   v1.0 - General Release   6 �77 .   v 1 . 0   -   G e n e r a l   R e l e a s e4 898 l     ����~��  �  �~  9 :;: l     �}<=�}  < p j v1.2 - Fixed issue with unregistered Alarms not chiming.  Previously they would only show up in log file.   = �>> �   v 1 . 2   -   F i x e d   i s s u e   w i t h   u n r e g i s t e r e d   A l a r m s   n o t   c h i m i n g .     P r e v i o u s l y   t h e y   w o u l d   o n l y   s h o w   u p   i n   l o g   f i l e .; ?@? l     �|AB�|  A - '         - Created function for chiming   B �CC N                   -   C r e a t e d   f u n c t i o n   f o r   c h i m i n g@ DED l     �{FG�{  F f `         - Now any Unregistered Alarms will have "Unregistered Sensor" prefixed to the log entry   G �HH �                   -   N o w   a n y   U n r e g i s t e r e d   A l a r m s   w i l l   h a v e   " U n r e g i s t e r e d   S e n s o r "   p r e f i x e d   t o   t h e   l o g   e n t r yE IJI l     �zKL�z  K K E         - Alarm entries will have "alarm" prefixed to the log entry.   L �MM �                   -   A l a r m   e n t r i e s   w i l l   h a v e   " a l a r m "   p r e f i x e d   t o   t h e   l o g   e n t r y .J NON l     �y�x�w�y  �x  �w  O PQP l     �vRS�v  R A ; v1.3 - Added HeartBeat detection, and heartbeat recording.   S �TT v   v 1 . 3   -   A d d e d   H e a r t B e a t   d e t e c t i o n ,   a n d   h e a r t b e a t   r e c o r d i n g .Q UVU l     �uWX�u  W { u         - Previously only decoding the Min alarm settings.  Now the max alarms are being mapped to the min settings.   X �YY �                   -   P r e v i o u s l y   o n l y   d e c o d i n g   t h e   M i n   a l a r m   s e t t i n g s .     N o w   t h e   m a x   a l a r m s   a r e   b e i n g   m a p p e d   t o   t h e   m i n   s e t t i n g s .V Z[Z l     �t\]�t  \ _ Y            If anyone needs to distinguish between a min or max alarm please let me know.   ] �^^ �                         I f   a n y o n e   n e e d s   t o   d i s t i n g u i s h   b e t w e e n   a   m i n   o r   m a x   a l a r m   p l e a s e   l e t   m e   k n o w .[ _`_ l     �s�r�q�s  �r  �q  ` aba l     �pcd�p  c X R v1.4 - Started to merge changes with suggestions from Matt Bendiksen. (3/30/2008)   d �ee �   v 1 . 4   -   S t a r t e d   t o   m e r g e   c h a n g e s   w i t h   s u g g e s t i o n s   f r o m   M a t t   B e n d i k s e n .   ( 3 / 3 0 / 2 0 0 8 )b fgf l     �o�n�m�o  �n  �m  g hih l     �ljk�l  j > 8 v1.5 - Added Heartbeat inactivity detection	(5/28/2008)   k �ll p   v 1 . 5   -   A d d e d   H e a r t b e a t   i n a c t i v i t y   d e t e c t i o n 	 ( 5 / 2 8 / 2 0 0 8 )i mnm l     �kop�k  o : 4		- Growl Support for Heartbeat inactivity detection   p �qq h 	 	 -   G r o w l   S u p p o r t   f o r   H e a r t b e a t   i n a c t i v i t y   d e t e c t i o nn rsr l     �jtu�j  t ' !		- Email on Heartbeat inactivity   u �vv B 	 	 -   E m a i l   o n   H e a r t b e a t   i n a c t i v i t ys wxw l     �iyz�i  y v p		- Added optional switch (Update_Heartbeat_After_Actions) to allow heartbeat to be updated after every action.    z �{{ � 	 	 -   A d d e d   o p t i o n a l   s w i t c h   ( U p d a t e _ H e a r t b e a t _ A f t e r _ A c t i o n s )   t o   a l l o w   h e a r t b e a t   t o   b e   u p d a t e d   a f t e r   e v e r y   a c t i o n .  x |}| l     �h~�h  ~ ( "		- Added the following variables:    ��� D 	 	 -   A d d e d   t h e   f o l l o w i n g   v a r i a b l e s :} ��� l     �g���g  � ( "			- Inactivity_Heartbeat_Watchdog   � ��� D 	 	 	 -   I n a c t i v i t y _ H e a r t b e a t _ W a t c h d o g� ��� l     �f���f  � ) #			- Update_Heartbeat_After_Actions   � ��� F 	 	 	 -   U p d a t e _ H e a r t b e a t _ A f t e r _ A c t i o n s� ��� l     �e���e  �  			- SE_IBeat_Address   � ��� * 	 	 	 -   S E _ I B e a t _ A d d r e s s� ��� l     �d���d  � + %			- Send_Email_on_Inactive_Heartbeat   � ��� J 	 	 	 -   S e n d _ E m a i l _ o n _ I n a c t i v e _ H e a r t b e a t� ��� l     �c�b�a�c  �b  �a  � ��� l     �`���`  � #  v1.65 - Added Speech Support   � ��� :   v 1 . 6 5   -   A d d e d   S p e e c h   S u p p o r t� ��� l     �_���_  � M G			- Added Speech support for Open Sensor, and Closed Sensor detection.   � ��� � 	 	 	 -   A d d e d   S p e e c h   s u p p o r t   f o r   O p e n   S e n s o r ,   a n d   C l o s e d   S e n s o r   d e t e c t i o n .� ��� l     �^���^  � 5 /			- Added Ignore Flag (Alarm Matrix #6 Option)   � ��� ^ 	 	 	 -   A d d e d   I g n o r e   F l a g   ( A l a r m   M a t r i x   # 6   O p t i o n )� ��� l     �]���]  � V P v2.00 - Working at optimizing the code, and adding better comments for newbies.   � ��� �   v 2 . 0 0   -   W o r k i n g   a t   o p t i m i z i n g   t h e   c o d e ,   a n d   a d d i n g   b e t t e r   c o m m e n t s   f o r   n e w b i e s .� ��� l     �\�[�Z�\  �[  �Z  � ��� l     �Y���Y  � @ : v3.00 - Removed Several log messages, that were redundant   � ��� t   v 3 . 0 0   -   R e m o v e d   S e v e r a l   l o g   m e s s a g e s ,   t h a t   w e r e   r e d u n d a n t� ��� l     �X���X  � A ;			- Added support for Timer applescript background process   � ��� v 	 	 	 -   A d d e d   s u p p o r t   f o r   T i m e r   a p p l e s c r i p t   b a c k g r o u n d   p r o c e s s� ��� l     �W���W  � * $			- Cleaned up the Applescript code   � ��� H 	 	 	 -   C l e a n e d   u p   t h e   A p p l e s c r i p t   c o d e� ��� l     �V���V  � b \			- Fixed the ignore sensor routine to eliminate warnings for inactivity on ignored sensors   � ��� � 	 	 	 -   F i x e d   t h e   i g n o r e   s e n s o r   r o u t i n e   t o   e l i m i n a t e   w a r n i n g s   f o r   i n a c t i v i t y   o n   i g n o r e d   s e n s o r s� ��� l     �U���U  � / )			- Added Insteon / TriggerLinc Support.   � ��� R 	 	 	 -   A d d e d   I n s t e o n   /   T r i g g e r L i n c   S u p p o r t .� ��� l     �T���T  � u o			- Fixed small bug in Growl code, code now attempts to verify Growl is running before sending a growl request   � ��� � 	 	 	 -   F i x e d   s m a l l   b u g   i n   G r o w l   c o d e ,   c o d e   n o w   a t t e m p t s   t o   v e r i f y   G r o w l   i s   r u n n i n g   b e f o r e   s e n d i n g   a   g r o w l   r e q u e s t� ��� l     �S���S  � ' !			- Streamlined some of the code   � ��� B 	 	 	 -   S t r e a m l i n e d   s o m e   o f   t h e   c o d e� ��� l     �R�Q�P�R  �Q  �P  � ��� l     �O���O  � 1 + v3.01 - Fixed the Unrecognized Sensor code   � ��� V   v 3 . 0 1   -   F i x e d   t h e   U n r e c o g n i z e d   S e n s o r   c o d e� ��� l     �N���N  � 8 2		- Fixed Check Heart code, when growl is enabled.   � ��� d 	 	 -   F i x e d   C h e c k   H e a r t   c o d e ,   w h e n   g r o w l   i s   e n a b l e d .� ��� l     �M�L�K�M  �L  �K  � ��� l     �J���J  � ) # v3.99 - Added Action Group support   � ��� F   v 3 . 9 9   -   A d d e d   A c t i o n   G r o u p   s u p p o r t� ��� l     �I���I  � g a		- Added Support for Arm / Disarm / Lights On / Lights Off security codes / Panic On / Panic Off   � ��� � 	 	 -   A d d e d   S u p p o r t   f o r   A r m   /   D i s a r m   /   L i g h t s   O n   /   L i g h t s   O f f   s e c u r i t y   c o d e s   /   P a n i c   O n   /   P a n i c   O f f� ��H� l     �G���G  � / ) 		- my log_security("Turning Chime Off")   � ��� R   	 	 -   m y   l o g _ s e c u r i t y ( " T u r n i n g   C h i m e   O f f " )�H       '�F���E���D�C�B�A�@�?���>��=v��������������� �F  � %�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ���������< 0 alarm_matrix Alarm_Matrix�; 0 speak_alarms Speak_Alarms�: (0 sensor_speech_text Sensor_Speech_Text�9 0 speech_voice Speech_Voice�8 *0 disable_system_beep Disable_System_Beep�7 &0 disable_chime_log Disable_Chime_Log�6 (0 chime_only_on_open Chime_Only_On_Open�5 "0 chime_min_delay Chime_Min_delay�4 >0 inactivity_heartbeat_watchdog Inactivity_Heartbeat_Watchdog�3 0 	use_growl 	Use_Growl�2 40 growl_notifications_list Growl_Notifications_List�1 :0 growl_enabled_notifications Growl_Enabled_Notifications�0 D0  send_email_on_inactive_heartbeat  Send_Email_on_Inactive_Heartbeat�/ $0 se_ibeat_address SE_IBeat_Address�. @0 update_heartbeat_after_actions Update_Heartbeat_After_Actions�- (0 playsound_location PlaySound_Location�, 20 securitydeviceaddresses securityDeviceAddresses�+ 0 send_to_growl  �* 0 replacetext replaceText�)  0 say_alarm_text Say_Alarm_Text�( 0 timestamp_str  �' 0 time_elapsed  �& 20 _converthexstrtointeger _convertHexStrToInteger�% 0 	send_mail  �$ 0 read_indigo_variable  �# 0 set_variable  �" 0 log_security  �! 0 check_heartbeats  �  0 unrecognized_sensor  � 0 decode_security  � 0 sound_chime  � 0 do_chime  � 0 play_sound_file  � 0 do_security_event  
� .INDOprScnull���   0 EnXS
� .INDOpITNnull���   0 EnIT
� .aevtoappnull  �   � ****� �� 
 
 	
 �� 	 	 � ��� ���� �� [
� boovfals
� boovtrue
� boovfals
� boovfals
� boovfals �� 	 	 � ��� ���
�	�� q
� boovfals
� boovfals
� boovfals
�
 boovfals
�	 boovfals
� boovfals	 �� 	 	 � ��� ����� � �
� boovfals
� boovfals
� boovfals
� boovfals
� boovfals
�  boovfals
 ���� 	 	 �� ����� ����������� �
�� boovfals
�� boovfals
�� boovfals
�� boovfals
�� boovtrue
�� boovfals ���� 	 	 ���������������� �
�� boovfals
�� boovtrue
�� boovfals
�� boovfals
�� boovtrue
�� boovfals ���� 	 	 ��&����.���������� �
�� boovfals
�� boovtrue
�� boovfals
�� boovfals
�� boovtrue
�� boovfals ���� 	 	 ��?����G���������� �
�� boovfals
�� boovfals
�� boovfals
�� boovfals
�� boovfals
�� boovfals ���� 	 	 ��X����`���������� �
�� boovfals
�� boovtrue
�� boovtrue
�� boovfals
�� boovtrue
�� boovfals ���� 	 	 ��q����y����������  �n
�� boovfals
�� boovtrue
�� boovfals
�� boovfals
�� boovfals
�� boovfals ���� 	 	 ������������������  �%
�� boovfals
�� boovtrue
�� boovfals
�� boovfals
�� boovfals
�� boovfals
�E boovfals� ����   ���
�D boovfals
�C boovfals
�B boovtrue�A �@ 
�? boovfals� ����   )-0� ����   >A
�> boovfals� ����   ]`
�= boovtrue� ������� ���� 0 send_to_growl  �� ��!�� !  ������ 0 sensor_name  �� 0 action_name  ��   ������������ 0 sensor_name  �� 0 action_name  �� 0 	isrunning 	isRunning�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList  ���"�����������������������������	��
�� 
prcs"  
�� 
pnam
�� .corecnte****       ****�� 0 log_security  
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null�� t� *�-�[�,\Z�81j jE�UO�f  )�l+ OhY hO� Ab  
E�Ob  E�O*������� O*a �a �a %�%a �a %�%�a � U� ��*����#$���� 0 replacetext replaceText�� ��%�� %  �������� 0 find  �� 0 replace  �� 0 subject  ��  # ���������� 0 find  �� 0 replace  �� 0 subject  �� 0 prevtids prevTIDs$ ������R
�� 
ascr
�� 
txdl
�� 
citm�� '��,E�O���,FO��-E�O���,FO�%E�O���,FO�� ��m����&'����  0 say_alarm_text Say_Alarm_Text�� ��(�� (  ������ 0 sensor_name  �� 
0 action  ��  & �������� 0 sensor_name  �� 
0 action  �� 0 text_to_speak  ' 
y�������������
�� 
cobj�� 0 replacetext replaceText
�� 
VOIC
�� .sysottosnull���     TEXT�� l��  b  �k/E�O*⠢m+ E�Y hO��  b  �l/E�O*堢m+ E�Y hO��  b  �m/E�O*砢m+ E�Y hO��b  l 	� �������)*���� 0 timestamp_str  ��  ��  )  * ����
�� .misccurdldt    ��� null
�� 
TEXT�� 	*j  �&� �������+,���� 0 time_elapsed  �� ��-�� -  ���� 0 td  ��  + ���� 0 td  , ��~
� .misccurdldt    ��� null
�~ 
ldt �� �j  *j  Y *j  *�/� �}�|�{./�z�} 20 _converthexstrtointeger _convertHexStrToInteger�| �y0�y 0  �x�x 0 hexstr hexStr�{  . �w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�w 0 hexstr hexStr�v 0 hexlist hexList�u 0 a1  �t 0 a2  �s 	0 skip1  �r 0 b1  �q 0 b2  �p 	0 skip2  �o 0 c1  �n 0 c2  �m 0 a1o  �l 0 a2o  �k 0 b1o  �j 0 b2o  �i 0 c1o  �h 0 c2o  �g 0 val  / �f�e�d�c�b�a�`�_�^�]�\
�f 
cobj�e �d �c �b �a 
�` 
psof
�_ 
psin
�^ .sysooffslong    ��� null�] �\ �z ��E�O�E[�k/EQ�Z[�l/EQ�Z[�m/EQ�Z[��/EQ�Z[��/EQ�Z[��/EQ�Z[��/EQ�Z[��/EQ�ZO*��� 	kE�O*��� 	kE�O*��� 	kE�O*��� 	kE�O*��� 	kE�O*��� 	kE�O*��� 	kE�O�� �� � E^ O] �� � E^ O] �� �E^ O] � �[��Z�Y12�X�[ 0 	send_mail  �Z �W3�W 3  �V�U�T�V 0 rec  �U 0 sub  �T 0 msg  �Y  1 �S�R�Q�P�S 0 rec  �R 0 sub  �Q 0 msg  �P 0 x  2 ��O�N�M�L�K�J�I�H�G�F�E
�O 
kocl
�N 
bcke
�M .corecrel****      � null
�L 
trcp
�K 
insh
�J 
prdt
�I 
radd�H 
�G 
subj
�F 
ctnt
�E .emsgsendbool        bcke�X 8� 4*��l E�O� *���*�-6��l� O�*�,FO�*�,FUO�j U� �D��C�B45�A�D 0 read_indigo_variable  �C �@6�@ 6  �?�>�? 0 variable_name  �> 0 default_val  �B  4 �=�<�= 0 variable_name  �< 0 default_val  5 	�;�:�9�8�7�6�5�4�3
�; 
Vrbl
�: .coredoexbool        obj 
�9 
kocl
�8 
prdt
�7 
pnam
�6 
Valu
�5 
TEXT�4 
�3 .corecrel****      � null�A **�/j  *������&�� Y hO*�/�,E� �2�1�078�/�2 0 set_variable  �1 �.9�. 9  �-�,�- 0 variable_name  �, 0 variable_value  �0  7 �+�*�+ 0 variable_name  �* 0 variable_value  8 	�)�(�'�&�%�$�#�"�!
�) 
Vrbl
�( .coredoexbool        obj 
�' 
kocl
�& 
prdt
�% 
pnam
�$ 
Valu
�# 
TEXT�" 
�! .corecrel****      � null�/ **�/j  *������&�� Y ��&*�/�,F� � 5��:;��  0 log_security  � �<� <  ��� 0 log_text  � 0 action_name  �  : ��� 0 log_text  � 0 action_name  ; ��F�
� 
TEXT
� 
LgTy
� .INDOLog null���    utf8� 
��&��l � �M��=>�� 0 check_heartbeats  � �?� ?  �� 0 growl_enabled  �  = �����
�	� 0 growl_enabled  � 0 msg  � 0 x  � 0 variable_name  �
 0 dt  �	 0 log_msg  > Z�����u������� ����������������
� 
kocl
� 
cobj
� .corecnte****       ****� 
� 
TEXT� 0 read_indigo_variable  � 0 time_elapsed  � <�  0 log_security  �� 0 send_to_growl  
�� 
ret �� 0 	send_mail  �� 0 timestamp_str  �� 0 set_variable  � ��E�O �b   [��l kh ���/e  k��l/�&�%E�O)*�jl+ k+ E�O�b   C��%��"%�%E�O)��l+ Ob  	 � )��l/�&�l+ Y hY hO��%_ %E�Y hY h[OY��Ob   C�a   6 0b  [��l kh )a �%a l+ O)�a �m+ [OY��Y hY hO)a )j+ l+ � �� ����@A���� 0 unrecognized_sensor  �� ��B�� B  ������ 0 	eventtype 	eventType�� 0 	device_id 	device_ID��  @ �������������������������� 0 	eventtype 	eventType�� 0 	device_id 	device_ID�� 0 sensor_name  �� 0 action_name  �� 0 action_bool  �� 0 growling  �� 0 chiming  �� 0 chime_device  �� 0 
sound_file  �� 0 heartbeat_monitor  �� 0 action_group  �� 0 alarm_detected  A 'CF��OR_ado��t���������������� 0 log_security  �� 0 str  
�� EnXSxSs1
�� EnXSxSs2
�� 
bool
�� EnXSxSs3
�� EnXSxSs4�� 
�� ��E�O�E�OfE�OfE�OfE�O�E�OfE�OfE�OfE�O)��l+ O)��l+ O)�%�%�l+ O)�*�k+ %�l+ OeE�O�� 
 	�� a & a E�OfE�Y #�a  
 �a  a & a E�OeE�Y hOf���������a v� �������CD���� 0 decode_security  �� ��E�� E  ������ 0 	eventtype 	eventType�� 0 	device_id 	device_ID��  C ���������������������������� 0 	eventtype 	eventType�� 0 	device_id 	device_ID�� 0 	alarmdata  �� 0 ignoresensor IgnoreSensor�� 0 sensor_name  �� 0 action_name  �� 0 action_bool  �� 0 growling  �� 0 chiming  �� 0 chime_device  �� 0 
sound_file  �� 0 heartbeat_monitor  �� 0 action_group  D '������������������X������p����������������������������������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 read_indigo_variable  �� 
�� EnITxF03
�� EnXSxSs1
�� 
bool
�� EnXSxSs2
�� EnITxF02
�� EnXSxSs3
�� EnXSxSs4
�� EnXSxSa1
�� EnXSxSa2
�� EnXSxSa3
�� EnXSxSa4
�� EnXSxSda
�� EnXSxSlf
�� EnXSxSlo
�� EnXSxSpa
�� EnXSxSpr�� �� �� �� �� 	�� 
�� 0 unrecognized_sensor  ����b   [��l kh ���k/ a)�el+ E�O�f  ���/E�Y hO�e  fY hO��l/E�O�� 
 �� �&
 �� �& �E�OfE�Y ˠ� 
 �� �&
 �� �& �E�OeE�Y ��� 
 	�a  �& a E�OeE�Y ��a  
 	�a  �& a E�OeE�Y q�a   a E�OfE�Y ]�a   a E�OfE�Y I�a   a E�OeE�Y 5�a   a E�OeE�Y !�a   a E�OfE�Y a �%E�OfE�O��m/E�O��a  /E�O��a !/E�O��a "/E�O��a #/E�O��a $/E�Oe���������a %vY h[OY��O)��l+ &� ��E����FG���� 0 sound_chime  �� ��H�� H  ������ 0 
soundchime 
SoundChime�� 0 chime_device  ��  F �������� 0 
soundchime 
SoundChime�� 0 chime_device  �� 0 errnum errNumG ������V������I��eh��uwz��
�� 
Dura�� 
�� 
Dely�� 
�� .INDOOn  null���    utf8��  I ������
�� 
errn�� 0 errnum errNum��  ���@�� 0 log_security  �� F�e  @ ������ W .X  ��  ")��l+ O)�%�%�l+ O)�a l+ Y hY h  �������JK���� 0 do_chime  �� ��L�� L  �������� 0 chime_enabled  �� 0 action_bool  �� 0 chime_device  ��  J ������������ 0 chime_enabled  �� 0 action_bool  �� 0 chime_device  �� 0 soundchimestr soundChimeStr�� 0 
soundchime 
SoundChimeK ���������������������		��		
�� 
bool�� 0 read_indigo_variable  �� 0 timestamp_str  �� 0 set_variable  �� <�� 0 sound_chime  �� 0 log_security  �� �b  	 �f �& fE�Y hO� t*��l+ �  d)�)j+ l+ O)�b  � l+ O)�el+ E�O�� 
 �� �&
 �� �& )e�l+ Y b  f  )�a l+ Y hOfE�Y hY b  f  )a a l+ Y h ��	����MN���� 0 play_sound_file  �� ��O�� O  ������ 0 soundfile_to_play  �� 0 action_bool  ��  M ��~� 0 soundfile_to_play  �~ 0 action_bool  N 	*�}�|	=	@	J	L�{�} 0 log_security  
�| 
bool
�{ .sysoexecTEXT���     TEXT�� 1)��l+ O�f 	 ��& )��l+ O�b  %�%�%j Y h �z	R�y�xPQ�w�z 0 do_security_event  �y �vR�v R  �u�t�u 0 	eventtype 	eventType�t 0 devid devID�x  P �s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�s 0 	eventtype 	eventType�r 0 devid devID�q 0 found_in_matrix  �p 0 decoded_data  �o 0 sensor_name  �n 0 action_name  �m 0 action_bool  �l 0 growl_enabled  �k 0 chime_enabled  �j 0 chime_device  �i 0 
sound_file  �h 0 monitor  �g 0 action_group  �f 0 sec_group_name  �e 0 	heartbeat  Q 2�d�c�b�a�`�_�^�]�\	�	�	�	�	�	�	�




)
/
6�[�Z�Y�X
J
M�W
i
l�V
��U�T
�
�
�
�
�
�
��S�R�Q�P�O�N�M�d 0 decode_security  
�c 
cobj�b �a �` �_ �^ �] 	�\ 

�[ 
AcGp
�Z kfrmname
�Y .coredoexbool        obj 
�X .INDOExeGnull���    utf8�W 0 log_security  �V 0 read_indigo_variable  �U 0 timestamp_str  �T 0 set_variable  
�S 
bool
�R .sysobeepnull��� ��� long�Q 0 do_chime  �P 0 play_sound_file  �O 0 send_to_growl  �N  0 say_alarm_text Say_Alarm_Text�M 0 check_heartbeats  �w fE�O)��l+  E�O��k/f  hY hO��k/E�O��l/E�O��m/E�O���/E�O���/E�O���/E�O���/E�O���/E�O���/E�O���/E�O�f ���  
��%E�Y k��  
��%E�Y ]��  
��%E�Y O��  �a %E�Y ?�a   �a %E�Y -�a   �e  �a %E�Y 	�a %E�OPY 	�a %E�O*a �a 0j  
�j Y )a �%a l+ Y hOfE�O)�a %a l+  � ,)�a !%)j+ "l+ #O)�a $%�l+ #O)�a %%�l+ #Y #)a &�%a 'l+ O)�a (%)j+ "l+ #OeE�O�f  �)*j+ "a )%�%a *%�%�l+ O�	 b  f a +& 
*j ,Y hO)���m+ -O�f *��l+ .Y hOb  	 � )��l+ /Y hY hOb   *��l+ 0Y hOPY hO)�k+ 1 �LG�K�JST�I
�L .INDOprScnull���   0 EnXS�K 0 	eventtype 	eventType�J �H�G�F
�H 
ScCd�G 0 devid devID�F  S �E�D�E 0 	eventtype 	eventType�D 0 devid devIDT �C�C 0 do_security_event  �I *��l+  Oh �B]�A�@UV�?
�B .INDOpITNnull���   0 EnIT�A 0 	eventtype 	eventType�@ �>�=W
�> 
ToIA�= 0 
addrstring 
addrStringW �<�;X
�< 
GrpN�; 0 groupnum groupNumX �:�9Y
�: 
By  �9 0 deltaval deltaValY �8�7�6
�8 
StBn�7 0 absval absVal�6  U 
�5�4�3�2�1�0�/�.�-�,�5 0 	eventtype 	eventType�4 0 
addrstring 
addrString�3 0 groupnum groupNum�2 0 deltaval deltaVal�1 0 absval absVal�0 0 dev  �/ 0 addrval addrVal�. 0 
foundmatch 
foundMatch�- 0 devaddr devAddr�, 0 devid devIDV �+�*�)�(�'��&�%�$�#�"��!� �����
�+ EnITxF02
�* EnITxF03
�) 
bool
�( EnITxF16
�' EnITxF17
�& 
Devc
�% 
kocl
�$ 
cobj
�# .corecnte****       ****
�" 
DvTp
�! 
X10a�  20 _converthexstrtointeger _convertHexStrToInteger
� 
long� 0 log_security  � 0 do_security_event  �? ̠�	 ���&	 ���&	 ���& hY hOb  �  IjvEc  O :*�-[��l 	kh ��,�  )��,k+ E�Ob  �%Ec  Y h[OY��Y hOfE�O )b  [��l 	kh ��&��&  eE�Y h[OY��O� hY hO)�a l+ O�E�O*��l+ Oh �Z��[\�
� .aevtoappnull  �   � ****Z k     ]] ��  �  �  [  \ �� 0 log_security  � )��l+  ascr  ��ޭ