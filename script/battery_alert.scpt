FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ? 9 Function to check battery percentage and charging status     � 	 	 r   F u n c t i o n   t o   c h e c k   b a t t e r y   p e r c e n t a g e   a n d   c h a r g i n g   s t a t u s   
  
 i         I      �������� 0 checkbattery checkBattery��  ��    Q     s     k    ^       l   ��  ��      Get battery percentage     �   .   G e t   b a t t e r y   p e r c e n t a g e      r    
    I   �� ��
�� .sysoexecTEXT���     TEXT  m       �   V p m s e t   - g   b a t t   |   g r e p   - o   ' [ 0 - 9 ] * % '   |   h e a d   - 1��    o      ���� 0 batteryinfo batteryInfo      l      ! "   r     # $ # n     % & % 7  �� ' (
�� 
ctxt ' m    ����  ( m    ������ & o    ���� 0 batteryinfo batteryInfo $ o      ���� &0 batterypercentage batteryPercentage !   Remove the "%" symbol    " � ) ) ,   R e m o v e   t h e   " % "   s y m b o l   * + * l    , - . , r     / 0 / c     1 2 1 o    ���� &0 batterypercentage batteryPercentage 2 m    ��
�� 
long 0 o      ���� &0 batterypercentage batteryPercentage -   Convert to number    . � 3 3 $   C o n v e r t   t o   n u m b e r +  4 5 4 l   ��������  ��  ��   5  6 7 6 l   �� 8 9��   8   Get power status    9 � : : "   G e t   p o w e r   s t a t u s 7  ; < ; r    & = > = I   $�� ?��
�� .sysoexecTEXT���     TEXT ? m      @ @ � A A  p m s e t   - g   b a t t��   > o      ���� 0 powerstatus powerStatus <  B C B l  ' '��������  ��  ��   C  D E D l  ' '�� F G��   F 4 . If plugged in and above 85%, notify to unplug    G � H H \   I f   p l u g g e d   i n   a n d   a b o v e   8 5 % ,   n o t i f y   t o   u n p l u g E  I J I Z   ' \ K L M�� K E   ' * N O N o   ' (���� 0 powerstatus powerStatus O m   ( ) P P � Q Q  A C   P o w e r L Z   - B R S���� R ?   - 0 T U T o   - .���� &0 batterypercentage batteryPercentage U m   . /���� U S I  3 >�� V W
�� .sysonotfnull��� ��� TEXT V b   3 8 X Y X b   3 6 Z [ Z m   3 4 \ \ � ] ]  �=�   B a t t e r y   i s   a t [ o   4 5���� &0 batterypercentage batteryPercentage Y m   6 7 ^ ^ � _ _ � %   a n d   i s   c o n n e c t e d   t o   c h a r g e r .   C o n s i d e r   u n p l u g g i n g   t o   p r e v e n t   o v e r c h a r g i n g .  &�� W �� `��
�� 
appr ` m   9 : a a � b b  B a t t e r y   S t a t u s��  ��  ��   M  c d c A   E H e f e o   E F���� &0 batterypercentage batteryPercentage f m   F G����  d  g�� g k   K X h h  i j i l  K K�� k l��   k + % If unplugged and low battery, notify    l � m m J   I f   u n p l u g g e d   a n d   l o w   b a t t e r y ,   n o t i f y j  n�� n I  K X�� o p
�� .sysonotfnull��� ��� TEXT o b   K P q r q b   K N s t s m   K L u u � v v b&��   B a t t e r y   i s   l o w !   P l e a s e   c h a r g e   s o o n .   ( C u r r e n t :   t o   L M���� &0 batterypercentage batteryPercentage r m   N O w w � x x 
 % )  �>ޫ p �� y��
�� 
appr y m   Q T z z � { {  B a t t e r y   W a r n i n g��  ��  ��  ��   J  |�� | l  ] ]��������  ��  ��  ��    R      �� }��
�� .ascrerr ****      � **** } o      ���� 0 errmsg errMsg��    I  f s�� ~��
�� .sysoexecTEXT���     TEXT ~ b   f o  �  b   f k � � � m   f i � � � � �  e c h o   ' E r r o r :   � o   i j���� 0 errmsg errMsg � m   k n � � � � � T '   > >   ~ / L i b r a r y / L o g s / B a t t e r y S c r i p t E r r o r . l o g��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  
 Main loop    � � � �    M a i n   l o o p �  � � � l     ����� � T      � � k     � �  � � � I    
�������� 0 checkbattery checkBattery��  ��   �  ��� � l    � � � � I   �� ���
�� .sysodelanull��� ��� nmbr � m    �������   �   Wait for 15 minutes    � � � � (   W a i t   f o r   1 5   m i n u t e s��  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � � ���   � ������ 0 checkbattery checkBattery
�� .aevtoappnull  �   � **** � �� ���� � ����� 0 checkbattery checkBattery��  ��   � ���������� 0 batteryinfo batteryInfo�� &0 batterypercentage batteryPercentage�� 0 powerstatus powerStatus�� 0 errmsg errMsg �  �������� @ P�� \ ^�� a���� u w z���� � �
�� .sysoexecTEXT���     TEXT
�� 
ctxt����
�� 
long�� U
�� 
appr
�� .sysonotfnull��� ��� TEXT�� �� 0 errmsg errMsg��  �� t `�j E�O�[�\[Zk\Z�2E�O��&E�O�j E�O�� �� �%�%��l Y hY �� �%�%�a l Y hOPW X  a �%a %j  � �� ����� � ���
�� .aevtoappnull  �   � **** � k      � �  �����  ��  ��   �   � �������� 0 checkbattery checkBattery���
�� .sysodelanull��� ��� nmbr��  hZ*j+  O�j [OY��ascr  ��ޭ