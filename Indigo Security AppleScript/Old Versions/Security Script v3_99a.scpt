FasdUAS 1.101.10   ��   ��    k             l     ��  ��   )# Sample attachment script that illustrates how to listen to commands from security devices. Only the W800RF32 and CM15 interfaces receives these commands. 2003.05.15 (mmb).  Only the most recent Version history is at the top, the rest of the Version history is now at the bottom of the file.     � 	 	F   S a m p l e   a t t a c h m e n t   s c r i p t   t h a t   i l l u s t r a t e s   h o w   t o   l i s t e n   t o   c o m m a n d s   f r o m   s e c u r i t y   d e v i c e s .   O n l y   t h e   W 8 0 0 R F 3 2   a n d   C M 1 5   i n t e r f a c e s   r e c e i v e s   t h e s e   c o m m a n d s .   2 0 0 3 . 0 5 . 1 5   ( m m b ) .     O n l y   t h e   m o s t   r e c e n t   V e r s i o n   h i s t o r y   i s   a t   t h e   t o p ,   t h e   r e s t   o f   t h e   V e r s i o n   h i s t o r y   i s   n o w   a t   t h e   b o t t o m   o f   t h e   f i l e .   
  
 l     ��������  ��  ��        l     ��  ��    E ? Change & Version History		- Are at the bottom of the script...     �   ~   C h a n g e   &   V e r s i o n   H i s t o r y 	 	 -   A r e   a t   t h e   b o t t o m   o f   t h e   s c r i p t . . .      l     ��������  ��  ��        l     ��  ��    u o To start using the security script, scroll down to "property Alarm_Matrix", and fill in the entries as needed.     �   �   T o   s t a r t   u s i n g   t h e   s e c u r i t y   s c r i p t ,   s c r o l l   d o w n   t o   " p r o p e r t y   A l a r m _ M a t r i x " ,   a n d   f i l l   i n   t h e   e n t r i e s   a s   n e e d e d .      l     ��  ��    3 - Each block (the { }'s), contain 8 entries...     �   Z   E a c h   b l o c k   ( t h e   {   } ' s ) ,   c o n t a i n   8   e n t r i e s . . .      l     ��������  ��  ��         l     �� ! "��   !   Alarm_Matrix values: --    " � # # 0   A l a r m _ M a t r i x   v a l u e s :   - -    $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( [ U 1 - Device ID  			- The X10 sensor module ID, as shown in Indigo's Event Log window.    ) � * * �   1   -   D e v i c e   I D     	 	 	 -   T h e   X 1 0   s e n s o r   m o d u l e   I D ,   a s   s h o w n   i n   I n d i g o ' s   E v e n t   L o g   w i n d o w . '  + , + l     �� - .��   - g a 2 - Sensor Name		- The name you wish the sensor to have (used in Event Log and Variable window).    . � / / �   2   -   S e n s o r   N a m e 	 	 -   T h e   n a m e   y o u   w i s h   t h e   s e n s o r   t o   h a v e   ( u s e d   i n   E v e n t   L o g   a n d   V a r i a b l e   w i n d o w ) . ,  0 1 0 l     �� 2 3��   2 W Q						- The sensor name must *NOT* have a space in it.  Instead use a underscore.    3 � 4 4 � 	 	 	 	 	 	 -   T h e   s e n s o r   n a m e   m u s t   * N O T *   h a v e   a   s p a c e   i n   i t .     I n s t e a d   u s e   a   u n d e r s c o r e . 1  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 q k 3 - Growl Enabled 		- If true, and if Use_Growl is true, then this sensor's changes will be sent to Growl.    : � ; ; �   3   -   G r o w l   E n a b l e d   	 	 -   I f   t r u e ,   a n d   i f   U s e _ G r o w l   i s   t r u e ,   t h e n   t h i s   s e n s o r ' s   c h a n g e s   w i l l   b e   s e n t   t o   G r o w l . 8  < = < l     �� > ?��   > n h 4 - Chime Enabled		- If true, then an ON command will be sent to the Device named by Chime Device Name.    ? � @ @ �   4   -   C h i m e   E n a b l e d 	 	 -   I f   t r u e ,   t h e n   a n   O N   c o m m a n d   w i l l   b e   s e n t   t o   t h e   D e v i c e   n a m e d   b y   C h i m e   D e v i c e   N a m e . =  A B A l     �� C D��   C l f 5 - Chime Device Name	- The Device name to which an ON command will be sent if Chime Enabled is True.    D � E E �   5   -   C h i m e   D e v i c e   N a m e 	 -   T h e   D e v i c e   n a m e   t o   w h i c h   a n   O N   c o m m a n d   w i l l   b e   s e n t   i f   C h i m e   E n a b l e d   i s   T r u e . B  F G F l     �� H I��   H u o 6 - Ignore Sensor		- Allows the owner to have the sensor in the list, but to ignore any input from the sensor.    I � J J �   6   -   I g n o r e   S e n s o r 	 	 -   A l l o w s   t h e   o w n e r   t o   h a v e   t h e   s e n s o r   i n   t h e   l i s t ,   b u t   t o   i g n o r e   a n y   i n p u t   f r o m   t h e   s e n s o r . G  K L K l     �� M N��   M _ Y						- Generally used if the sensor is sending out false positives (eg. High Winds, etc)    N � O O � 	 	 	 	 	 	 -   G e n e r a l l y   u s e d   i f   t h e   s e n s o r   i s   s e n d i n g   o u t   f a l s e   p o s i t i v e s   ( e g .   H i g h   W i n d s ,   e t c ) L  P Q P l     �� R S��   R > 8						- False equals Do Not Ignore.  True equals Ignore.    S � T T p 	 	 	 	 	 	 -   F a l s e   e q u a l s   D o   N o t   I g n o r e .     T r u e   e q u a l s   I g n o r e . Q  U V U l     �� W X��   W h b 7 - Specialized Sound File - Set to false, if you do not want a specialized sound for this alarm.    X � Y Y �   7   -   S p e c i a l i z e d   S o u n d   F i l e   -   S e t   t o   f a l s e ,   i f   y o u   d o   n o t   w a n t   a   s p e c i a l i z e d   s o u n d   f o r   t h i s   a l a r m . V  Z [ Z l     �� \ ]��   \ V P						- Otherwise set to the fully qualified filename of the sound file to play.    ] � ^ ^ � 	 	 	 	 	 	 -   O t h e r w i s e   s e t   t o   t h e   f u l l y   q u a l i f i e d   f i l e n a m e   o f   t h e   s o u n d   f i l e   t o   p l a y . [  _ ` _ l     �� a b��   a R L						- This requires PlaySound to be installed, and usable via applescript.    b � c c � 	 	 	 	 	 	 -   T h i s   r e q u i r e s   P l a y S o u n d   t o   b e   i n s t a l l e d ,   a n d   u s a b l e   v i a   a p p l e s c r i p t . `  d e d l     �� f g��   f 8 2 8 - WatchDog / Heartbeat - Monitor for heartbeats    g � h h d   8   -   W a t c h D o g   /   H e a r t b e a t   -   M o n i t o r   f o r   h e a r t b e a t s e  i j i l     ��������  ��  ��   j  k l k l     �� m n��   m V P 9 - Action Group 		- False equals "Do Not Use".  If set to a name (for example)    n � o o �   9   -   A c t i o n   G r o u p   	 	 -   F a l s e   e q u a l s   " D o   N o t   U s e " .     I f   s e t   t o   a   n a m e   ( f o r   e x a m p l e ) l  p q p l     �� r s��   r _ Y 							{153, "Kitchen_Door", false, true, "Sound Chime", false, false, true, "Kitchen"},    s � t t �   	 	 	 	 	 	 	 { 1 5 3 ,   " K i t c h e n _ D o o r " ,   f a l s e ,   t r u e ,   " S o u n d   C h i m e " ,   f a l s e ,   f a l s e ,   t r u e ,   " K i t c h e n " } , q  u v u l     �� w x��   w U O							The security script will attempt to trigger the following action groups:    x � y y � 	 	 	 	 	 	 	 T h e   s e c u r i t y   s c r i p t   w i l l   a t t e m p t   t o   t r i g g e r   t h e   f o l l o w i n g   a c t i o n   g r o u p s : v  z { z l     ��������  ��  ��   {  | } | l     �� ~ ��   ~ N H							*SensorName*_sec_ArmHome, on a sec_ArmHome_min or sec_ArmHome_Max     � � � � 	 	 	 	 	 	 	 * S e n s o r N a m e * _ s e c _ A r m H o m e ,   o n   a   s e c _ A r m H o m e _ m i n   o r   s e c _ A r m H o m e _ M a x }  � � � l     �� � ���   � N H							*SensorName*_sec_ArmAway, on a sec_ArmAway_min or sec_ArmAway_Max    � � � � � 	 	 	 	 	 	 	 * S e n s o r N a m e * _ s e c _ A r m A w a y ,   o n   a   s e c _ A r m A w a y _ m i n   o r   s e c _ A r m A w a y _ M a x �  � � � l     �� � ���   � 5 /							*SensorName*_sec_Disarm, on a sec_Disarm    � � � � ^ 	 	 	 	 	 	 	 * S e n s o r N a m e * _ s e c _ D i s a r m ,   o n   a   s e c _ D i s a r m �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � A ;							When the security code is detected from that sensor.    � � � � v 	 	 	 	 	 	 	 W h e n   t h e   s e c u r i t y   c o d e   i s   d e t e c t e d   f r o m   t h a t   s e n s o r . �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � Y S	To add an alarm sensor, just add block with the 8 entries, seperated by a comma.      � � � � � 	 T o   a d d   a n   a l a r m   s e n s o r ,   j u s t   a d d   b l o c k   w i t h   t h e   8   e n t r i e s ,   s e p e r a t e d   b y   a   c o m m a .     �  � � � l     ��������  ��  ��   �  � � � j     ~�� ��� 0 alarm_matrix Alarm_Matrix � J     } � �  � � � l 	    ����� � J      � �  � � � m     ���� � �  � � � m     � � � � �  K i t c h e n _ D o o r �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovtrue �  � � � m     � � � � �  S o u n d   C h i m e �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovtrue �  ��� � m    	��
�� boovfals��  ��  ��   �  � � � l 	   ����� � J     � �  � � � m    ���� � �  � � � m     � � � � �  t e s t i n g �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovtrue �  � � � m     � � � � �  S o u n d   C h i m e �  � � � m    ��
�� boovtrue �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovtrue �  ��� � m    ��
�� boovfals��  ��  ��   �  � � � l 	  ! ����� � J    ! � �  � � � m    ���� � �  � � � m     � � � � �  W o r k R o o m _ D o o r �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  � � � m     � � � � �  S o u n d   C h i m e �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  � � � m    ��
�� boovfals �  ��� � m    ��
�� boovfals��  ��  ��   �  � � � l 	 ! , ����� � J   ! , � �  � � � m   ! "���� q �  � � � m   " # � � � � �  W o r k R o o m _ D o o r 2 �  � � � m   # $��
�� boovfals �  � � � m   $ %��
�� boovfals �  � � � m   % & � � � � �  S o u n d   C h i m e �  � � � m   & '��
�� boovfals �    m   ' (��
�� boovfals  m   ( )��
�� boovfals �� m   ) *��
�� boovfals��  ��  ��   �  l 	 , 7���� J   , 7 	
	 m   , -���� �
  m   - . �  B a s e m e n t _ D o o r  m   . /��
�� boovfals  m   / 0��
�� boovfals  m   0 1 �  S o u n d   C h i m e  m   1 2��
�� boovfals  m   2 3��
�� boovfals  m   3 4��
�� boovfals �� m   4 5��
�� boovfals��  ��  ��    l 	 7 H ����  J   7 H!! "#" m   7 :���� �# $%$ m   : =&& �'' ( G a r a g e _ D o o r _ D e a d b o l t% ()( m   = >��
�� boovfals) *+* m   > ?��
�� boovfals+ ,-, m   ? B.. �//  S o u n d   C h i m e- 010 m   B C��
�� boovfals1 232 m   C D��
�� boovfals3 454 m   D E��
�� boovtrue5 6��6 m   E F��
�� boovfals��  ��  ��   787 l 	 H Y9����9 J   H Y:: ;<; m   H K���� �< =>= m   K N?? �@@  D i n i n g _ R o o m> ABA m   N O��
�� boovfalsB CDC m   O P��
�� boovtrueD EFE m   P SGG �HH  S o u n d   C h i m eF IJI m   S T��
�� boovfalsJ KLK m   T U��
�� boovfalsL MNM m   U V�
� boovtrueN O�~O m   V W�}
�} boovfals�~  ��  ��  8 PQP l 	 Y jR�|�{R J   Y jSS TUT m   Y \�z�z �U VWV m   \ _XX �YY  R e c _ R o o mW Z[Z m   _ `�y
�y boovfals[ \]\ m   ` a�x
�x boovtrue] ^_^ m   a d`` �aa  S o u n d   C h i m e_ bcb m   d e�w
�w boovfalsc ded m   e f�v
�v boovfalse fgf m   f g�u
�u boovtrueg h�th m   g h�s
�s boovfals�t  �|  �{  Q i�ri l 	 j {j�q�pj J   j {kk lml m   j m�o�o  �nm non m   m ppp �qq  G a r a g e _ D o o ro rsr m   p q�n
�n boovfalss tut m   q r�m
�m boovtrueu vwv m   r uxx �yy  S o u n d   C h i m ew z{z m   u v�l
�l boovfals{ |}| m   v w�k
�k boovfals} ~~ m   w x�j
�j boovfals ��i� m   x y�h
�h boovfals�i  �q  �p  �r   � ��� l     �g�f�e�g  �f  �e  � ��� l     �d���d  � 9 3- , "/Users/benjamin/Desktop/alarm_clock_1.wav"}, �   � ��� f -   ,   " / U s e r s / b e n j a m i n / D e s k t o p / a l a r m _ c l o c k _ 1 . w a v " } ,   �� ��� l     �c�b�a�c  �b  �a  � ��� l     �`���`  �   Supressing Alarm Sensors   � ��� 2   S u p r e s s i n g   A l a r m   S e n s o r s� ��� l     �_���_  � The Ignore_Security_Sensors variable will override *ALL* the sensors ignore settings, and force the security script to ignore all sensors until it is set to false.  If it is set to true, then all sensors will be ignored.  If set to false, normal behavior will occur.   � ���   T h e   I g n o r e _ S e c u r i t y _ S e n s o r s   v a r i a b l e   w i l l   o v e r r i d e   * A L L *   t h e   s e n s o r s   i g n o r e   s e t t i n g s ,   a n d   f o r c e   t h e   s e c u r i t y   s c r i p t   t o   i g n o r e   a l l   s e n s o r s   u n t i l   i t   i s   s e t   t o   f a l s e .     I f   i t   i s   s e t   t o   t r u e ,   t h e n   a l l   s e n s o r s   w i l l   b e   i g n o r e d .     I f   s e t   t o   f a l s e ,   n o r m a l   b e h a v i o r   w i l l   o c c u r .� ��� l     �^�]�\�^  �]  �\  � ��� l     �[���[  �   Speech Controls   � ���     S p e e c h   C o n t r o l s� ��� l     �Z�Y�X�Z  �Y  �X  � ��� j    ��W��W 0 speak_alarms Speak_Alarms� m    ��V
�V boovfals� ��� l     �U�T�S�U  �T  �S  � ��� j   � ��R��R (0 sensor_speech_text Sensor_Speech_Text� J   � ��� ��� m   � ��� ��� ( S e n s o r   % s   h a s   O p e n e d� ��� m   � ��� ��� * S e n s o r   % s   h a s   C l o s e d .� ��Q� m   � ��� ��� $ S e n s o r   % s   T i m e   O u t�Q  � ��� l     �P���P  � - ' %s is replaced with the Sensor Name.     � ��� N   % s   i s   r e p l a c e d   w i t h   t h e   S e n s o r   N a m e .    � ��� l     �O�N�M�O  �N  �M  � ��� j   � ��L��L 0 speech_voice Speech_Voice� m   � ��� ���  A l e x� ��� l     �K�J�I�K  �J  �I  � ��� l     �H���H  �>8 The SoundChime variable (in Indigo's Variable's table) will override the Chiming settings.  For example, you can set a trigger action to disable the chime for XX minutes.  Setting SoundChime to True, enables the Chime.  Setting SoundChime to False, disables the chime.  This lasts until the variable is changed.   � ���p   T h e   S o u n d C h i m e   v a r i a b l e   ( i n   I n d i g o ' s   V a r i a b l e ' s   t a b l e )   w i l l   o v e r r i d e   t h e   C h i m i n g   s e t t i n g s .     F o r   e x a m p l e ,   y o u   c a n   s e t   a   t r i g g e r   a c t i o n   t o   d i s a b l e   t h e   c h i m e   f o r   X X   m i n u t e s .     S e t t i n g   S o u n d C h i m e   t o   T r u e ,   e n a b l e s   t h e   C h i m e .     S e t t i n g   S o u n d C h i m e   t o   F a l s e ,   d i s a b l e s   t h e   c h i m e .     T h i s   l a s t s   u n t i l   t h e   v a r i a b l e   i s   c h a n g e d .� ��� j   � ��G��G (0 chime_only_on_open Chime_Only_On_Open� m   � ��F
�F boovtrue� ��� l     �E���E  � b \ Only trigger the Chime on a Open Security notification.  The default beep will always play.   � ��� �   O n l y   t r i g g e r   t h e   C h i m e   o n   a   O p e n   S e c u r i t y   n o t i f i c a t i o n .     T h e   d e f a u l t   b e e p   w i l l   a l w a y s   p l a y .� ��� l     �D�C�B�D  �C  �B  � ��� j   � ��A��A "0 chime_min_delay Chime_Min_delay� m   � ��@�@ � ��� l     �?���?  � � � The minimium delay between Chime requests.  Any chime request that is within this delay (in minutes) will be logged, but the chime will not be triggered.   � ���4   T h e   m i n i m i u m   d e l a y   b e t w e e n   C h i m e   r e q u e s t s .     A n y   c h i m e   r e q u e s t   t h a t   i s   w i t h i n   t h i s   d e l a y   ( i n   m i n u t e s )   w i l l   b e   l o g g e d ,   b u t   t h e   c h i m e   w i l l   n o t   b e   t r i g g e r e d .� ��� l     �>�=�<�>  �=  �<  � ��� j   � ��;��; >0 inactivity_heartbeat_watchdog Inactivity_Heartbeat_Watchdog� m   � ��:�: � ��� l     �9���9  � The maximium number of seconds before a warning will start appearing for an alarm heartbeat.  If you receive an inactivity warning, please check the batteries, and test the contacts. The Deafult is : 7200 seconds = 120 Min = 2 Hrs before a inactivity warning will start logging.   � ���.   T h e   m a x i m i u m   n u m b e r   o f   s e c o n d s   b e f o r e   a   w a r n i n g   w i l l   s t a r t   a p p e a r i n g   f o r   a n   a l a r m   h e a r t b e a t .     I f   y o u   r e c e i v e   a n   i n a c t i v i t y   w a r n i n g ,   p l e a s e   c h e c k   t h e   b a t t e r i e s ,   a n d   t e s t   t h e   c o n t a c t s .   T h e   D e a f u l t   i s   :   7 2 0 0   s e c o n d s   =   1 2 0   M i n   =   2   H r s   b e f o r e   a   i n a c t i v i t y   w a r n i n g   w i l l   s t a r t   l o g g i n g .� ��� l     �8�7�6�8  �7  �6  � ��� l     �5���5  � 6 0 Property usage comments follow item definitions   � ��� `   P r o p e r t y   u s a g e   c o m m e n t s   f o l l o w   i t e m   d e f i n i t i o n s� ��� j   � ��4��4 0 	use_growl 	Use_Growl� m   � ��3
�3 boovfals� ��� l     �2���2  � � � Use_Growl, if true, Growl notifications will be broadcast for any Opened / Closed events. If false, no Growl notifications will be sent.    � ���   U s e _ G r o w l ,   i f   t r u e ,   G r o w l   n o t i f i c a t i o n s   w i l l   b e   b r o a d c a s t   f o r   a n y   O p e n e d   /   C l o s e d   e v e n t s .   I f   f a l s e ,   n o   G r o w l   n o t i f i c a t i o n s   w i l l   b e   s e n t .  � ��� l     �1�0�/�1  �0  �/  � ��� l     ���� j   � ��.��. 40 growl_notifications_list Growl_Notifications_List� J   � ��� ��� m   � ��� ���  O p e n e d� ��� m   � ��� ���  C l o s e d�  �-  m   � � �  C h e c k   A l a r m�-  � 8 2 List the Growl notifications that you wish to use   � � d   L i s t   t h e   G r o w l   n o t i f i c a t i o n s   t h a t   y o u   w i s h   t o   u s e�  l     �,�+�*�,  �+  �*    l     	
 j   � ��)�) :0 growl_enabled_notifications Growl_Enabled_Notifications J   � �  m   � � �  O p e n e d �( m   � � �  C h e c k   A l a r m�(  	 7 1 The default growl Notifications that are enabled   
 � b   T h e   d e f a u l t   g r o w l   N o t i f i c a t i o n s   t h a t   a r e   e n a b l e d  l     �'�&�%�'  �&  �%    l     �$�#�"�$  �#  �"    l     �!�!     Advanced Settings    � $   A d v a n c e d   S e t t i n g s  j   � ��  �  D0  send_email_on_inactive_heartbeat  Send_Email_on_Inactive_Heartbeat  m   � ��
� boovfals !"! l     �#$�  # a [ Send an email if the security Heartbeats have not been detected within the Watchdog value.   $ �%% �   S e n d   a n   e m a i l   i f   t h e   s e c u r i t y   H e a r t b e a t s   h a v e   n o t   b e e n   d e t e c t e d   w i t h i n   t h e   W a t c h d o g   v a l u e ." &'& l     ����  �  �  ' ()( j   � ��*� $0 se_ibeat_address SE_IBeat_Address* J   � �++ ,-, m   � �.. �// & e x a m p l e @ e x a m p l e . c o m- 0�0 m   � �11 �22 ( e x a m p l e 2 @ e x a m p l e . c o m�  ) 343 l     �56�  5 F @ Send Email(s) to the following addresses, seperated by a comma.   6 �77 �   S e n d   E m a i l ( s )   t o   t h e   f o l l o w i n g   a d d r e s s e s ,   s e p e r a t e d   b y   a   c o m m a .4 898 l     ����  �  �  9 :;: j   � ��<� @0 update_heartbeat_after_actions Update_Heartbeat_After_Actions< m   � ��
� boovtrue; =>= l     �?@�  ? � �  Update the heartbeat after every action.  Normal behavior is to not update Heartbeats after an action occurs.  This forces the heartbeat to update after every action of the device.   @ �AAl     U p d a t e   t h e   h e a r t b e a t   a f t e r   e v e r y   a c t i o n .     N o r m a l   b e h a v i o r   i s   t o   n o t   u p d a t e   H e a r t b e a t s   a f t e r   a n   a c t i o n   o c c u r s .     T h i s   f o r c e s   t h e   h e a r t b e a t   t o   u p d a t e   a f t e r   e v e r y   a c t i o n   o f   t h e   d e v i c e .> BCB l     ����  �  �  C DED j   � ��F� (0 playsound_location PlaySound_LocationF m   � �GG �HH  / A p p l i c a t i o n s /E IJI l     ����  �  �  J KLK l     MNOM j   � ��
P�
 20 securitydeviceaddresses securityDeviceAddressesP m   � �QQ �RR 
 e m p t yN ) # automatically filled in at runtime   O �SS F   a u t o m a t i c a l l y   f i l l e d   i n   a t   r u n t i m eL TUT l     �	���	  �  �  U VWV l     �XY�  X b \--------------------------------------------------------------------------------------------   Y �ZZ � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -W [\[ l     �]^�  ]   Growl Support   ^ �__    G r o w l   S u p p o r t\ `a` l     ����  �  �  a bcb i   � �ded I      �f� � 0 send_to_growl  f ghg o      ���� 0 sensor_name  h i��i o      ���� 0 action_name  ��  �   e k     rjj klk l     ��mn��  m !  Send announcement to Growl   n �oo 6   S e n d   a n n o u n c e m e n t   t o   G r o w ll pqp O     rsr r    tut ?    vwv l 	  x����x l   y����y I   ��z��
�� .corecnte****       ****z l   {����{ 6   |}| 2    ��
�� 
prcs} =   ~~ 1   	 ��
�� 
pnam m    �� ���  G r o w l H e l p e r A p p��  ��  ��  ��  ��  ��  ��  w m    ����  u o      ���� 0 	isrunning 	isRunnings m     ��                                                                                  sevs  alis    �  Nerv_Central_Control       ��KH+  
�0�System Events.app                                              
�[2�7��        ����  	                CoreServices    ��      �8'7    
�0�
�0�
�0�  BNerv_Central_Control:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p  *  N e r v _ C e n t r a l _ C o n t r o l  -System/Library/CoreServices/System Events.app   / ��  q ��� Z    -������� =   ��� o    ���� 0 	isrunning 	isRunning� m    ��
�� boovfals� k     )�� ��� n    &��� I   ! &������� 0 log_security  � ���� m   ! "�� ��� � G r o w l   i s   n o t   r u n n i n g ,   p l e a s e   I n s t a l l   o r   T u r n   o n   G r o w l ,   o r   T u r n   o f f   G r o w l   N o t i f i c a t i o n s   i n   t h e   S e c u r i t y   S c r i p t��  ��  �  f     !� ���� L   ' )����  ��  ��  ��  � ���� O   . r��� k   2 q�� ��� l  2 2������  � 1 + Make a list of all the notification types    � ��� V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s  � ��� l  2 2������  � ' ! that this script will ever send:   � ��� B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d :� ��� r   2 9��� o   2 7���� 40 growl_notifications_list Growl_Notifications_List� l     ������ o      ���� ,0 allnotificationslist allNotificationsList��  ��  � ��� r   : A��� o   : ?���� :0 growl_enabled_notifications Growl_Enabled_Notifications� l     ������ o      ���� 40 enablednotificationslist enabledNotificationsList��  ��  � ��� l  B B��������  ��  ��  � ��� I  B O�����
�� .register****      � ****��  � ����
�� 
appl� l 	 D E������ m   D E�� ���  I n d i g o   S e c u r i t y��  ��  � ����
�� 
anot� l 
 F G������ o   F G���� ,0 allnotificationslist allNotificationsList��  ��  � ����
�� 
dnot� l 
 H I������ o   H I���� 40 enablednotificationslist enabledNotificationsList��  ��  � �����
�� 
iapp� m   J K�� ���  S c r i p t   E d i t o r��  � ��� l  P P��������  ��  ��  � ���� I  P q�����
�� .notifygr****      � ****��  � ����
�� 
name� l 	 T U������ o   T U���� 0 action_name  ��  ��  � ����
�� 
titl� b   X _��� b   X ]��� l 	 X Y������ o   X Y���� 0 sensor_name  ��  ��  � m   Y \�� ���   � o   ] ^���� 0 action_name  � ����
�� 
desc� b   b i��� b   b g��� l 	 b c������ o   b c���� 0 sensor_name  ��  ��  � m   c f�� ���   � o   g h���� 0 action_name  � �����
�� 
appl� m   j m�� ���  I n d i g o   S e c u r i t y��  ��  � m   . /���                                                                                      @ alis    4   Nerv_Central_Control       ��KH+  
�0�GrowlHelperApp.app                                             ����            ����  A                 ��              &  G r o w l H e l p e r A p p . a p p  *  N e r v _ C e n t r a l _ C o n t r o l  Applications/GrowlHelperApp.app   / ��  ��  c ��� l     ��������  ��  ��  � ��� l     ������  � b \--------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  �   Find & Replace    � ���     F i n d   &   R e p l a c e  � ��� l     ������  �   find : Text to be found   � ��� 0   f i n d   :   T e x t   t o   b e   f o u n d� ��� l     ������  � %  replace : Text to replace with   � ��� >   r e p l a c e   :   T e x t   t o   r e p l a c e   w i t h� ��� l     ������  � $  subject : Text to be searched   � ��� <   s u b j e c t   :   T e x t   t o   b e   s e a r c h e d� ��� i   � ���� I      ������� 0 replacetext replaceText� ��� o      ���� 0 find  � ��� o      ���� 0 replace  � ���� o      ���� 0 subject  ��  ��  � k     &    r      n     1    ��
�� 
txdl 1     ��
�� 
ascr o      ���� 0 prevtids prevTIDs  r    	
	 o    ���� 0 find  
 n      1    
��
�� 
txdl 1    ��
�� 
ascr  r     n     2   ��
�� 
citm o    ���� 0 subject   o      ���� 0 subject    l   ��������  ��  ��    r     o    ���� 0 replace   n      1    ��
�� 
txdl 1    ��
�� 
ascr  r     b      m    !! �""    o    ���� 0 subject   o      ���� 0 subject   #$# r    #%&% o    ���� 0 prevtids prevTIDs& n     '(' 1     "��
�� 
txdl( 1     ��
�� 
ascr$ )*) l  $ $��������  ��  ��  * +��+ L   $ &,, o   $ %���� 0 subject  ��  � -.- l     ��������  ��  ��  . /0/ l     ��12��  1 b \--------------------------------------------------------------------------------------------   2 �33 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -0 454 l     ��67��  6 ? 9 Compose the Text to be spoken for the Speak Alarm option   7 �88 r   C o m p o s e   t h e   T e x t   t o   b e   s p o k e n   f o r   t h e   S p e a k   A l a r m   o p t i o n5 9:9 i   � �;<; I      ��=����  0 say_alarm_text Say_Alarm_Text= >?> o      ���� 0 sensor_name  ? @��@ o      ���� 
0 action  ��  ��  < k     kAA BCB Z     DE����D =     FGF o     ���� 
0 action  G m    HH �II  O p e n e dE k    JJ KLK r    MNM n   OPO 4    �Q
� 
cobjQ m    �~�~ P o    �}�} (0 sensor_speech_text Sensor_Speech_TextN o      �|�| 0 text_to_speak  L R�{R r    STS I    �zU�y�z 0 replacetext replaceTextU VWV m    XX �YY  % sW Z[Z o    �x�x 0 sensor_name  [ \�w\ o    �v�v 0 text_to_speak  �w  �y  T o      �u�u 0 text_to_speak  �{  ��  ��  C ]^] Z     ?_`�t�s_ =     #aba o     !�r�r 
0 action  b m   ! "cc �dd  C l o s e d` k   & ;ee fgf r   & 0hih n  & .jkj 4   + .�ql
�q 
cobjl m   , -�p�p k o   & +�o�o (0 sensor_speech_text Sensor_Speech_Texti o      �n�n 0 text_to_speak  g m�mm r   1 ;non I   1 9�lp�k�l 0 replacetext replaceTextp qrq m   2 3ss �tt  % sr uvu o   3 4�j�j 0 sensor_name  v w�iw o   4 5�h�h 0 text_to_speak  �i  �k  o o      �g�g 0 text_to_speak  �m  �t  �s  ^ xyx Z   @ _z{�f�ez =   @ C|}| o   @ A�d�d 
0 action  } m   A B~~ �  T i m e O u t{ k   F [�� ��� r   F P��� n  F N��� 4   K N�c�
�c 
cobj� m   L M�b�b � o   F K�a�a (0 sensor_speech_text Sensor_Speech_Text� o      �`�` 0 text_to_speak  � ��_� r   Q [��� I   Q Y�^��]�^ 0 replacetext replaceText� ��� m   R S�� ���  % s� ��� o   S T�\�\ 0 sensor_name  � ��[� o   T U�Z�Z 0 text_to_speak  �[  �]  � o      �Y�Y 0 text_to_speak  �_  �f  �e  y ��X� I  ` k�W��
�W .sysottosnull���     TEXT� o   ` a�V�V 0 text_to_speak  � �U��T
�U 
VOIC� o   b g�S�S 0 speech_voice Speech_Voice�T  �X  : ��� l     �R���R  � b \--------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �Q���Q  �   Time Support   � ���    T i m e   S u p p o r t� ��� l     �P�O�N�P  �O  �N  � ��� i   � ���� I      �M�L�K�M 0 timestamp_str  �L  �K  � L     �� c     ��� l    ��J�I� I    �H�G�F
�H .misccurdldt    ��� null�G  �F  �J  �I  � m    �E
�E 
TEXT� ��� l     �D�C�B�D  �C  �B  � ��� i   � ���� I      �A��@�A 0 time_elapsed  � ��?� o      �>�> 0 td  �?  �@  � k     �� ��� l     �=���=  � > 8 Return the time lapsed from the Current Date in seconds   � ��� p   R e t u r n   t h e   t i m e   l a p s e d   f r o m   t h e   C u r r e n t   D a t e   i n   s e c o n d s� ��<� L     �� l    
��;�:� \     
��� l    ��9�8� I    �7�6�5
�7 .misccurdldt    ��� null�6  �5  �9  �8  � l   	��4�3� 4    	�2�
�2 
ldt � l   ��1�0� o    �/�/ 0 td  �1  �0  �4  �3  �;  �:  �<  � ��� l     �.�-�,�.  �-  �,  � ��� l     �+�*�)�+  �*  �)  � ��� l     �(���(  � b \--------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� i   � ���� I      �'��&�' 20 _converthexstrtointeger _convertHexStrToInteger� ��%� o      �$�$ 0 hexstr hexStr�%  �&  � k     ��� ��� r     ��� m     �� ���   0 1 2 3 4 5 6 7 8 9 A B C D E F� l     ��#�"� o      �!�! 0 hexlist hexList�#  �"  � ��� s    F��� o    � �  0 hexstr hexStr� J      �� ��� o      �� 0 a1  � ��� o      �� 0 a2  � ��� o      �� 	0 skip1  � ��� o      �� 0 b1  � ��� o      �� 0 b2  � ��� o      �� 	0 skip2  � ��� o      �� 0 c1  � ��� o      �� 0 c2  �  � ��� r   G T��� \   G R��� l  G P���� I  G P���
� .sysooffslong    ��� null�  � ���
� 
psof� o   I J�� 0 a1  � ���
� 
psin� o   K L�� 0 hexlist hexList�  �  �  � m   P Q�� � o      �� 0 a1o  � ��� r   U b��� \   U `��� l  U ^���
� I  U ^�	��
�	 .sysooffslong    ��� null�  � � 
� 
psof  o   W X�� 0 a1   ��
� 
psin o   Y Z�� 0 hexlist hexList�  �  �
  � m   ^ _�� � o      �� 0 a1o  �  r   c p \   c n l  c l	� ��	 I  c l����

�� .sysooffslong    ��� null��  
 ��
�� 
psof o   e f���� 0 a2   ����
�� 
psin o   g h���� 0 hexlist hexList��  �   ��   m   l m����  o      ���� 0 a2o    r   q ~ \   q | l  q z���� I  q z����
�� .sysooffslong    ��� null��   ��
�� 
psof o   s t���� 0 b1   ����
�� 
psin o   u v���� 0 hexlist hexList��  ��  ��   m   z {����  o      ���� 0 b1o    r    � \    � l   ����� I   ����� 
�� .sysooffslong    ��� null��    ��!"
�� 
psof! o   � ����� 0 b2  " ��#��
�� 
psin# o   � ����� 0 hexlist hexList��  ��  ��   m   � �����  o      ���� 0 b2o   $%$ r   � �&'& \   � �()( l  � �*����* I  � �����+
�� .sysooffslong    ��� null��  + ��,-
�� 
psof, o   � ����� 0 c1  - ��.��
�� 
psin. o   � ����� 0 hexlist hexList��  ��  ��  ) m   � ����� ' o      ���� 0 c1o  % /0/ r   � �121 \   � �343 l  � �5����5 I  � �����6
�� .sysooffslong    ��� null��  6 ��78
�� 
psof7 o   � ����� 0 c2  8 ��9��
�� 
psin9 o   � ����� 0 hexlist hexList��  ��  ��  4 m   � ����� 2 o      ���� 0 c2o  0 :;: r   � �<=< ]   � �>?> ]   � �@A@ m   � ����� A m   � ����� ? l  � �B����B [   � �CDC ]   � �EFE o   � ����� 0 a1o  F m   � ����� D o   � ����� 0 a2o  ��  ��  = o      ���� 0 val  ; GHG r   � �IJI [   � �KLK o   � ����� 0 val  L ]   � �MNM m   � ����� N l  � �O����O [   � �PQP ]   � �RSR o   � ����� 0 b1o  S m   � ����� Q o   � ����� 0 b2o  ��  ��  J o      ���� 0 val  H TUT r   � �VWV [   � �XYX [   � �Z[Z o   � ����� 0 val  [ ]   � �\]\ o   � ����� 0 c1o  ] m   � ����� Y o   � ����� 0 c2o  W o      ���� 0 val  U ^��^ L   � �__ o   � ����� 0 val  ��  � `a` l     ��bc��  b b \--------------------------------------------------------------------------------------------   c �dd � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -a efe i   � �ghg I      ��i���� 0 	send_mail  i jkj o      ���� 0 rec  k lml o      ���� 0 sub  m n��n o      ���� 0 msg  ��  ��  h k     7oo pqp l     ��rs��  r H B Send an Email, to the recipent, with Subject, and msg as the body   s �tt �   S e n d   a n   E m a i l ,   t o   t h e   r e c i p e n t ,   w i t h   S u b j e c t ,   a n d   m s g   a s   t h e   b o d yq u��u O     7vwv k    6xx yzy r    {|{ I   ����}
�� .corecrel****      � null��  } ��~��
�� 
kocl~ m    ��
�� 
bcke��  | o      ���� 0 x  z � O    0��� k    /�� ��� I   #�����
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
prdt� K    �� �����
�� 
radd� o    ���� 0 rec  ��  ��  � ��� r   $ )��� o   $ %���� 0 sub  � 1   % (��
�� 
subj� ���� r   * /��� o   * +���� 0 msg  � 1   + .��
�� 
ctnt��  � o    ���� 0 x  � ���� I  1 6�����
�� .emsgsendbool        bcke� o   1 2���� 0 x  ��  ��  w m     ���                                                                                  emal  alis    \  Nerv_Central_Control       ��KH+  
�0�Mail.app                                                       
��Ǝ��        ����  	                Applications    ��      Ǝ�    
�0�  *Nerv_Central_Control:Applications:Mail.app    M a i l . a p p  *  N e r v _ C e n t r a l _ C o n t r o l  Applications/Mail.app   / ��  ��  f ��� l     ��������  ��  ��  � ��� w      ��� k      �� ��� i   � ���� I      ������� 0 read_indigo_variable  � ��� o      ���� 0 variable_name  � ���� o      ���� 0 default_val  ��  ��  � k     )�� ��� l     ������  � k e Read variable_name from Indigo's internal variable table.  Create the variable if it does not exist.   � ��� �   R e a d   v a r i a b l e _ n a m e   f r o m   I n d i g o ' s   i n t e r n a l   v a r i a b l e   t a b l e .     C r e a t e   t h e   v a r i a b l e   i f   i t   d o e s   n o t   e x i s t .� ��� Z     ������� H     	�� l    ������ I    �����
�� .coredoexbool        obj � 4     ��
� 
Vrbl� l   ��~�}� o    �|�| 0 variable_name  �~  �}  ��  ��  ��  � I   �{�z�
�{ .corecrel****      � null�z  � �y��
�y 
kocl� m    �x
�x 
Vrbl� �w��v
�w 
prdt� K    �� �u��
�u 
pnam� o    �t�t 0 variable_name  � �s��r
�s 
Valu� l   ��q�p� c    ��� o    �o�o 0 default_val  � m    �n
�n 
TEXT�q  �p  �r  �v  ��  ��  � ��m� L   ! )�� e   ! (�� n   ! (��� 1   % '�l
�l 
Valu� l  ! %��k�j� 4   ! %�i�
�i 
Vrbl� l  # $��h�g� o   # $�f�f 0 variable_name  �h  �g  �k  �j  �m  � ��� l     �e�d�c�e  �d  �c  � ��� i   � ���� I      �b��a�b 0 set_variable  � ��� o      �`�` 0 variable_name  � ��_� o      �^�^ 0 variable_value  �_  �a  � k     )�� ��� l     �]���]  � 5 / Set variable name into Indigo's variable table   � ��� ^   S e t   v a r i a b l e   n a m e   i n t o   I n d i g o ' s   v a r i a b l e   t a b l e� ��\� Z     )���[�� H     	�� l    ��Z�Y� I    �X��W
�X .coredoexbool        obj � 4     �V�
�V 
Vrbl� l   ��U�T� o    �S�S 0 variable_name  �U  �T  �W  �Z  �Y  � I   �R�Q�
�R .corecrel****      � null�Q  � �P��
�P 
kocl� m    �O
�O 
Vrbl� �N��M
�N 
prdt� K    �� �L��
�L 
pnam� o    �K�K 0 variable_name  � �J��I
�J 
Valu� l   ��H�G� c    ��� o    �F�F 0 variable_value  � m    �E
�E 
TEXT�H  �G  �I  �M  �[  � r    )��� l   "��D�C� c    "��� o     �B�B 0 variable_value  � m     !�A
�A 
TEXT�D  �C  � n      ��� 1   & (�@
�@ 
Valu� l  " &��?�>� 4   " &�=�
�= 
Vrbl� l  $ %��<�;� o   $ %�:�: 0 variable_name  �<  �;  �?  �>  �\  � ��� l     �9�8�7�9  �8  �7  � ��� i   � ���� I      �6��5�6 0 log_security  �  �4  o      �3�3 0 log_text  �4  �5  � k     	  l     �2�2   = 7 Write Log_Text to the Indigo Log with the Security Tag    � n   W r i t e   L o g _ T e x t   t o   t h e   I n d i g o   L o g   w i t h   t h e   S e c u r i t y   T a g �1 I    	�0	
�0 .INDOLog null���    utf8 c     

 o     �/�/ 0 log_text   m    �.
�. 
TEXT	 �-�,
�- 
LgTy m     �  S e c u r i t y�,  �1  �  l     �+�*�)�+  �*  �)    i   � � I      �(�'�( 0 check_heartbeats   �& o      �%�% 0 growl_enabled  �&  �'   k     �  l     �$�$     Check to see     �    C h e c k   t o   s e e    r       m     !! �""    o      �#�# 0 msg   #$# X    �%�"&% Z    �'(�!� ' =   )*) n    +,+ 4    �-
� 
cobj- m    �� , o    �� 0 x  * m    �
� boovtrue( k   ! �.. /0/ r   ! +121 b   ! )343 l  ! '5��5 c   ! '676 l  ! %8��8 n   ! %9:9 4   " %�;
� 
cobj; m   # $�� : o   ! "�� 0 x  �  �  7 m   % &�
� 
TEXT�  �  4 m   ' (<< �==  _ l a s t _ u p d a t e2 o      �� 0 variable_name  0 >?> l  , ,����  �  �  ? @A@ l  , ,�BC�  B ; 5			set v to my read_indigo_variable(variable_name, 0)   C �DD j 	 	 	 s e t   v   t o   m y   r e a d _ i n d i g o _ v a r i a b l e ( v a r i a b l e _ n a m e ,   0 )A EFE r   , :GHG n  , 8IJI I   - 8�K�� 0 time_elapsed  K L�L I   - 4�M�
� 0 read_indigo_variable  M NON o   . /�	�	 0 variable_name  O P�P m   / 0��  �  �
  �  �  J  f   , -H o      �� 0 dt  F Q�Q Z   ; �RS��R l  ; BT��T ?  ; BUVU o   ; <� �  0 dt  V o   < A���� >0 inactivity_heartbeat_watchdog Inactivity_Heartbeat_Watchdog�  �  S k   E �WW XYX r   E PZ[Z b   E N\]\ b   E L^_^ b   E H`a` o   E F���� 0 variable_name  a m   F Gbb �cc H   m a y   n o t   b e   a c t i v e .     I n a c t i v i t y   f o r  _ _   H Kded o   H I���� 0 dt  e m   I J���� <] m   L Mff �gg    m i n u t e s .[ o      ���� 0 log_msg  Y hih n  Q Wjkj I   R W��l���� 0 log_security  l m��m o   R S���� 0 log_msg  ��  ��  k  f   Q Ri non Z  X xpq����p o   X ]���� 0 	use_growl 	Use_Growlq Z  ` trs����r o   ` a���� 0 growl_enabled  s n  d ptut I   e p��v���� 0 send_to_growl  v wxw c   e kyzy l  e i{����{ n   e i|}| 4   f i��~
�� 
cobj~ m   g h���� } o   e f���� 0 x  ��  ��  z m   i j��
�� 
TEXTx �� m   k l�� ���  C h e c k   A l a r m��  ��  u  f   d e��  ��  ��  ��  o ���� r   y ���� b   y ~��� b   y |��� o   y z���� 0 msg  � o   z {���� 0 log_msg  � o   | }��
�� 
ret � o      ���� 0 msg  ��  �  �  �  �!  �   �" 0 x  & o    ���� 0 alarm_matrix Alarm_Matrix$ ��� l  � ���������  ��  ��  � ��� Z   � �������� o   � ����� D0  send_email_on_inactive_heartbeat  Send_Email_on_Inactive_Heartbeat� Z   � �������� H   � ��� l  � ������� =   � ���� o   � ����� 0 msg  � m   � ��� ���  ��  ��  � X   � ������ k   � ��� ��� n  � ���� I   � �������� 0 log_security  � ���� b   � ���� m   � ��� ��� B S e n d i n g   H e a r t B e a t   A l e r t   e m a i l   t o  � o   � ����� 0 x  ��  ��  �  f   � �� ���� n  � ���� I   � �������� 0 	send_mail  � ��� o   � ����� 0 x  � ��� m   � ��� ��� V S e c u r i t y   S e n s o r   H e a r t B e a t   I n a c t i v i t y   R e p o r t� ���� o   � ����� 0 msg  ��  ��  �  f   � ���  �� 0 x  � o   � ����� $0 se_ibeat_address SE_IBeat_Address��  ��  ��  ��  � ���� n  � ���� I   � �������� 0 set_variable  � ��� m   � ��� ��� $ C h e c k e d _ H e a r t b e a t s� ���� n  � ���� I   � ��������� 0 timestamp_str  ��  ��  �  f   � ���  ��  �  f   � ���   ��� l     ��������  ��  ��  � ��� i   ���� I      ������� 0 unrecognized_sensor  � ��� o      ���� 0 	eventtype 	eventType� ���� o      ���� 0 	device_id 	device_ID��  ��  � k     ��� ��� l     ������  � [ U Didn't find it in our Alarm_Matrix; populate the variables some reasonable defaults.   � ��� �   D i d n ' t   f i n d   i t   i n   o u r   A l a r m _ M a t r i x ;   p o p u l a t e   t h e   v a r i a b l e s   s o m e   r e a s o n a b l e   d e f a u l t s .� ��� r     ��� m     �� ��� & U n r e c o g n i z e d _ S e n s o r� o      ���� 0 sensor_name  � ��� r    ��� m    �� ���  � o      ���� 0 action_name  � ��� r    ��� m    	��
�� boovfals� o      ���� 0 action_bool  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 growling  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 chiming  � ��� r    ��� m    �� ���  � o      ���� 0 chime_device  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 
sound_file  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 heartbeat_monitor  � ��� r     #��� m     !��
�� boovfals� o      ���� 0 action_group  � ��� l  $ $��������  ��  ��  � ��� l  $ $������  � Y Smy log_security("(device ID " & device_ID & ")") --using type "UnRegistered Sensor"   � ��� � m y   l o g _ s e c u r i t y ( " ( d e v i c e   I D   "   &   d e v i c e _ I D   &   " ) " )   - - u s i n g   t y p e   " U n R e g i s t e r e d   S e n s o r "� ��� n  $ *��� I   % *������� 0 log_security  �  ��  m   % & � � S e c u r i t y   d e v i c e   i s   n o t   d e f i n e d   i n   ' s e c u r i t y   s a m p l e . s c p t '   A l a r m _ M a t r i x   p r o p e r t y .��  ��  �  f   $ %�  n  + 1 I   , 1������ 0 log_security   �� m   , -		 �

 � P l e a s e   a d d   a   n e w   l i n e   t o   t h e   A l a r m _ M a t r i x   p r o p e r t y   a t   t h e   t o p   o f   t h a t   f i l e��  ��    f   + ,  n  2 < I   3 <������ 0 log_security   �� b   3 8 b   3 6 m   3 4 � , w i t h   t h e   D e v i c e   I D   o f   o   4 5���� 0 	device_id 	device_ID m   6 7 �  .��  ��    f   2 3  r   = @ m   = >��
�� boovtrue o      ���� 0 alarm_detected    l  A A��������  ��  ��     Z   A r!"#��! G   A L$%$ =  A D&'& o   A B���� 0 	eventtype 	eventType' m   B C��
�� EnXSxSs1% =  G J()( o   G H���� 0 	eventtype 	eventType) m   H I��
�� EnXSxSs2" k   O V** +,+ r   O R-.- m   O P// �00  C l o s e d. o      ���� 0 action_name  , 1��1 r   S V232 m   S T��
�� boovfals3 o      ���� 0 action_bool  ��  # 454 G   Y d676 =  Y \898 o   Y Z���� 0 	eventtype 	eventType9 m   Z [��
�� EnXSxSs37 =  _ b:;: o   _ `���� 0 	eventtype 	eventType; m   ` a��
�� EnXSxSs45 <��< k   g n== >?> r   g j@A@ m   g hBB �CC  O p e n e dA o      ���� 0 action_name  ? D��D r   k nEFE m   k l��
�� boovtrueF o      ���� 0 action_bool  ��  ��  ��    G��G L   s �HH J   s II JKJ m   s t��
�� boovfalsK LML o   t u���� 0 sensor_name  M NON o   u v���� 0 action_name  O PQP o   v w���� 0 action_bool  Q RSR o   w x���� 0 growling  S TUT o   x y���� 0 chiming  U VWV o   y z�� 0 chime_device  W XYX o   z {�~�~ 0 
sound_file  Y Z[Z o   { |�}�} 0 heartbeat_monitor  [ \�|\ o   | }�{�{ 0 action_group  �|  ��  � ]^] l     �z�y�x�z  �y  �x  ^ _`_ i  aba I      �wc�v�w 0 decode_security  c ded o      �u�u 0 	eventtype 	eventTypee f�tf o      �s�s 0 	device_id 	device_ID�t  �v  b k    1gg hih l     �rjk�r  j X R Will take the eventType, and device_ID and decode it and return the decoded data.   k �ll �   W i l l   t a k e   t h e   e v e n t T y p e ,   a n d   d e v i c e _ I D   a n d   d e c o d e   i t   a n d   r e t u r n   t h e   d e c o d e d   d a t a .i mnm l     �qop�q  o D > found_in_matrix 	- boolean 	- true = found, false = not found   p �qq |   f o u n d _ i n _ m a t r i x   	 -   b o o l e a n   	 -   t r u e   =   f o u n d ,   f a l s e   =   n o t   f o u n dn rsr l     �ptu�p  t B < sensor_name     	- string  		- defined name in alarm_matrix   u �vv x   s e n s o r _ n a m e           	 -   s t r i n g     	 	 -   d e f i n e d   n a m e   i n   a l a r m _ m a t r i xs wxw l     �oyz�o  y 6 0 action_name	  	- string  		- "Open" or "Closed"   z �{{ `   a c t i o n _ n a m e 	     	 -   s t r i n g     	 	 -   " O p e n "   o r   " C l o s e d "x |}| l     �n~�n  ~ B < action_bool     		- string  		- true = open, false = closed    ��� x   a c t i o n _ b o o l           	 	 -   s t r i n g     	 	 -   t r u e   =   o p e n ,   f a l s e   =   c l o s e d} ��� l     �m���m  � b \ growling        		- boolean 	- true = growl message enabled, false = growl message disabled   � ��� �   g r o w l i n g                 	 	 -   b o o l e a n   	 -   t r u e   =   g r o w l   m e s s a g e   e n a b l e d ,   f a l s e   =   g r o w l   m e s s a g e   d i s a b l e d� ��� l     �l���l  � R L chiming         		- boolean 	- true = chime enabled, false = chime disabled   � ��� �   c h i m i n g                   	 	 -   b o o l e a n   	 -   t r u e   =   c h i m e   e n a b l e d ,   f a l s e   =   c h i m e   d i s a b l e d� ��� l     �k���k  � X R chime_device    		- string  		- device id for Chime device as set in alarm_matrix   � ��� �   c h i m e _ d e v i c e         	 	 -   s t r i n g     	 	 -   d e v i c e   i d   f o r   C h i m e   d e v i c e   a s   s e t   i n   a l a r m _ m a t r i x� ��� l     �j���j  � "  Ignore_Device 		- Boolean -   � ��� 8   I g n o r e _ D e v i c e   	 	 -   B o o l e a n   -� ��� l     �i���i  � &   Sound File		- Boolean / String.   � ��� @   S o u n d   F i l e 	 	 -   B o o l e a n   /   S t r i n g .� ��� l     �h���h  � #  Heartbeat_monitor 	- Boolean   � ��� :   H e a r t b e a t _ m o n i t o r   	 -   B o o l e a n� ��� l     �g�f�e�g  �f  �e  � ��� l     �d�c�b�d  �c  �b  � ��� X    (��a�� Z   #���`�_� =   ��� o    �^�^ 0 	device_id 	device_ID� n   ��� 4    �]�
�] 
cobj� m    �\�\ � o    �[�[ 0 	alarmdata  � k   �� ��� l   �Z���Z  �    The Device has been found   � ��� 4   T h e   D e v i c e   h a s   b e e n   f o u n d� ��� l   �Y�X�W�Y  �X  �W  � ��� r    &��� n   $��� I    $�V��U�V 0 read_indigo_variable  � ��� m    �� ��� . I g n o r e _ S e c u r i t y _ S e n s o r s� ��T� m     �S
�S boovtrue�T  �U  �  f    � o      �R�R 0 ignoresensor IgnoreSensor� ��� Z  ' 7���Q�P� =  ' *��� o   ' (�O�O 0 ignoresensor IgnoreSensor� m   ( )�N
�N boovfals� r   - 3��� n  - 1��� 4   . 1�M�
�M 
cobj� m   / 0�L�L � o   - .�K�K 0 	alarmdata  � o      �J�J 0 ignoresensor IgnoreSensor�Q  �P  � ��� l  8 8�I�H�G�I  �H  �G  � ��� Z  8 D���F�E� =  8 ;��� o   8 9�D�D 0 ignoresensor IgnoreSensor� m   9 :�C
�C boovtrue� L   > @�� m   > ?�B
�B boovfals�F  �E  � ��� l  E E�A���A  � , &  The device is flagged to be ignored.   � ��� L     T h e   d e v i c e   i s   f l a g g e d   t o   b e   i g n o r e d .� ��� l  E E�@�?�>�@  �?  �>  � ��� l  E E�=�<�;�=  �<  �;  � ��� r   E K��� n  E I��� 4   F I�:�
�: 
cobj� m   G H�9�9 � o   E F�8�8 0 	alarmdata  � o      �7�7 0 sensor_name  � ��� Z   L �����6� G   L _��� G   L W��� =  L O��� o   L M�5�5 0 	eventtype 	eventType� m   M N�4
�4 EnITxF03� =  R U��� o   R S�3�3 0 	eventtype 	eventType� m   S T�2
�2 EnXSxSs1� =  Z ]��� o   Z [�1�1 0 	eventtype 	eventType� m   [ \�0
�0 EnXSxSs2� k   b i�� ��� r   b e��� m   b c�� ���  C l o s e d� o      �/�/ 0 action_name  � ��.� r   f i��� m   f g�-
�- boovfals� o      �,�, 0 action_bool  �.  � � � G   l  G   l w =  l o o   l m�+�+ 0 	eventtype 	eventType m   m n�*
�* EnITxF02 =  r u o   r s�)�) 0 	eventtype 	eventType m   s t�(
�( EnXSxSs3 =  z }	
	 o   z {�'�' 0 	eventtype 	eventType
 m   { |�&
�& EnXSxSs4   k   � �  r   � � m   � � �  O p e n e d o      �%�% 0 action_name   �$ r   � � m   � ��#
�# boovtrue o      �"�" 0 action_bool  �$    G   � � =  � � o   � ��!�! 0 	eventtype 	eventType m   � �� 
�  EnXSxSa1 =  � � o   � ��� 0 	eventtype 	eventType m   � ��
� EnXSxSa2   k   � �!! "#" r   � �$%$ m   � �&& �''  H o m e   A r m e d% o      �� 0 action_name  # (�( r   � �)*) m   � ��
� boovtrue* o      �� 0 action_bool  �    +,+ G   � �-.- =  � �/0/ o   � ��� 0 	eventtype 	eventType0 m   � ��
� EnXSxSa3. =  � �121 o   � ��� 0 	eventtype 	eventType2 m   � ��
� EnXSxSa4, 343 k   � �55 676 r   � �898 m   � �:: �;;  A w a y   A r m e d9 o      �� 0 action_name  7 <�< r   � �=>= m   � ��
� boovtrue> o      �� 0 action_bool  �  4 ?@? =  � �ABA o   � ��� 0 	eventtype 	eventTypeB m   � ��
� EnXSxSda@ C�C k   � �DD EFE r   � �GHG m   � �II �JJ  D i s a r mH o      �� 0 action_name  F K�K r   � �LML m   � ��
� boovfalsM o      �� 0 action_bool  �  �  �6  � NON r   � �PQP n  � �RSR 4   � ��
T
�
 
cobjT m   � ��	�	 S o   � ��� 0 	alarmdata  Q o      �� 0 growling  O UVU r   � �WXW n  � �YZY 4   � ��[
� 
cobj[ m   � ��� Z o   � ��� 0 	alarmdata  X o      �� 0 chiming  V \]\ r   � �^_^ n  � �`a` 4   � ��b
� 
cobjb m   � ��� a o   � �� �  0 	alarmdata  _ o      ���� 0 chime_device  ] cdc r   � �efe n  � �ghg 4   � ���i
�� 
cobji m   � ����� h o   � ����� 0 	alarmdata  f o      ���� 0 
sound_file  d jkj r   �lml n  �non 4   ���p
�� 
cobjp m   ���� o o   � ����� 0 	alarmdata  m o      ���� 0 heartbeat_monitor  k qrq r  sts n uvu 4  ��w
�� 
cobjw m  	���� 	v o  ���� 0 	alarmdata  t o      ���� 0 action_group  r x��x L  yy J  zz {|{ m  ��
�� boovtrue| }~} o  ���� 0 sensor_name  ~ � o  ���� 0 action_name  � ��� o  ���� 0 action_bool  � ��� o  ���� 0 growling  � ��� o  ���� 0 chiming  � ��� o  ���� 0 chime_device  � ��� o  ���� 0 
sound_file  � ��� o  ���� 0 heartbeat_monitor  � ���� o  ���� 0 action_group  ��  ��  �`  �_  �a 0 	alarmdata  � o    ���� 0 alarm_matrix Alarm_Matrix� ���� L  )1�� n )0��� I  *0������� 0 unrecognized_sensor  � ��� o  *+���� 0 	eventtype 	eventType� ���� o  +,���� 0 	device_id 	device_ID��  ��  �  f  )*��  ` ��� l     ��������  ��  ��  � ��� i  
��� I      ������� 0 sound_chime  � ��� o      ���� 0 
soundchime 
SoundChime� ���� o      ���� 0 chime_device  ��  ��  � k     P�� ��� l     ������  � - 'my log_security("sound_chime function")   � ��� N m y   l o g _ s e c u r i t y ( " s o u n d _ c h i m e   f u n c t i o n " )� ���� Z     P������ =    ��� o     ���� 0 
soundchime 
SoundChime� m    ��
�� boovtrue� k    G�� ��� n   ��� I    ������� 0 log_security  � ���� m    �� ���  S o u n d i n g   C h i m e��  ��  �  f    � ���� Q    G���� k    �� ��� I   �����
�� .INDOOff null���    utf8� o    ���� 0 chime_device  ��  � ���� I   ����
�� .INDOOn  null���    utf8� o    ���� 0 chime_device  � �����
�� 
Dura� m    �� ?�      ��  ��  � R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� o      ���� 0 errnum errNum��  � Z   % G������� =  % (��� o   % &���� 0 errnum errNum� m   & '�����@� k   + C�� ��� n  + 1��� I   , 1������� 0 log_security  � ���� m   , -�� ��� � T h e   C h i m e   D e v i c e   d e f i n e d   i n   t h e   A l a r m _ M a t r i x   p r o p e r t y   d o e s   n o t   e x i s t .��  ��  �  f   + ,� ��� n  2 <��� I   3 <������� 0 log_security  � ���� b   3 8��� b   3 6��� m   3 4�� ��� T C r e a t e   a   n e w   I n d i g o   D e v i c e   w i t h   t h e   n a m e   "� o   4 5���� 0 chime_device  � m   6 7�� ���  " ,   o r   m o d i f y��  ��  �  f   2 3� ���� n  = C��� I   > C������� 0 log_security  � ���� m   > ?�� ��� � t h e   A l a r m _ M a t r i x   p r o p e r t y   a t   t h e   t o p   o f   t h e   ' s e c u r i t y   s a m p l e . s c p t '   f i l e .��  ��  �  f   = >��  ��  ��  ��  ��  � n  J P��� I   K P������� 0 log_security  � ���� m   K L�� ��� ^ C h i m e   S u p r e s s e d . . .   ( D u e   t o   S o u n d C h i m e   V a r i a b l e )��  ��  �  f   J K��  � ��� l     ��������  ��  ��  � ��� i  ��� I      ������� 0 do_chime  � ��� o      ���� 0 chime_enabled  � ��� o      ���� 0 action_bool  � ���� o      ���� 0 chime_device  ��  ��  � k     w�� ��� Z    ������� F     ��� o     ���� (0 chime_only_on_open Chime_Only_On_Open� =    � � o    	���� 0 action_bool    m   	 
��
�� boovfals� r     m    ��
�� boovfals o      ���� 0 chime_enabled  ��  ��  � �� Z    w���� o    ���� 0 chime_enabled   Z    s���� =    %	 I    #��
���� 0 read_indigo_variable  
  m     � * T i m e r _ C h i m e _ A v a i l a b l e �� m     �  0��  ��  	 m   # $ �  0 k   ( o  n  ( 3 I   ) 3������ 0 set_variable    l  ) *���� m   ) * � $ C h i m e _ L a s t _ S o u n d e d��  ��   �� n  * / !  I   + /�������� 0 timestamp_str  ��  ��  !  f   * +��  ��    f   ( ) "#" n  4 A$%$ I   5 A��&���� 0 set_variable  & '(' m   5 6)) �** * T i m e r _ C h i m e _ A v a i l a b l e( +��+ ]   6 =,-, o   6 ;���� "0 chime_min_delay Chime_Min_delay- m   ; <���� <��  ��  %  f   4 5# ./. r   B K010 n  B I232 I   C I��4���� 0 read_indigo_variable  4 565 m   C D77 �88  S o u n d C h i m e6 9��9 m   D E��
�� boovtrue��  ��  3  f   B C1 o      ���� 0 soundchimestr soundChimeStr/ :;: l  L L��<=��  < Q Kif Chime_Only_On_Open is false or action_bool then set soundChimeStr to "0"   = �>> � i f   C h i m e _ O n l y _ O n _ O p e n   i s   f a l s e   o r   a c t i o n _ b o o l   t h e n   s e t   s o u n d C h i m e S t r   t o   " 0 "; ?��? Z   L o@A��B@ G   L _CDC G   L WEFE =  L OGHG o   L M���� 0 soundchimestr soundChimeStrH m   M NII �JJ  t r u eF =  R UKLK o   R S���� 0 soundchimestr soundChimeStrL m   S TMM �NN  T r u eD =  Z ]OPO o   Z [�� 0 soundchimestr soundChimeStrP m   [ \QQ �RR  1A n  b iSTS I   c i�~U�}�~ 0 sound_chime  U VWV m   c d�|
�| boovtrueW X�{X o   d e�z�z 0 chime_device  �{  �}  T  f   b c��  B r   l oYZY m   l m�y
�y boovfalsZ o      �x�x 0 
soundchime 
SoundChime��  ��  ��  ��  ��  ��  � [\[ l     �w�v�u�w  �v  �u  \ ]^] i  _`_ I      �ta�s�t 0 play_sound_file  a bcb o      �r�r 0 soundfile_to_play  c d�qd o      �p�p 0 action_bool  �q  �s  ` k     .ee fgf n    hih I    �oj�n�o 0 log_security  j k�mk o    �l�l 0 soundfile_to_play  �m  �n  i  f     g l�kl Z    .mn�j�im F    opo H    qq l   
r�h�gr =   
sts o    �f�f 0 soundfile_to_play  t m    	�e
�e boovfals�h  �g  p o    �d�d 0 action_bool  n k    *uu vwv n   xyx I    �cz�b�c 0 log_security  z {�a{ m    || �}} 2 P l a y i n g   c u s t o m   S o u n d   f i l e�a  �b  y  f    w ~�`~ I   *�_�^
�_ .sysoexecTEXT���     TEXT b    &��� b    $��� b    "��� m    �� ���  o p e n   - a  � o    !�]�] (0 playsound_location PlaySound_Location� m   " #�� ���   P l a y \   S o u n d . a p p  � o   $ %�\�\ 0 soundfile_to_play  �^  �`  �j  �i  �k  ^ ��� l     �[�Z�Y�[  �Z  �Y  � ��X� i  ��� I      �W��V�W 0 do_security_event  � ��� o      �U�U 0 	eventtype 	eventType� ��T� o      �S�S 0 devid devID�T  �V  � k    t�� ��� r     ��� m     �R
�R boovfals� o      �Q�Q 0 found_in_matrix  � ��� l   �P�O�N�P  �O  �N  � ��� r    ��� n   ��� I    �M��L�M 0 decode_security  � ��� o    �K�K 0 	eventtype 	eventType� ��J� o    �I�I 0 devid devID�J  �L  �  f    � o      �H�H 0 decoded_data  � ��� l   �G���G  � h b found_in_matrix, sensor_name, action_name, action_bool, growl_enabled, chime_device, chime_device   � ��� �   f o u n d _ i n _ m a t r i x ,   s e n s o r _ n a m e ,   a c t i o n _ n a m e ,   a c t i o n _ b o o l ,   g r o w l _ e n a b l e d ,   c h i m e _ d e v i c e ,   c h i m e _ d e v i c e� ��� l   �F�E�D�F  �E  �D  � ��� Z   ���C�B� =   ��� o    �A�A 0 decoded_data  � m    �@
�@ boovfals� L    �?�?  �C  �B  � ��� l   �>���>  �   Sensor is to be ignored.   � ��� 2   S e n s o r   i s   t o   b e   i g n o r e d .� ��� l   �=�<�;�=  �<  �;  � ��� r    !��� n    ��� 4    �:�
�: 
cobj� m    �9�9 � o    �8�8 0 decoded_data  � o      �7�7 0 found_in_matrix  � ��� r   " (��� n   " &��� 4   # &�6�
�6 
cobj� m   $ %�5�5 � o   " #�4�4 0 decoded_data  � o      �3�3 0 sensor_name  � ��� r   ) /��� n   ) -��� 4   * -�2�
�2 
cobj� m   + ,�1�1 � o   ) *�0�0 0 decoded_data  � o      �/�/ 0 action_name  � ��� r   0 6��� n   0 4��� 4   1 4�.�
�. 
cobj� m   2 3�-�- � o   0 1�,�, 0 decoded_data  � o      �+�+ 0 action_bool  � ��� r   7 =��� n   7 ;��� 4   8 ;�*�
�* 
cobj� m   9 :�)�) � o   7 8�(�( 0 decoded_data  � o      �'�' 0 growl_enabled  � ��� r   > D��� n   > B��� 4   ? B�&�
�& 
cobj� m   @ A�%�% � o   > ?�$�$ 0 decoded_data  � o      �#�# 0 chime_enabled  � ��� r   E K��� n   E I��� 4   F I�"�
�" 
cobj� m   G H�!�! � o   E F� �  0 decoded_data  � o      �� 0 chime_device  � ��� r   L R��� n   L P��� 4   M P��
� 
cobj� m   N O�� � o   L M�� 0 decoded_data  � o      �� 0 
sound_file  � ��� r   S Y��� n   S W��� 4   T W��
� 
cobj� m   U V�� 	� o   S T�� 0 decoded_data  � o      �� 0 monitor  � ��� r   Z `��� n   Z ^��� 4   [ ^��
� 
cobj� m   \ ]�� 
� o   Z [�� 0 decoded_data  � o      �� 0 action_group  � ��� l  a a����  �  �  � 	 		  Z   a �			�	 =  a d			 o   a b�� 0 action_name  	 m   b c		 �		  H o m e   A r m e d	 I  g n�		�
� .INDOExeGnull���    utf8		 l  g j	
��
	
 b   g j			 o   g h�	�	 0 sensor_name  	 m   h i		 �		  _ A r m H o m e�  �
  �  	 			 =  q t			 o   q r�� 0 action_name  	 m   r s		 �		  A w a y   A r m e d	 			 I  w ~�	�
� .INDOExeGnull���    utf8	 l  w z	��	 b   w z			 o   w x�� 0 sensor_name  	 m   x y		 �		  _ A r m A w a y�  �  �  	 			 =  � �		 	 o   � ��� 0 action_name  	  m   � �	!	! �	"	"  D i s a r m	 	#�	# I  � �� 	$��
�  .INDOExeGnull���    utf8	$ l  � �	%����	% b   � �	&	'	& o   � ����� 0 sensor_name  	' m   � �	(	( �	)	)  _ D i s a r m��  ��  ��  �  �  	 	*	+	* l  � ���������  ��  ��  	+ 	,	-	, l  � ���	.	/��  	.   Check for Heartbeat   	/ �	0	0 (   C h e c k   f o r   H e a r t b e a t	- 	1	2	1 r   � �	3	4	3 m   � ���
�� boovfals	4 o      ���� 0 	heartbeat  	2 	5	6	5 Z   � �	7	8��	9	7 l  � �	:����	: >  � �	;	<	; n  � �	=	>	= I   � ���	?���� 0 read_indigo_variable  	? 	@	A	@ b   � �	B	C	B o   � ����� 0 sensor_name  	C m   � �	D	D �	E	E  _ l a s t _ s t a t u s	A 	F��	F m   � �	G	G �	H	H  C l o s e d��  ��  	>  f   � �	< o   � ����� 0 action_name  ��  ��  	8 k   � �	I	I 	J	K	J l  � ���	L	M��  	L &  my log_security("Non heartbeat")   	M �	N	N @ m y   l o g _ s e c u r i t y ( " N o n   h e a r t b e a t " )	K 	O	P	O l  � ���	Q	R��  	Q ^ X Check for heart beat by checking to see if this is a rebroadcast of the previous status   	R �	S	S �   C h e c k   f o r   h e a r t   b e a t   b y   c h e c k i n g   t o   s e e   i f   t h i s   i s   a   r e b r o a d c a s t   o f   t h e   p r e v i o u s   s t a t u s	P 	T	U	T l  � ���	V	W��  	V = 7 Previous Sensor readings exist, but are not duplicates   	W �	X	X n   P r e v i o u s   S e n s o r   r e a d i n g s   e x i s t ,   b u t   a r e   n o t   d u p l i c a t e s	U 	Y	Z	Y l  � ���	[	\��  	[ $ eg. New status change, log it.   	\ �	]	] < e g .   N e w   s t a t u s   c h a n g e ,   l o g   i t .	Z 	^	_	^ n  � �	`	a	` I   � ���	b���� 0 set_variable  	b 	c	d	c b   � �	e	f	e o   � ����� 0 sensor_name  	f m   � �	g	g �	h	h  _ l a s t _ u p d a t e	d 	i��	i n  � �	j	k	j I   � ��������� 0 timestamp_str  ��  ��  	k  f   � ���  ��  	a  f   � �	_ 	l	m	l n  � �	n	o	n I   � ���	p���� 0 set_variable  	p 	q	r	q b   � �	s	t	s o   � ����� 0 sensor_name  	t m   � �	u	u �	v	v  _ i s _ o p e n	r 	w��	w o   � ����� 0 action_bool  ��  ��  	o  f   � �	m 	x��	x n  � �	y	z	y I   � ���	{���� 0 set_variable  	{ 	|	}	| b   � �	~		~ o   � ����� 0 sensor_name  	 m   � �	�	� �	�	�  _ l a s t _ s t a t u s	} 	���	� o   � ����� 0 action_name  ��  ��  	z  f   � ���  ��  	9 k   � �	�	� 	�	�	� l  � ���	�	���  	� - 'my log_security("Processing Heartbeat")   	� �	�	� N m y   l o g _ s e c u r i t y ( " P r o c e s s i n g   H e a r t b e a t " )	� 	�	�	� l  � ���	�	���  	� ( " Previous readings, are duplicates   	� �	�	� D   P r e v i o u s   r e a d i n g s ,   a r e   d u p l i c a t e s	� 	�	�	� n  � �	�	�	� I   � ���	����� 0 log_security  	� 	���	� b   � �	�	�	� m   � �	�	� �	�	� 2 H e a r t   B e a t   d e t e c t e d   f r o m  	� o   � ����� 0 sensor_name  ��  ��  	�  f   � �	� 	�	�	� n  � �	�	�	� I   � ���	����� 0 set_variable  	� 	�	�	� l  � �	�����	� b   � �	�	�	� o   � ����� 0 sensor_name  	� m   � �	�	� �	�	�  _ l a s t _ u p d a t e��  ��  	� 	���	� n  � �	�	�	� I   � ��������� 0 timestamp_str  ��  ��  	�  f   � ���  ��  	�  f   � �	� 	���	� r   � �	�	�	� m   � ���
�� boovtrue	� o      ���� 0 	heartbeat  ��  	6 	�	�	� l  � ���������  ��  ��  	� 	�	�	� Z   �m	�	�����	� =  � �	�	�	� o   � ����� 0 	heartbeat  	� m   � ���
�� boovfals	� k   �i	�	� 	�	�	� l  � ���	�	���  	� 7 1 Log/chime/beep/growl the non-heartbeat activity.   	� �	�	� b   L o g / c h i m e / b e e p / g r o w l   t h e   n o n - h e a r t b e a t   a c t i v i t y .	� 	�	�	� n  �	�	�	� I   ���	����� 0 log_security  	� 	���	� b   �
	�	�	� b   �	�	�	� b   �	�	�	� b   �	�	�	� I   � ��������� 0 timestamp_str  ��  ��  	� m   �	�	� �	�	�   	� o  ���� 0 sensor_name  	� m  	�	� �	�	�   	� o  	���� 0 action_name  ��  ��  	�  f   � �	� 	�	�	� Z 	�	�����	� o  ���� 0 action_bool  	� I ������
�� .sysobeepnull��� ��� long��  ��  ��  ��  	� 	�	�	� n %	�	�	� I  %��	����� 0 do_chime  	� 	�	�	� o  ���� 0 chime_enabled  	� 	�	�	� o   ���� 0 action_bool  	� 	���	� o   !���� 0 chime_device  ��  ��  	�  f  	� 	�	�	� l &&��������  ��  ��  	� 	�	�	� Z &7	�	�����	� > &)	�	�	� o  &'���� 0 
sound_file  	� m  '(��
�� boovfals	� I  ,3��	����� 0 play_sound_file  	� 	�	�	� o  -.���� 0 
sound_file  	� 	���	� o  ./���� 0 action_bool  ��  ��  ��  ��  	� 	�	�	� l 88��������  ��  ��  	� 	�	�	� l 88��	�	���  	�   Send Growl Notification   	� �	�	� 0   S e n d   G r o w l   N o t i f i c a t i o n	� 	�	�	� Z 8S	�	�����	� o  8=���� 0 	use_growl 	Use_Growl	� Z @O	�	�����	� o  @A���� 0 growl_enabled  	� n DK	�	�	� I  EK��	����� 0 send_to_growl  	� 	�	�	� o  EF���� 0 sensor_name  	� 	���	� o  FG���� 0 action_name  ��  ��  	�  f  DE��  ��  ��  ��  	� 	�	�	� l TT��������  ��  ��  	� 	�	�	� Z Tg	�	�����	� o  TY���� 0 speak_alarms Speak_Alarms	� I  \c��	�����  0 say_alarm_text Say_Alarm_Text	� 	�	�	� o  ]^���� 0 sensor_name  	� 
 ��
  o  ^_���� 0 action_name  ��  ��  ��  ��  	� 
��
 l hh��������  ��  ��  ��  ��  ��  	� 
�
 n nt


 I  ot�~
�}�~ 0 check_heartbeats  
 
�|
 o  op�{�{ 0 growl_enabled  �|  �}  
  f  no�  �X  �>                                                                                  INDO  alis    �  Nerv_Central_Control       ��KH+   �@IndigoServer.app                                                ���k.A        ����  	                Indigo 4    ��      �kt�     �@
��;
�:�
�1<  `Nerv_Central_Control:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p  *  N e r v _ C e n t r a l _ C o n t r o l  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��  � 


 l     �z�y�x�z  �y  �x  
 
	


	 l     �w�v�u�w  �v  �u  

 


 l     �t

�t  
 b \--------------------------------------------------------------------------------------------   
 �

 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 


 w      


 k      

 


 i  


 I     �s


�s .INDOprScnull���   0 EnXS
 o      �r�r 0 	eventtype 	eventType
 �q
�p
�q 
ScCd
 o      �o�o 0 devid devID�p  
 k     


 


 l     �n

 �n  
  my log_security(devID)   
  �
!
! , m y   l o g _ s e c u r i t y ( d e v I D )
 
"
#
" I     �m
$�l�m 0 do_security_event  
$ 
%
&
% o    �k�k 0 	eventtype 	eventType
& 
'�j
' o    �i�i 0 devid devID�j  �l  
# 
(�h
( L    
�g�g  �h  
 
)
*
) l     �f�e�d�f  �e  �d  
* 
+
,
+ i  
-
.
- I     �c
/
0
�c .INDOpITNnull���   0 EnIT
/ o      �b�b 0 	eventtype 	eventType
0 �a
1
2
�a 
ToIA
1 o      �`�` 0 
addrstring 
addrString
2 �_
3
4
�_ 
GrpN
3 o      �^�^ 0 groupnum groupNum
4 �]
5
6
�] 
By  
5 o      �\�\ 0 deltaval deltaVal
6 �[
7�Z
�[ 
StBn
7 o      �Y�Y 0 absval absVal�Z  
. k     �
8
8 
9
:
9 l     �X
;
<�X  
; 0 *my log_security("Insteon Event Detected.")   
< �
=
= T m y   l o g _ s e c u r i t y ( " I n s t e o n   E v e n t   D e t e c t e d . " )
: 
>
?
> l     �W
@
A�W  
@ ; 5my log_security("Checking against Security Devices.")   
A �
B
B j m y   l o g _ s e c u r i t y ( " C h e c k i n g   a g a i n s t   S e c u r i t y   D e v i c e s . " )
? 
C
D
C l     �V�U�T�V  �U  �T  
D 
E
F
E Z     $
G
H�S�R
G F     
I
J
I F     
K
L
K F     
M
N
M >    
O
P
O o     �Q�Q 0 	eventtype 	eventType
P m    �P
�P EnITxF02
N >   	
Q
R
Q o    �O�O 0 	eventtype 	eventType
R m    �N
�N EnITxF03
L >   
S
T
S o    �M�M 0 	eventtype 	eventType
T m    �L
�L EnITxF16
J >   
U
V
U o    �K�K 0 	eventtype 	eventType
V m    �J
�J EnITxF17
H l    
W
X
Y
W L     �I�I  
X . ( not a command type we are interested in   
Y �
Z
Z P   n o t   a   c o m m a n d   t y p e   w e   a r e   i n t e r e s t e d   i n�S  �R  
F 
[
\
[ l  % %�H�G�F�H  �G  �F  
\ 
]
^
] Z   % w
_
`�E�D
_ =  % ,
a
b
a o   % *�C�C 20 securitydeviceaddresses securityDeviceAddresses
b m   * +
c
c �
d
d 
 e m p t y
` l  / s
e
f
g
e k   / s
h
h 
i
j
i r   / 7
k
l
k J   / 1�B�B  
l o      �A�A 20 securitydeviceaddresses securityDeviceAddresses
j 
m�@
m X   8 s
n�?
o
n Z   J n
p
q�>�=
p =  J O
r
s
r n   J M
t
u
t 1   K M�<
�< 
DvTp
u o   J K�;�; 0 dev  
s m   M N
v
v �
w
w  T r i g g e r L i n c
q k   R j
x
x 
y
z
y r   R \
{
|
{ n  R Z
}
~
} I   S Z�:
�9�: 20 _converthexstrtointeger _convertHexStrToInteger
 
��8
� n   S V
�
�
� 1   T V�7
�7 
X10a
� o   S T�6�6 0 dev  �8  �9  
~  f   R S
| o      �5�5 0 addrval addrVal
z 
��4
� r   ] j
�
�
� b   ] d
�
�
� o   ] b�3�3 20 securitydeviceaddresses securityDeviceAddresses
� o   b c�2�2 0 addrval addrVal
� o      �1�1 20 securitydeviceaddresses securityDeviceAddresses�4  �>  �=  �? 0 dev  
o 2  ; >�0
�0 
Devc�@  
f 3 - only calculate first time we are ever called   
g �
�
� Z   o n l y   c a l c u l a t e   f i r s t   t i m e   w e   a r e   e v e r   c a l l e d�E  �D  
^ 
�
�
� l  x x�/�.�-�/  �.  �-  
� 
�
�
� r   x {
�
�
� m   x y�,
�, boovfals
� o      �+�+ 0 
foundmatch 
foundMatch
� 
�
�
� X   | �
��*
�
� Z   � �
�
��)�(
� =   � �
�
�
� l  � �
��'�&
� c   � �
�
�
� o   � ��%�% 0 devaddr devAddr
� m   � ��$
�$ 
long�'  �&  
� l  � �
��#�"
� c   � �
�
�
� o   � ��!�! 0 
addrstring 
addrString
� m   � �� 
�  
long�#  �"  
� r   � �
�
�
� m   � ��
� boovtrue
� o      �� 0 
foundmatch 
foundMatch�)  �(  �* 0 devaddr devAddr
� o    ��� 20 securitydeviceaddresses securityDeviceAddresses
� 
�
�
� Z   � �
�
���
� H   � �
�
� o   � ��� 0 
foundmatch 
foundMatch
� k   � �
�
� 
�
�
� l  � ��
�
��  
� . (my log_security("Is not a triggerlinc.")   
� �
�
� P m y   l o g _ s e c u r i t y ( " I s   n o t   a   t r i g g e r l i n c . " )
� 
��
� l  � �
�
�
�
� L   � ���  
� 0 * not a device address we are interested in   
� �
�
� T   n o t   a   d e v i c e   a d d r e s s   w e   a r e   i n t e r e s t e d   i n�  �  �  
� 
�
�
� l  � �����  �  �  
� 
�
�
� n  � �
�
�
� I   � ��
��� 0 log_security  
� 
��
� m   � �
�
� �
�
� L I n s t e o n   S e c u r i t y   E v e n t   b e i n g   p r o c e s s e d�  �  
�  f   � �
� 
�
�
� r   � �
�
�
� o   � ��� 0 
addrstring 
addrString
� o      �� 0 devid devID
� 
�
�
� l  � ��
�
��  
� 8 2 If you get here you know that it is a TriggerLinc   
� �
�
� d   I f   y o u   g e t   h e r e   y o u   k n o w   t h a t   i t   i s   a   T r i g g e r L i n c
� 
�
�
� I   � ��
��� 0 do_security_event  
� 
�
�
� o   � ��� 0 	eventtype 	eventType
� 
��

� o   � ��	�	 0 devid devID�
  �  
� 
�
�
� l  � ��
�
��  
� . (my log_security("TriggerLinc Detected.")   
� �
�
� P m y   l o g _ s e c u r i t y ( " T r i g g e r L i n c   D e t e c t e d . " )
� 
��
� L   � ���  �  
, 
��
� l    
���
� n    
�
�
� I    �
��� 0 log_security  
� 
�� 
� m    
�
� �
�
� < S e c u r i t y   E v e n t   P r o c e s s i n g   D o n e�   �  
�  f     �  �  �  
>                                                                                  INDO  alis    �  Nerv_Central_Control       ��KH+   �@IndigoServer.app                                                ���k.A        ����  	                Indigo 4    ��      �kt�     �@
��;
�:�
�1<  `Nerv_Central_Control:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p  *  N e r v _ C e n t r a l _ C o n t r o l  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��  
 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
� J Drun script ("/Users/<username>/Documents/woohoo.scpt" as POSIX file)   
� �
�
� � r u n   s c r i p t   ( " / U s e r s / < u s e r n a m e > / D o c u m e n t s / w o o h o o . s c p t "   a s   P O S I X   f i l e )
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
� I C 2006.09.27 Removed deprecated "continue..." line. (Matt Bendiksen)   
� �
�
� �   2 0 0 6 . 0 9 . 2 7   R e m o v e d   d e p r e c a t e d   " c o n t i n u e . . . "   l i n e .   ( M a t t   B e n d i k s e n )
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
� 6 0 2008.02.17 Major rewrite. (Benjamin Schollnick)   
� �
�
� `   2 0 0 8 . 0 2 . 1 7   M a j o r   r e w r i t e .   ( B e n j a m i n   S c h o l l n i c k )
� 
�
�
� l     ��
�
���  
� + %    http://schollnick.info/wordpress/   
� �
�
� J         h t t p : / / s c h o l l n i c k . i n f o / w o r d p r e s s /
� 
�
�
� l     ��
�
���  
�      
� �
�
�   
� 
�
�
� l     ��
�
���  
� < 6 2008.03.30 Enhancements and cleanup. (Matt Bendiksen)   
� �
�
� l   2 0 0 8 . 0 3 . 3 0   E n h a n c e m e n t s   a n d   c l e a n u p .   ( M a t t   B e n d i k s e n )
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
�   v1.0 - General Release   
� �   .   v 1 . 0   -   G e n e r a l   R e l e a s e
�  l     ��������  ��  ��    l     ����   p j v1.2 - Fixed issue with unregistered Alarms not chiming.  Previously they would only show up in log file.    � �   v 1 . 2   -   F i x e d   i s s u e   w i t h   u n r e g i s t e r e d   A l a r m s   n o t   c h i m i n g .     P r e v i o u s l y   t h e y   w o u l d   o n l y   s h o w   u p   i n   l o g   f i l e . 	 l     ��
��  
 - '         - Created function for chiming    � N                   -   C r e a t e d   f u n c t i o n   f o r   c h i m i n g	  l     ����   f `         - Now any Unregistered Alarms will have "Unregistered Sensor" prefixed to the log entry    � �                   -   N o w   a n y   U n r e g i s t e r e d   A l a r m s   w i l l   h a v e   " U n r e g i s t e r e d   S e n s o r "   p r e f i x e d   t o   t h e   l o g   e n t r y  l     ����   K E         - Alarm entries will have "alarm" prefixed to the log entry.    � �                   -   A l a r m   e n t r i e s   w i l l   h a v e   " a l a r m "   p r e f i x e d   t o   t h e   l o g   e n t r y .  l     ��������  ��  ��    l     ����   A ; v1.3 - Added HeartBeat detection, and heartbeat recording.    � v   v 1 . 3   -   A d d e d   H e a r t B e a t   d e t e c t i o n ,   a n d   h e a r t b e a t   r e c o r d i n g .  l     �� !��    { u         - Previously only decoding the Min alarm settings.  Now the max alarms are being mapped to the min settings.   ! �"" �                   -   P r e v i o u s l y   o n l y   d e c o d i n g   t h e   M i n   a l a r m   s e t t i n g s .     N o w   t h e   m a x   a l a r m s   a r e   b e i n g   m a p p e d   t o   t h e   m i n   s e t t i n g s . #$# l     ��%&��  % _ Y            If anyone needs to distinguish between a min or max alarm please let me know.   & �'' �                         I f   a n y o n e   n e e d s   t o   d i s t i n g u i s h   b e t w e e n   a   m i n   o r   m a x   a l a r m   p l e a s e   l e t   m e   k n o w .$ ()( l     ��������  ��  ��  ) *+* l     ��,-��  , X R v1.4 - Started to merge changes with suggestions from Matt Bendiksen. (3/30/2008)   - �.. �   v 1 . 4   -   S t a r t e d   t o   m e r g e   c h a n g e s   w i t h   s u g g e s t i o n s   f r o m   M a t t   B e n d i k s e n .   ( 3 / 3 0 / 2 0 0 8 )+ /0/ l     ��������  ��  ��  0 121 l     ��34��  3 > 8 v1.5 - Added Heartbeat inactivity detection	(5/28/2008)   4 �55 p   v 1 . 5   -   A d d e d   H e a r t b e a t   i n a c t i v i t y   d e t e c t i o n 	 ( 5 / 2 8 / 2 0 0 8 )2 676 l     ��89��  8 : 4		- Growl Support for Heartbeat inactivity detection   9 �:: h 	 	 -   G r o w l   S u p p o r t   f o r   H e a r t b e a t   i n a c t i v i t y   d e t e c t i o n7 ;<; l     ��=>��  = ' !		- Email on Heartbeat inactivity   > �?? B 	 	 -   E m a i l   o n   H e a r t b e a t   i n a c t i v i t y< @A@ l     ��BC��  B v p		- Added optional switch (Update_Heartbeat_After_Actions) to allow heartbeat to be updated after every action.    C �DD � 	 	 -   A d d e d   o p t i o n a l   s w i t c h   ( U p d a t e _ H e a r t b e a t _ A f t e r _ A c t i o n s )   t o   a l l o w   h e a r t b e a t   t o   b e   u p d a t e d   a f t e r   e v e r y   a c t i o n .  A EFE l     ��GH��  G ( "		- Added the following variables:   H �II D 	 	 -   A d d e d   t h e   f o l l o w i n g   v a r i a b l e s :F JKJ l     ��LM��  L ( "			- Inactivity_Heartbeat_Watchdog   M �NN D 	 	 	 -   I n a c t i v i t y _ H e a r t b e a t _ W a t c h d o gK OPO l     ��QR��  Q ) #			- Update_Heartbeat_After_Actions   R �SS F 	 	 	 -   U p d a t e _ H e a r t b e a t _ A f t e r _ A c t i o n sP TUT l     ��VW��  V  			- SE_IBeat_Address   W �XX * 	 	 	 -   S E _ I B e a t _ A d d r e s sU YZY l     ��[\��  [ + %			- Send_Email_on_Inactive_Heartbeat   \ �]] J 	 	 	 -   S e n d _ E m a i l _ o n _ I n a c t i v e _ H e a r t b e a tZ ^_^ l     ��������  ��  ��  _ `a` l     ��bc��  b #  v1.65 - Added Speech Support   c �dd :   v 1 . 6 5   -   A d d e d   S p e e c h   S u p p o r ta efe l     ��gh��  g M G			- Added Speech support for Open Sensor, and Closed Sensor detection.   h �ii � 	 	 	 -   A d d e d   S p e e c h   s u p p o r t   f o r   O p e n   S e n s o r ,   a n d   C l o s e d   S e n s o r   d e t e c t i o n .f jkj l     ��lm��  l 5 /			- Added Ignore Flag (Alarm Matrix #6 Option)   m �nn ^ 	 	 	 -   A d d e d   I g n o r e   F l a g   ( A l a r m   M a t r i x   # 6   O p t i o n )k opo l     ��qr��  q V P v2.00 - Working at optimizing the code, and adding better comments for newbies.   r �ss �   v 2 . 0 0   -   W o r k i n g   a t   o p t i m i z i n g   t h e   c o d e ,   a n d   a d d i n g   b e t t e r   c o m m e n t s   f o r   n e w b i e s .p tut l     ��������  ��  ��  u vwv l     ��xy��  x @ : v3.00 - Removed Several log messages, that were redundant   y �zz t   v 3 . 0 0   -   R e m o v e d   S e v e r a l   l o g   m e s s a g e s ,   t h a t   w e r e   r e d u n d a n tw {|{ l     ��}~��  } A ;			- Added support for Timer applescript background process   ~ � v 	 	 	 -   A d d e d   s u p p o r t   f o r   T i m e r   a p p l e s c r i p t   b a c k g r o u n d   p r o c e s s| ��� l     ������  � * $			- Cleaned up the Applescript code   � ��� H 	 	 	 -   C l e a n e d   u p   t h e   A p p l e s c r i p t   c o d e� ��� l     ������  � b \			- Fixed the ignore sensor routine to eliminate warnings for inactivity on ignored sensors   � ��� � 	 	 	 -   F i x e d   t h e   i g n o r e   s e n s o r   r o u t i n e   t o   e l i m i n a t e   w a r n i n g s   f o r   i n a c t i v i t y   o n   i g n o r e d   s e n s o r s� ��� l     ������  � / )			- Added Insteon / TriggerLinc Support.   � ��� R 	 	 	 -   A d d e d   I n s t e o n   /   T r i g g e r L i n c   S u p p o r t .� ��� l     ������  � u o			- Fixed small bug in Growl code, code now attempts to verify Growl is running before sending a growl request   � ��� � 	 	 	 -   F i x e d   s m a l l   b u g   i n   G r o w l   c o d e ,   c o d e   n o w   a t t e m p t s   t o   v e r i f y   G r o w l   i s   r u n n i n g   b e f o r e   s e n d i n g   a   g r o w l   r e q u e s t� ��� l     ������  � ' !			- Streamlined some of the code   � ��� B 	 	 	 -   S t r e a m l i n e d   s o m e   o f   t h e   c o d e� ��� l     ��������  ��  ��  � ��� l     ������  � 1 + v3.01 - Fixed the Unrecognized Sensor code   � ��� V   v 3 . 0 1   -   F i x e d   t h e   U n r e c o g n i z e d   S e n s o r   c o d e� ��� l     ������  � 8 2		- Fixed Check Heart code, when growl is enabled.   � ��� d 	 	 -   F i x e d   C h e c k   H e a r t   c o d e ,   w h e n   g r o w l   i s   e n a b l e d .� ���� l     ��������  ��  ��  ��       %�����������������������GQ����������������������  � #������������������������������������������������������������������������ 0 alarm_matrix Alarm_Matrix�� 0 speak_alarms Speak_Alarms�� (0 sensor_speech_text Sensor_Speech_Text�� 0 speech_voice Speech_Voice�� (0 chime_only_on_open Chime_Only_On_Open�� "0 chime_min_delay Chime_Min_delay�� >0 inactivity_heartbeat_watchdog Inactivity_Heartbeat_Watchdog�� 0 	use_growl 	Use_Growl�� 40 growl_notifications_list Growl_Notifications_List�� :0 growl_enabled_notifications Growl_Enabled_Notifications�� D0  send_email_on_inactive_heartbeat  Send_Email_on_Inactive_Heartbeat�� $0 se_ibeat_address SE_IBeat_Address�� @0 update_heartbeat_after_actions Update_Heartbeat_After_Actions�� (0 playsound_location PlaySound_Location�� 20 securitydeviceaddresses securityDeviceAddresses�� 0 send_to_growl  �� 0 replacetext replaceText��  0 say_alarm_text Say_Alarm_Text�� 0 timestamp_str  �� 0 time_elapsed  �� 20 _converthexstrtointeger _convertHexStrToInteger�� 0 	send_mail  �� 0 read_indigo_variable  �� 0 set_variable  �� 0 log_security  �� 0 check_heartbeats  �� 0 unrecognized_sensor  �� 0 decode_security  �� 0 sound_chime  �� 0 do_chime  �� 0 play_sound_file  �� 0 do_security_event  
�� .INDOprScnull���   0 EnXS
�� .INDOpITNnull���   0 EnIT
�� .aevtoappnull  �   � ****� ����� 	� 	 ���������� ����� 	� 	 �� ����� ����������� �
�� boovfals
�� boovtrue
�� boovfals
�� boovfals
�� boovtrue
�� boovfals� ����� 	� 	 �� ���~ ��}�|�{�z�� �
� boovfals
�~ boovtrue
�} boovtrue
�| boovfals
�{ boovtrue
�z boovfals� �y��y 	� 	 �x ��w�v ��u�t�s�r�x �
�w boovfals
�v boovfals
�u boovfals
�t boovfals
�s boovfals
�r boovfals� �q��q 	� 	 �p ��o�n ��m�l�k�j�p q
�o boovfals
�n boovfals
�m boovfals
�l boovfals
�k boovfals
�j boovfals� �i��i 	� 	 �h�g�f�e�d�c�b�h �
�g boovfals
�f boovfals
�e boovfals
�d boovfals
�c boovfals
�b boovfals� �a��a 	� 	 �`&�_�^.�]�\�[�Z�` �
�_ boovfals
�^ boovfals
�] boovfals
�\ boovfals
�[ boovtrue
�Z boovfals� �Y��Y 	� 	 �X?�W�VG�U�T�S�R�X �
�W boovfals
�V boovtrue
�U boovfals
�T boovfals
�S boovtrue
�R boovfals� �Q��Q 	� 	 �PX�O�N`�M�L�K�J�P �
�O boovfals
�N boovtrue
�M boovfals
�L boovfals
�K boovtrue
�J boovfals� �I��I 	� 	 �Hp�G�Fx�E�D�C�B�H  �n
�G boovfals
�F boovtrue
�E boovfals
�D boovfals
�C boovfals
�B boovfals
�� boovfals� �A��A �  ���
�� boovtrue�� �� 
�� boovfals� �@��@ �  ��� �?��? �  
�� boovfals� �>��> �  .1
�� boovtrue� �=e�<�;���:�= 0 send_to_growl  �< �9��9 �  �8�7�8 0 sensor_name  �7 0 action_name  �;  � �6�5�4�3�2�6 0 sensor_name  �5 0 action_name  �4 0 	isrunning 	isRunning�3 ,0 allnotificationslist allNotificationsList�2 40 enablednotificationslist enabledNotificationsList� ��1��0��/��.��-��,�+�*��)�(�'�&��%���$
�1 
prcs�  
�0 
pnam
�/ .corecnte****       ****�. 0 log_security  
�- 
appl
�, 
anot
�+ 
dnot
�* 
iapp�) 
�( .register****      � ****
�' 
name
�& 
titl
�% 
desc
�$ .notifygr****      � ****�: s� *�-�[�,\Z�81j jE�UO�f  )�k+ OhY hO� Ab  E�Ob  	E�O*������� O*a �a �a %�%a �a %�%�a � U� �#��"�!��� �# 0 replacetext replaceText�" ��� �  ���� 0 find  � 0 replace  � 0 subject  �!  � ����� 0 find  � 0 replace  � 0 subject  � 0 prevtids prevTIDs� ���!
� 
ascr
� 
txdl
� 
citm�  '��,E�O���,FO��-E�O���,FO�%E�O���,FO�� �<������  0 say_alarm_text Say_Alarm_Text� ��� �  ��� 0 sensor_name  � 
0 action  �  � ���� 0 sensor_name  � 
0 action  � 0 text_to_speak  � 
H�
X�	cs~���
�
 
cobj�	 0 replacetext replaceText
� 
VOIC
� .sysottosnull���     TEXT� l��  b  �k/E�O*⠢m+ E�Y hO��  b  �l/E�O*堢m+ E�Y hO��  b  �m/E�O*砢m+ E�Y hO��b  l 	� �������� 0 timestamp_str  �  �  �  � ��
� .misccurdldt    ��� null
� 
TEXT� 	*j  �&� � ����������  0 time_elapsed  �� ����� �  ���� 0 td  ��  � ���� 0 td  � ����
�� .misccurdldt    ��� null
�� 
ldt �� *j  *�/� ������������� 20 _converthexstrtointeger _convertHexStrToInteger�� ����� �  ���� 0 hexstr hexStr��  � ������������������������������������ 0 hexstr hexStr�� 0 hexlist hexList�� 0 a1  �� 0 a2  �� 	0 skip1  �� 0 b1  �� 0 b2  �� 	0 skip2  �� 0 c1  �� 0 c2  �� 0 a1o  �� 0 a2o  �� 0 b1o  �� 0 b2o  �� 0 c1o  �� 0 c2o  �� 0 val  � �����������������������
�� 
cobj�� �� �� �� �� 
�� 
psof
�� 
psin
�� .sysooffslong    ��� null�� �� �� ��E�O�E[�k/EQ�Z[�l/EQ�Z[�m/EQ�Z[��/EQ�Z[��/EQ�Z[��/EQ�Z[��/EQ�Z[��/EQ�ZO*��� 	kE�O*��� 	kE�O*��� 	kE�O*��� 	kE�O*��� 	kE�O*��� 	kE�O*��� 	kE�O�� �� � E^ O] �� � E^ O] �� �E^ O] � ��h���������� 0 	send_mail  �� ����� �  �������� 0 rec  �� 0 sub  �� 0 msg  ��  � ���������� 0 rec  �� 0 sub  �� 0 msg  �� 0 x  � �����������������������
�� 
kocl
�� 
bcke
�� .corecrel****      � null
�� 
trcp
�� 
insh
�� 
prdt
�� 
radd�� 
�� 
subj
�� 
ctnt
�� .emsgsendbool        bcke�� 8� 4*��l E�O� *���*�-6��l� O�*�,FO�*�,FUO�j U� ������������� 0 read_indigo_variable  �� ����� �  ������ 0 variable_name  �� 0 default_val  ��  � ������ 0 variable_name  �� 0 default_val  � 	������������������
�� 
Vrbl
�� .coredoexbool        obj 
�� 
kocl
�� 
prdt
�� 
pnam
�� 
Valu
�� 
TEXT�� 
�� .corecrel****      � null�� **�/j  *������&�� Y hO*�/�,E� ������������� 0 set_variable  �� ����� �  ������ 0 variable_name  �� 0 variable_value  ��  � ������ 0 variable_name  �� 0 variable_value  � 	������������������
�� 
Vrbl
�� .coredoexbool        obj 
�� 
kocl
�� 
prdt
�� 
pnam
�� 
Valu
�� 
TEXT�� 
�� .corecrel****      � null�� **�/j  *������&�� Y ��&*�/�,F� ������������� 0 log_security  �� ����� �  ���� 0 log_text  ��  � ���� 0 log_text  � ������
�� 
TEXT
�� 
LgTy
�� .INDOLog null���    utf8�� 
��&��l � ������������ 0 check_heartbeats  �� ����� �  ���� 0 growl_enabled  ��  � �������������� 0 growl_enabled  �� 0 msg  �� 0 x  �� 0 variable_name  �� 0 dt  �� 0 log_msg  � !����������<��~b�}f�|��{�z����y��x�w
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 
�� 
TEXT� 0 read_indigo_variable  �~ 0 time_elapsed  �} <�| 0 log_security  �{ 0 send_to_growl  
�z 
ret �y 0 	send_mail  �x 0 timestamp_str  �w 0 set_variable  �� ��E�O �b   [��l kh ���/e  h��l/�&�%E�O)*�jl+ k+ E�O�b   @��%��"%�%E�O)�k+ Ob   � )��l/�&�l+ Y hY hO��%�%E�Y hY h[OY��Ob  
 @�a   3 -b  [��l kh )a �%k+ O)�a �m+ [OY��Y hY hO)a )j+ l+ � �v��u�t���s�v 0 unrecognized_sensor  �u �r��r �  �q�p�q 0 	eventtype 	eventType�p 0 	device_id 	device_ID�t  � �o�n�m�l�k�j�i�h�g�f�e�d�o 0 	eventtype 	eventType�n 0 	device_id 	device_ID�m 0 sensor_name  �l 0 action_name  �k 0 action_bool  �j 0 growling  �i 0 chiming  �h 0 chime_device  �g 0 
sound_file  �f 0 heartbeat_monitor  �e 0 action_group  �d 0 alarm_detected  � ����c	�b�a�`/�_�^B�]�c 0 log_security  
�b EnXSxSs1
�a EnXSxSs2
�` 
bool
�_ EnXSxSs3
�^ EnXSxSs4�] 
�s ��E�O�E�OfE�OfE�OfE�O�E�OfE�OfE�OfE�O)�k+ O)�k+ O)�%�%k+ OeE�O�� 
 �� �& �E�OfE�Y �� 
 �� �& �E�OeE�Y hOf����������v� �\b�[�Z���Y�\ 0 decode_security  �[ �X��X �  �W�V�W 0 	eventtype 	eventType�V 0 	device_id 	device_ID�Z  � �U�T�S�R�Q�P�O�N�M�L�K�J�I�U 0 	eventtype 	eventType�T 0 	device_id 	device_ID�S 0 	alarmdata  �R 0 ignoresensor IgnoreSensor�Q 0 sensor_name  �P 0 action_name  �O 0 action_bool  �N 0 growling  �M 0 chiming  �L 0 chime_device  �K 0 
sound_file  �J 0 heartbeat_monitor  �I 0 action_group  � �H�G�F��E�D�C�B�A�@��?�>�=�<�;&�:�9:�8I�7�6�5�4�3�2�1
�H 
kocl
�G 
cobj
�F .corecnte****       ****�E 0 read_indigo_variable  �D 
�C EnITxF03
�B EnXSxSs1
�A 
bool
�@ EnXSxSs2
�? EnITxF02
�> EnXSxSs3
�= EnXSxSs4
�< EnXSxSa1
�; EnXSxSa2
�: EnXSxSa3
�9 EnXSxSa4
�8 EnXSxSda�7 �6 �5 �4 �3 	�2 
�1 0 unrecognized_sensor  �Y2'b   [��l kh ���k/ )�el+ E�O�f  ���/E�Y hO�e  fY hO��l/E�O�� 
 �� �&
 �� �& �E�OfE�Y q�� 
 �� �&
 �� �& �E�OeE�Y Q�� 
 	�a  �& a E�OeE�Y 5�a  
 	�a  �& a E�OeE�Y �a   a E�OfE�Y hO��m/E�O��a /E�O��a /E�O��a /E�O��a /E�O��a /E�Oe���������a vY h[OY��O)��l+ � �0��/�.���-�0 0 sound_chime  �/ �, �,    �+�*�+ 0 
soundchime 
SoundChime�* 0 chime_device  �.  � �)�(�'�) 0 
soundchime 
SoundChime�( 0 chime_device  �' 0 errnum errNum� ��&�%�$��#�"�!������& 0 log_security  
�% .INDOOff null���    utf8
�$ 
Dura
�# .INDOOn  null���    utf8�"   � ��
�  
errn� 0 errnum errNum�  �!�@�- Q�e  F)�k+ O �j O���l W )X  ��  )�k+ O)�%�%k+ O)�k+ Y hY )�k+ � ������ 0 do_chime  � ��   ���� 0 chime_enabled  � 0 action_bool  � 0 chime_device  �   ������ 0 chime_enabled  � 0 action_bool  � 0 chime_device  � 0 soundchimestr soundChimeStr� 0 
soundchime 
SoundChime ����)�7IMQ�
� 
bool� 0 read_indigo_variable  � 0 timestamp_str  � 0 set_variable  � <� 0 sound_chime  � xb  	 �f �& fE�Y hO� \*��l+ �  L)�)j+ l+ O)�b  � l+ O)�el+ E�O�� 
 �� �&
 �� �& )e�l+ Y fE�Y hY h� �
`�	���
 0 play_sound_file  �	 ��   ��� 0 soundfile_to_play  � 0 action_bool  �   ��� 0 soundfile_to_play  � 0 action_bool   �� |����� 0 log_security  
�  
bool
�� .sysoexecTEXT���     TEXT� /)�k+  O�f 	 ��& )�k+  O�b  %�%�%j Y h� �������	���� 0 do_security_event  �� ��
�� 
  ������ 0 	eventtype 	eventType�� 0 devid devID��   ������������������������������ 0 	eventtype 	eventType�� 0 devid devID�� 0 found_in_matrix  �� 0 decoded_data  �� 0 sensor_name  �� 0 action_name  �� 0 action_bool  �� 0 growl_enabled  �� 0 chime_enabled  �� 0 chime_device  �� 0 
sound_file  �� 0 monitor  �� 0 action_group  �� 0 	heartbeat  	 #������������������		��			!	(	D	G��	g����	u	�	���	�	�	��������������� 0 decode_security  
�� 
cobj�� �� �� �� �� �� 	�� 

�� .INDOExeGnull���    utf8�� 0 read_indigo_variable  �� 0 timestamp_str  �� 0 set_variable  �� 0 log_security  
�� .sysobeepnull��� ��� long�� 0 do_chime  �� 0 play_sound_file  �� 0 send_to_growl  ��  0 say_alarm_text Say_Alarm_Text�� 0 check_heartbeats  ��ufE�O)��l+  E�O�f  hY hO��k/E�O��l/E�O��m/E�O���/E�O���/E�O���/E�O���/E�O���/E�O���/E�O���/E�O��  ��%j Y #��  ��%j Y ��  ��%j Y hOfE�O)�a %a l+ � ,)�a %)j+ l+ O)�a %�l+ O)�a %�l+ Y  )a �%k+ O)�a %)j+ l+ OeE�O�f  v)*j+ a %�%a %�%k+ O� 
*j Y hO)���m+ O�f *��l+ Y hOb   � )��l+  Y hY hOb   *��l+ !Y hOPY hO)�k+ "� ��
������
�� .INDOprScnull���   0 EnXS�� 0 	eventtype 	eventType�� ������
�� 
ScCd�� 0 devid devID��   ������ 0 	eventtype 	eventType�� 0 devid devID ���� 0 do_security_event  �� *��l+  Oh� ��
.������
�� .INDOpITNnull���   0 EnIT�� 0 	eventtype 	eventType�� ����
�� 
ToIA�� 0 
addrstring 
addrString ����
�� 
GrpN�� 0 groupnum groupNum ����
�� 
By  �� 0 deltaval deltaVal ������
�� 
StBn�� 0 absval absVal��   
���������������������� 0 	eventtype 	eventType�� 0 
addrstring 
addrString�� 0 groupnum groupNum�� 0 deltaval deltaVal�� 0 absval absVal�� 0 dev  �� 0 addrval addrVal�� 0 
foundmatch 
foundMatch�� 0 devaddr devAddr�� 0 devid devID ����������
c����������
v������
�����
�� EnITxF02
�� EnITxF03
�� 
bool
�� EnITxF16
�� EnITxF17
�� 
Devc
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
DvTp
�� 
X10a�� 20 _converthexstrtointeger _convertHexStrToInteger
�� 
long�� 0 log_security  �� 0 do_security_event  �� ɠ�	 ���&	 ���&	 ���& hY hOb  �  IjvEc  O :*�-[��l 	kh ��,�  )��,k+ E�Ob  �%Ec  Y h[OY��Y hOfE�O )b  [��l 	kh ��&��&  eE�Y h[OY��O� hY hO)�k+ O�E�O*��l+ Oh� ��������
�� .aevtoappnull  �   � **** k      
�����  ��  ��     
����� 0 log_security  �� )�k+ ascr  ��ޭ