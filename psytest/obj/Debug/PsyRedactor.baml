   M S B A M L   `   `   `  ����B  >psytest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:psytestpsytest  5          psytest.PsyRedactor   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:psytest     5        N� Title$  PsyRedactor��5	      .��5      � $��0,-6,0,6q�6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $%��400                             �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��80 �6   �� 5      $	��300 �6   �� 5      $��* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	dgResults��5         
IsReadOnly .    AutoGenerateColumns .  $��10,153,260,169q�6T   $��2��6l   $��2��6|   $��2��6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6<      Width5  /System.Windows.Controls.DataGridLengthConverter$ 25 6H   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6%   �� *ID+6H     5      $" Характеристика��6>   $	 100 6V   	 6%   �� *Name+6V     5      $ Изнач знач��6?   $ 90 6S   	 6%   �� *Value+6S     5      $% Минимальное знач��6=   $	 170 6W   	 6%   �� *Min+6W   5      �� 5    
   $"��Характеристика��6   $	��Top=�6)   $��25��6A   $��54,23,270,0q�6M   $��1��6b   �� 5!   
   -   5        
 ��Name$
 	TextLogin��5!       �� TextWrapping$
 Wrap=�6%   $	��Top=�6:   $��185,23,24,0q�6R   $��25��6g   $��1��6s   �� 5"   
   -   5         ��Name$ BtnAdd��5"      $��Добавить��6!   
��� ���$	��Top=�6H   $��54,141,24,0q�6u   $��30��6�   $��1��6�   �� 5#   
   $��Изнач знач��6   $	��Top=�6%   $��25��6=   $��54,53,300,0q�6I   $��1��6^   �� 5$   
   -   5        $
 TextLogin_Copy��5$      $
 Wrap=�6*   $	��Top=�6?   $��185,53,24,0q�6W   $��25��6l   $��1��6x   �� 5%   
   $��Мин знач��6   $	��Top=�6#   $��25��6;   $��54,83,300,0q�6G   $��1��6\   �� 5&   
   -   5        $
 TextLogin_Copy1��5&      $
 Wrap=�6+   $	��Top=�6@   $��185,83,24,0q�6X   $��25��6m   $��1��6y   �� 5'   
   -   5        $ BtnRef��5'      $��Обновить��6!   
��� ���$	��Top=�6H   $��54,176,24,0q�6u   $��25��6�   $��1��6�   �� 5(   
   -   5        $ BtnDel��5(      $��Удалить��6!   
��� ���$	��Top=�6G   $��54,206,24,0q�6t   $��25��6�   $��1��6�   5,      5-      