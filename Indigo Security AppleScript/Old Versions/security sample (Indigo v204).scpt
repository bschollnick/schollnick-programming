FasdUAS 1.101.10   ��   ��    k             l     �� ��    A ; Sample attachment script that illustrates how to listen to       	  l     �� 
��   
 8 2 commands from security devices. Only the W800RF32    	     l     �� ��    5 / interface receives these commands.030515 (mmb)         l     ������  ��        l     �� ��    I C Removed deprecated "continue..." line. 2006.09.27 (Matt Bendiksen)         l     ������  ��        w          i         I     ��  
�� .INDOprScnull���   0 EnXS  o      ���� 0 	eventtype 	eventType  �� ��
�� 
ScCd  o      ���� 0 devid devID��    k            Z     ! "���� ! =     # $ # o     ���� 0 	eventtype 	eventType $ m    ��
�� EnXSxSa1 " I   �� % &
�� .INDOLog null���    TEXT % m     ' '  arm home (min)    & �� (��
�� 
LgTy ( m    	 ) )  Security Sample   ��  ��  ��      * + * Z   # , -���� , =    . / . o    ���� 0 	eventtype 	eventType / m    ��
�� EnXSxSa2 - I   �� 0 1
�� .INDOLog null���    TEXT 0 m     2 2  arm home (max)    1 �� 3��
�� 
LgTy 3 m     4 4  Security Sample   ��  ��  ��   +  5 6 5 Z  $ 5 7 8���� 7 =  $ ' 9 : 9 o   $ %���� 0 	eventtype 	eventType : m   % &��
�� EnXSxSa3 8 I  * 1�� ; <
�� .INDOLog null���    TEXT ; m   * + = =  arm away (min)    < �� >��
�� 
LgTy > m   , - ? ?  Security Sample   ��  ��  ��   6  @ A @ Z  6 G B C���� B =  6 9 D E D o   6 7���� 0 	eventtype 	eventType E m   7 8��
�� EnXSxSa4 C I  < C�� F G
�� .INDOLog null���    TEXT F m   < = H H  arm away (max)    G �� I��
�� 
LgTy I m   > ? J J  Security Sample   ��  ��  ��   A  K L K Z  H [ M N���� M =  H K O P O o   H I���� 0 	eventtype 	eventType P m   I J��
�� EnXSxSda N I  N W�� Q R
�� .INDOLog null���    TEXT Q m   N O S S  disarm    R �� T��
�� 
LgTy T m   P S U U  Security Sample   ��  ��  ��   L  V W V Z  \ s X Y���� X =  \ a Z [ Z o   \ ]���� 0 	eventtype 	eventType [ m   ] `��
�� EnXSxSpa Y I  d o�� \ ]
�� .INDOLog null���    TEXT \ m   d g ^ ^  panic    ] �� _��
�� 
LgTy _ m   h k ` `  Security Sample   ��  ��  ��   W  a b a Z  t � c d���� c =  t y e f e o   t u���� 0 	eventtype 	eventType f m   u x��
�� EnXSxSlo d I  | ��� g h
�� .INDOLog null���    TEXT g m   |  i i  security lights on    h �� j��
�� 
LgTy j m   � � k k  Security Sample   ��  ��  ��   b  l m l Z  � � n o���� n =  � � p q p o   � ����� 0 	eventtype 	eventType q m   � ���
�� EnXSxSlf o I  � ��� r s
�� .INDOLog null���    TEXT r m   � � t t  security lights off    s �� u��
�� 
LgTy u m   � � v v  Security Sample   ��  ��  ��   m  w x w Z  � � y z���� y =  � � { | { o   � ����� 0 	eventtype 	eventType | m   � ���
�� EnXSxSs1 z I  � ��� } ~
�� .INDOLog null���    TEXT } m   � �    sensor normal (min delay)    ~ �� ���
�� 
LgTy � m   � � � �  Security Sample   ��  ��  ��   x  � � � Z  � � � ����� � =  � � � � � o   � ����� 0 	eventtype 	eventType � m   � ���
�� EnXSxSs2 � I  � ��� � �
�� .INDOLog null���    TEXT � m   � � � �  sensor normal (max delay)    � �� ���
�� 
LgTy � m   � � � �  Security Sample   ��  ��  ��   �  � � � Z  � � � ����� � =  � � � � � o   � ����� 0 	eventtype 	eventType � m   � ���
�� EnXSxSs3 � I  � ��� � �
�� .INDOLog null���    TEXT � m   � � � �  sensor alert (min delay)    � �� ���
�� 
LgTy � m   � � � �  Security Sample   ��  ��  ��   �  � � � Z  � � ����� � =  � � � � � o   � ����� 0 	eventtype 	eventType � m   � ���
�� EnXSxSs4 � I  � ��� � �
�� .INDOLog null���    TEXT � m   � � � �  sensor alert (max delay)    � �� ���
�� 
LgTy � m   � � � �  Security Sample   ��  ��  ��   �  � � � l ������  ��   �  ��� � I �� � �
�� .INDOLog null���    TEXT � b   � � � b  	 � � � m   � �  (device ID     � o  ���� 0 devid devID � m  	 � �  )    � �� ���
�� 
LgTy � m   � �  Security Sample   ��  ��    null     ߀�� �A2IndigoServer.appr�]� � g����P   7�    )       ��(�])���؀9INDO  alis    �  
Halo Anvil                 ���aH+   �A2IndigoServer.app                                                �6��,��        ����  	                Indigo 2    ���      �-66     �A2 �� ^� ^�  VHalo Anvil:Library:Application Support:Perceptive Automation:Indigo 2:IndigoServer.app  "  I n d i g o S e r v e r . a p p   
 H a l o   A n v i l  KLibrary/Application Support/Perceptive Automation/Indigo 2/IndigoServer.app   / ��     � � � l     ������  ��   �  ��� � l     ������  ��  ��       �� � ���   � ��
�� .INDOprScnull���   0 EnXS � �� ���� � ���
�� .INDOprScnull���   0 EnXS�� 0 	eventtype 	eventType�� ������
�� 
ScCd�� 0 devid devID��   � ������ 0 	eventtype 	eventType�� 0 devid devID � )�� '�� )���� 2 4�� = ?�� H J�� S U� ^ `�~ i k�} t v�|  ��{ � ��z � ��y � � � � �
�� EnXSxSa1
�� 
LgTy
�� .INDOLog null���    TEXT
�� EnXSxSa2
�� EnXSxSa3
�� EnXSxSa4
�� EnXSxSda
� EnXSxSpa
�~ EnXSxSlo
�} EnXSxSlf
�| EnXSxSs1
�{ EnXSxSs2
�z EnXSxSs3
�y EnXSxSs4����  ���l Y hO��  ���l Y hO��  ���l Y hO��  ���l Y hO��  ��a l Y hO�a   a �a l Y hO�a   a �a l Y hO�a   a �a l Y hO�a   a �a l Y hO�a   a �a l Y hO�a    a !�a "l Y hO�a #  a $�a %l Y hOa &�%a '%�a (l  ascr  ��ޭ