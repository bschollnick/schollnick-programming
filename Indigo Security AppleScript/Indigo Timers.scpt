FasdUAS 1.101.10   ��   ��    k             l     ��  ��           � 	 	      
  
 l     ��  ��    A ; Retrieve Timer variables from Indigo and count them down.      �   v   R e t r i e v e   T i m e r   v a r i a b l e s   f r o m   I n d i g o   a n d   c o u n t   t h e m   d o w n .        l     ��  ��           �           l     ��  ��      Paul Roomberg      �      P a u l   R o o m b e r g        l     ��  ��           �           l     ��   !��     ( " Version  Date               Info     ! � " " D   V e r s i o n     D a t e                               I n f o     # $ # l     �� % &��   % i c -------    ---------------   --------------------------------------------------------------------     & � ' ' �   - - - - - - -         - - - - - - - - - - - - - - -       - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   $  ( ) ( l     �� * +��   * - ' 1.0        15-12-2006   First version     + � , , N   1 . 0                 1 5 - 1 2 - 2 0 0 6       F i r s t   v e r s i o n   )  - . - l     �� / 0��   / M G 1.1	  09-03-2009   Revised by Benjamin Schollnick to add startup check    0 � 1 1 �   1 . 1 	     0 9 - 0 3 - 2 0 0 9       R e v i s e d   b y   B e n j a m i n   S c h o l l n i c k   t o   a d d   s t a r t u p   c h e c k .  2 3 2 l     �� 4 5��   4 C =					   to prevent multiple copies of the script from running    5 � 6 6 z 	 	 	 	 	       t o   p r e v e n t   m u l t i p l e   c o p i e s   o f   t h e   s c r i p t   f r o m   r u n n i n g 3  7 8 7 l     �� 9 :��   9  					   at the same time.    : � ; ; 2 	 	 	 	 	       a t   t h e   s a m e   t i m e . 8  < = < l     �� > ?��   > h b ------------------------------------------------------------------------------------------------     ? � @ @ �   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   =  A B A l     �� C D��   C       D � E E    B  F G F l      H I J H j     �� K�� $0 timerrefreshrate timerRefreshRate K m     ����  I / ) refresh Timer variables every N seconds     J � L L R   r e f r e s h   T i m e r   v a r i a b l e s   e v e r y   N   s e c o n d s   G  M N M l      O P Q O j    �� R�� 0 timertimeout timerTimeOut R m    ����  P   Time Out value     Q � S S     T i m e   O u t   v a l u e   N  T U T l      V W X V j    �� Y�� 0 thehour theHour Y m    ������ W   Save the current hour     X � Z Z .   S a v e   t h e   c u r r e n t   h o u r   U  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     �� _ `��   _ + % Count Down for one particular timer     ` � a a J   C o u n t   D o w n   f o r   o n e   p a r t i c u l a r   t i m e r   ^  b c b l     �� d e��   d ? 9 Only if its value is positive, because negative or zero     e � f f r   O n l y   i f   i t s   v a l u e   i s   p o s i t i v e ,   b e c a u s e   n e g a t i v e   o r   z e r o   c  g h g l     �� i j��   i   means to not use it.     j � k k ,   m e a n s   t o   n o t   u s e   i t .   h  l m l l     �� n o��   n @ : But when a timer counts down below zero, fix it at zero.     o � p p t   B u t   w h e n   a   t i m e r   c o u n t s   d o w n   b e l o w   z e r o ,   f i x   i t   a t   z e r o .   m  q r q i   	  s t s I      �� u���� 0 dotimer doTimer u  v�� v o      ���� 0 thetimer theTimer��  ��   t Q     u w x y w t    B z { z O   	 A | } | k    @ ~ ~   �  l   ��������  ��  ��   �  � � � r     � � � n     � � � 1    ��
�� 
Valu � 4    �� �
�� 
Vrbl � o    ���� 0 thetimer theTimer � o      ���� 0 thevalue theValue �  ��� � Z    @ � ����� � ?     � � � o    ���� 0 thevalue theValue � m    ����   � k    < � �  � � � r    % � � � \    # � � � o    ���� 0 thevalue theValue � o    "���� $0 timerrefreshrate timerRefreshRate � o      ���� 0 thevalue theValue �  � � � Z   & 3 � ����� � A   & ) � � � o   & '���� 0 thevalue theValue � m   ' (����   � r   , / � � � m   , -����   � o      ���� 0 thevalue theValue��  ��   �  ��� � r   4 < � � � o   4 5���� 0 thevalue theValue � n       � � � 1   9 ;��
�� 
Valu � 4   5 9�� �
�� 
Vrbl � o   7 8���� 0 thetimer theTimer��  ��  ��  ��   } m   	 
 � �&                                                                                  INDO  alis    �  Snow Leopard               �U��H+   �IndigoServer.app                                                �ŀ�        ����  	                Indigo 4    �U�.      ŀb
     � �  K  �  XSnow Leopard:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p    S n o w   L e o p a r d  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��   { o    ���� 0 timertimeout timerTimeOut x R      ���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � o      ���� 0 errnum errNum��   y Z   J u � ��� � � =  J M � � � o   J K���� 0 errnum errNum � m   K L�����P � O   P ` � � � I  T _�� � �
�� .INDOLog null���    utf8 � [   T Y � � � [   T W � � � m   T U � � � � �  T i m e r   ' � o   U V���� 0 thetimer theTimer � m   W X � � � � � $ '   t i m e   o u t   o c c u r e d � �� ���
�� 
LgTy � m   Z [ � � � � � 
 e r r o r��   � m   P Q � �&                                                                                  INDO  alis    �  Snow Leopard               �U��H+   �IndigoServer.app                                                �ŀ�        ����  	                Indigo 4    �U�.      ŀb
     � �  K  �  XSnow Leopard:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p    S n o w   L e o p a r d  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��  ��   � O   c u � � � I  g t�� � �
�� .INDOLog null���    utf8 � b   g n � � � [   g l � � � [   g j � � � m   g h � � � � �  T i m e r   ' � o   h i���� 0 thetimer theTimer � m   j k � � � � � " '   e r r o r   o c c u r e d :   � o   l m���� 0 errnum errNum � �� ���
�� 
LgTy � m   o p � � � � � 
 e r r o r��   � m   c d � �&                                                                                  INDO  alis    �  Snow Leopard               �U��H+   �IndigoServer.app                                                �ŀ�        ����  	                Indigo 4    �U�.      ŀb
     � �  K  �  XSnow Leopard:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p    S n o w   L e o p a r d  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��   r  � � � l     ��������  ��  ��   �  � � � l     ����� � r      � � � m      � � � � � $ i n d i g o   t i m e r s . s c p t � o      ���� 0 myname myName��  ��   �  � � � l    ����� � r     � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b    	 � � � b     � � � m     � � � � � 8 p s   a x w w | g r e p   - e   " o s a s c r i p t . * � o    ���� 0 myname myName � m     � � � � � ( " | g r e p   - v   g r e p | w c   - l��   � o      ���� 0 	proccount 	procCount��  ��   �  � � � l     ��������  ��  ��   �  � � � l   ) ����� � Z    ) � ����� � ?    � � � c     � � � o    ���� 0 	proccount 	procCount � m    ��
�� 
long � m    ����  � k    % � �  � � � O    " � � � I   !�� ���
�� .INDOLog null���    utf8 � m     � � � � � b I n d i g o   T i m e r s   i s   A l r e a d y   r u n n i n g .     A b o r t i n g   s t a r t��   � m     � �&                                                                                  INDO  alis    �  Snow Leopard               �U��H+   �IndigoServer.app                                                �ŀ�        ����  	                Indigo 4    �U�.      ŀb
     � �  K  �  XSnow Leopard:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p    S n o w   L e o p a r d  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��   �  ��� � L   # % � � m   # $��
�� boovfals��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  * 4 ����� � O   * 4 � � � I  . 3�� ��
�� .INDOLog null���    utf8  m   . / � , S t a r t i n g   I n d i g o   T i m e r s��   � m   * +&                                                                                  INDO  alis    �  Snow Leopard               �U��H+   �IndigoServer.app                                                �ŀ�        ����  	                Indigo 4    �U�.      ŀb
     � �  K  �  XSnow Leopard:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p    S n o w   L e o p a r d  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��  ��  ��   �  l     ��������  ��  ��    l     ��	��     Timer Main Loop    	 �

 "   T i m e r   M a i n   L o o p   �� l  5;���� T   5; k   :6  Q   :4 k   = �  l  = =����     Timer Loop     �    T i m e r   L o o p    T   = � k   B �  Q   B � !"  t   E �#$# k   K �%% &'& l  K K��������  ��  ��  ' (��( O   K �)*) k   O �++ ,-, l  O O��������  ��  ��  - ./. l  O O��01��  0 #  Show a heartbeat every hour    1 �22 :   S h o w   a   h e a r t b e a t   e v e r y   h o u r  / 343 Z   O y56����5 H   O ]77 =   O \898 l  O V:����: l  O V;��~; n   O V<=< 1   T V�}
�} 
hour= l  O T>�|�{> l  O T?�z�y? I  O T�x�w�v
�x .misccurdldt    ��� null�w  �v  �z  �y  �|  �{  �  �~  ��  ��  9 o   V [�u�u 0 thehour theHour6 k   ` u@@ ABA r   ` mCDC l  ` gE�t�sE n   ` gFGF 1   e g�r
�r 
hourG l  ` eH�q�pH l  ` eI�o�nI I  ` e�m�l�k
�m .misccurdldt    ��� null�l  �k  �o  �n  �q  �p  �t  �s  D o      �j�j 0 thehour theHourB J�iJ I  n u�hKL
�h .INDOLog null���    utf8K m   n oMM �NN , T i m e r   s c r i p t   h e a r t b e a tL �gO�f
�g 
LgTyO m   p qPP �QQ  i n f o�f  �i  ��  ��  4 RSR l  z z�e�d�c�e  �d  �c  S TUT l  z z�bVW�b  V 2 , Fetch all timer variables and process them    W �XX X   F e t c h   a l l   t i m e r   v a r i a b l e s   a n d   p r o c e s s   t h e m  U Y�aY X   z �Z�`[Z k   � �\\ ]^] r   � �_`_ l  � �a�_�^a n   � �bcb 1   � ��]
�] 
pnamc o   � ��\�\ 0 avar aVar�_  �^  ` o      �[�[ 0 thetimername theTimerName^ d�Zd Z   � �ef�Y�Xe C  � �ghg o   � ��W�W 0 thetimername theTimerNameh m   � �ii �jj 
 T i m e rf n  � �klk I   � ��Vm�U�V 0 dotimer doTimerm n�Tn o   � ��S�S 0 thetimername theTimerName�T  �U  l  f   � ��Y  �X  �Z  �` 0 avar aVar[ 2  } ��R
�R 
Vrbl�a  * m   K Loo&                                                                                  INDO  alis    �  Snow Leopard               �U��H+   �IndigoServer.app                                                �ŀ�        ����  	                Indigo 4    �U�.      ŀb
     � �  K  �  XSnow Leopard:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p    S n o w   L e o p a r d  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��  ��  $ o   E J�Q�Q 0 timertimeout timerTimeOut! R      �P�Op
�P .ascrerr ****      � ****�O  p �Nq�M
�N 
errnq o      �L�L 0 errnum errNum�M  " Z   � �rs�Ktr =  � �uvu o   � ��J�J 0 errnum errNumv m   � ��I�I�Ps O   � �wxw I  � ��Hyz
�H .INDOLog null���    utf8y m   � �{{ �|| 6 T i m e r   l o o p   t i m e   o u t   o c c u r e dz �G}�F
�G 
LgTy} m   � �~~ � 
 e r r o r�F  x m   � ���&                                                                                  INDO  alis    �  Snow Leopard               �U��H+   �IndigoServer.app                                                �ŀ�        ����  	                Indigo 4    �U�.      ŀb
     � �  K  �  XSnow Leopard:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p    S n o w   L e o p a r d  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��  �K  t O   � ���� I  � ��E��
�E .INDOLog null���    utf8� b   � ���� m   � ��� ��� 4 T i m e r   l o o p   e r r o r   o c c u r e d :  � o   � ��D�D 0 errnum errNum� �C��B
�C 
LgTy� m   � ��� ��� 
 e r r o r�B  � m   � ���&                                                                                  INDO  alis    �  Snow Leopard               �U��H+   �IndigoServer.app                                                �ŀ�        ����  	                Indigo 4    �U�.      ŀb
     � �  K  �  XSnow Leopard:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p    S n o w   L e o p a r d  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��   ��� l  � ��A�@�?�A  �@  �?  � ��� l  � ��>���>  �   Wait till the next run    � ��� 0   W a i t   t i l l   t h e   n e x t   r u n  � ��=� I  � ��<��;
�< .sysodelanull��� ��� nmbr� o   � ��:�: $0 timerrefreshrate timerRefreshRate�;  �=   ��� l  � ��9�8�7�9  �8  �7  � ��� l  � ��6���6  � 7 1 This is the most important part of this script.    � ��� b   T h i s   i s   t h e   m o s t   i m p o r t a n t   p a r t   o f   t h i s   s c r i p t .  � ��� l  � ��5���5  � 9 3 Somehow the inner loop dies on a time out after a    � ��� f   S o m e h o w   t h e   i n n e r   l o o p   d i e s   o n   a   t i m e   o u t   a f t e r   a  � ��� l  � ��4���4  � 8 2 period of time. I have no clue why this happens,    � ��� d   p e r i o d   o f   t i m e .   I   h a v e   n o   c l u e   w h y   t h i s   h a p p e n s ,  � ��� l  � ��3���3  � 7 1 but adding an outer loop with timeout detection    � ��� b   b u t   a d d i n g   a n   o u t e r   l o o p   w i t h   t i m e o u t   d e t e c t i o n  � ��2� l  � ��1���1  �   solves this.    � ���    s o l v e s   t h i s .  �2   R      �0�/�
�0 .ascrerr ****      � ****�/  � �.��-
�. 
errn� o      �,�, 0 errnum errNum�-   Z  4���+�� = ��� o  �*�* 0 errnum errNum� m  �)�)�P� O  ��� I �(��
�( .INDOLog null���    utf8� m  �� ��� @ T i m e r   m a i n   l o o p   t i m e   o u t   o c c u r e d� �'��&
�' 
LgTy� m  �� ��� 
 e r r o r�&  � m  ��&                                                                                  INDO  alis    �  Snow Leopard               �U��H+   �IndigoServer.app                                                �ŀ�        ����  	                Indigo 4    �U�.      ŀb
     � �  K  �  XSnow Leopard:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p    S n o w   L e o p a r d  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��  �+  � O  "4��� I &3�%��
�% .INDOLog null���    utf8� b  &+��� m  &)�� ��� > T i m e r   m a i n   l o o p   e r r o r   o c c u r e d :  � o  )*�$�$ 0 errnum errNum� �#��"
�# 
LgTy� m  ,/�� ��� 
 e r r o r�"  � m  "#��&                                                                                  INDO  alis    �  Snow Leopard               �U��H+   �IndigoServer.app                                                �ŀ�        ����  	                Indigo 4    �U�.      ŀb
     � �  K  �  XSnow Leopard:Library:Application Support:Perceptive Automation:Indigo 4:IndigoServer.app  "  I n d i g o S e r v e r . a p p    S n o w   L e o p a r d  KLibrary/Application Support/Perceptive Automation/Indigo 4/IndigoServer.app   / ��   ��!� l 55� ���   �  �  �!  ��  ��  ��       ��������  � ������ $0 timerrefreshrate timerRefreshRate� 0 timertimeout timerTimeOut� 0 thehour theHour� 0 dotimer doTimer
� .aevtoappnull  �   � ****� � ���� � t������ 0 dotimer doTimer� ��� �  �� 0 thetimer theTimer�  � ���� 0 thetimer theTimer� 0 thevalue theValue� 0 errnum errNum�  ���
�	�� � �� �� � � �
� 
Vrbl
�
 
Valu�	  � ���
� 
errn� 0 errnum errNum�  ��P
� 
LgTy
� .INDOLog null���    utf8� v Db  n� 5*�/�,E�O�j %�b   E�O�j jE�Y hO�*�/�,FY hUoW 2X  ��  � ����l 
UY � ���%��l 
U� ���� ����
� .aevtoappnull  �   � ****� k    ;��  ���  ���  ���  ��� ����  �  �   � ������ 0 avar aVar�� 0 errnum errNum� $ ��� � ������� � �������M��P������������i�������{~���������� 0 myname myName
�� .sysoexecTEXT���     TEXT�� 0 	proccount 	procCount
�� 
long
�� .INDOLog null���    utf8
�� .misccurdldt    ��� null
�� 
hour
�� 
LgTy
�� 
Vrbl
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� 0 thetimername theTimerName�� 0 dotimer doTimer��  � ������
�� 
errn�� 0 errnum errNum��  ���P
�� .sysodelanull��� ��� nmbr��<�E�O��%�%j E�O��&k � �j 	UOfY hO� �j 	UOhZ � �hZ yb  n� j*j �,b    *j �,Ec  O���l 	Y hO <*a -[a a l kh  �a ,E` O_ a  )_ k+ Y h[OY��UoW 4X  �a   � a �a l 	UY � a �%�a l 	UOb   j [OY�FOPW 4X  �a   � a  �a !l 	UY � a "�%�a #l 	UOP[OY�  ascr  ��ޭ