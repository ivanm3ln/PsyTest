   M S B A M L   `   `   `  ����B  >psytest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:psytestpsytest  5          psytest.Ifno   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:psytest     5        N� Title$
  Ifno��5	      .��5      � .+�5   
   �� $��Имя��6   $
��Left=�6   $��
40,135,0,0q�69   $	��Top=�6M   �� 5   
   $��Фамилия��6   $
��Left=�6"   $��	40,93,0,0q�6=   $	��Top=�6P   �� 5   
   $��Отчество��6   $
��Left=�6#   $��
40,177,0,0q�6>   $	��Top=�6R   �� 5   
   $��Группа��6   $
��Left=�6!   $��
40,208,0,0q�6<   $	��Top=�6P   �� 5   
   $��Пол��6   $
��Left=�6   $��
40,239,0,0q�69   $	��Top=�6M   �� 5   
   -   5         ��Name$ tbName��5      $
��Left=�6"   $��23��6=   $��124,135,0,0q�6I    �� TextWrapping$
 Wrap=�6^   $	��Top=�6r   $	��120��6�   ���	#FFC790626�   �� 5   
   -   5        $ tbSurn��5      $
��Left=�6"   $��23��6=   $��
124,96,0,0q�6I   $
 Wrap=�6]   $	��Top=�6q   $	��120��6�   ���	#FFC790626�   �� 5   
   -   5        $ tbPart��5      $
��Left=�6"   $��23��6=   $��124,177,0,0q�6I   $
 Wrap=�6^   $	��Top=�6r   $	��120��6�   ���	#FFC790626�   �� 5   
   -   5        $ tbGro��5      $
��Left=�6!   $��23��6<   $��124,211,0,0q�6H   $
 Wrap=�6]   $	��Top=�6q   $	��120��6�   ���	#FFC790626�   	� 5   
   -   5         	�Name$	 rb1��5      $��Муж��6#   $
��Left=�61   $��107,250,0,0q�6L   $	��Top=�6a   ���	#FFE6924C6y   	� 5   
   -   5        $	 rb2��5      $��Жен��6#   $
��Left=�61   $��208,250,0,0q�6L   $	��Top=�6a   ���	#FFE6924C6y   �� 5   
   -   5         ��Name$ btnGo��5      $��К тесту��6    $
��Left=�62   $��
40,291,0,0q�6M   $	��Top=�6a   $	��221��6y   ���	#FFE6924C6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 
dsStudents��5         
IsReadOnly .    AutoGenerateColumns .  $��287,120,28,155q�6U   ���	#FFE6924C$y�Hidden=�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 ID��6<   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 25 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ID+6H     5      $		 Que��6E   $	
 100 6R    6%   �� *NameStudent+6R     5      $		 Res��6H   $	
 100 6U    6%   �� *SurnameStudent+6U     5      $	 Answer��6K   $	
 100 6[    6%   �� *PatronymicStudent+6[     5      $	 Answer��6?   $	
 100 6O    6%   �� *Group+6O     5      $	 Answer��6@   $	
 100 6P    6%   �� *Gender+6P   5!      �� 5"   
   $'��!Заполнение анкеты��6   $	��Top=�6,   $��24��6D   $��333,0,305,0q�6P   5$      5%      