   M S B A M L   `   `   `  ����B  >psytest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:psytestpsytest  5          psytest.StudentTesting   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:psytest     5        N� Title$  StudentTesting��5	      .��5      � .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	dsAnswers��5         
IsReadOnly .    AutoGenerateColumns .  $��146,265,176,10q�6T   $y�Hidden=�6l      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6<      Width5  /System.Windows.Controls.DataGridLengthConverter$ 25 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ID+6H     5      $	 Que��6D   $	 100 6Q    6%   �� *
IDQuestion+6Q     5      $	 Res��6B   $	 100 6O    6%   �� *
IDResult+6O     5      $ Answer��6A   $	 100 6Q    6%   �� *	Answer1+6Q   5      �� 5   
   -   5         ��Name$ 	btnGoBack��5      $��
Назад��6$   $
��Left=�64   $��
49,278,0,0q�6O   $	��Top=�6c   $��75��6{   ���	#FFE6924C6�   �� 5   
   -   5        $ btnNext��5      $��Вперед��6"   $
��Left=�63   $��663,283,0,0q�6N   $	��Top=�6c   $��75��6{   ���	#FFE6924C6�   �� 5   
   -   5        $ 
btnNxtPage��5      $%��Результаты теста��6%   $
��Left=�6@   $��663,373,0,0q�6[   $	��Top=�6p   $	��111��6�   $��40��6�   ���	#FFE6924C6�   	� 5   
   -   5        	 	�Name$		 rb1��5      $��Неверно��6#   $
��Left=�65   $��146,227,0,0q�6P   $	��Top=�6e   ���	#FFE6924C6}   	� 5   
   -   5        $		 rb2��5      $!��Скорее неверно��6#   $
��Left=�6<   $��229,227,0,0q�6W   $	��Top=�6l   ���	#FFE6924C6�   	� 5   
   -   5        $		 rb3��5      $-��'Затрудняюсь ответить��6#   $
��Left=�6B   $��343,227,0,0q�6]   $	��Top=�6r   ���	#FFE6924C6�   	� 5   
   -   5        $		 rb4��5      $��Скорее верно��6#   $
��Left=�6:   $��500,227,0,0q�6U   $	��Top=�6j   
 J� RenderTransformOrigin$
 0.642,0.644&�6�   ���	#FFE6924C6�   	� 5   
   -	   5        $		 rb5��5      $��
Верно��6#   $
��Left=�63   $��632,227,0,0q�6N   $	��Top=�6c   ���	#FFE6924C6{   �� 5   
   -
   5         ��Name$ TestName��5      $��Название��6"   $
��Left=�65   $��
310,26,0,0q�6P   $	��Top=�6d   �� 5   
   -   5         ��Name$ QuestionText��5      $
��Left=�6*   $��186,119,0,0q�6E   $
��Wrap=�6Z   $	��Top=�6n   $��78��6�   $	��438��6�   �� 6�   $�	TextBlock��6�   �� 6�   .F�5      �� $
��Wrap=�6   $��	TextBlock��60   $
 0,0.375&�6A   5      6#   5       5!      