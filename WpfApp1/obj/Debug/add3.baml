   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          WpfApp1.add3   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5        N� Title$L  FДобавление/редактирование состязания��5	       N� 
FontFamily$ Cascadia Code)�64    N� FontSize$ 14(�6O    N� 
Foreground
 �����.��5      �  � ColumnDefinitions 5   
   �� 5   
   $	��150 �6   �� 5   
   $	��325 �6   �� 5   
   $��* �6    � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��* �6   .+�5   
   �� $��Наименование��6   $��Right=�6(   $��Center=�6D   6a   �� 5   
   $	��325��64    �� 	MaxLength$	 100��6@   $��1��6P   $
��Left=�6`   ��6   �� *name_competition+6}   �� 5   
   $��1��6   $��Дата��6!   $��Right=�6-   $��Center=�6I   6f   (  "System.Windows.Controls.DatePicker  5   
   -   5        $
��date��5   l      SelectedDateFormat$ Short=�67      IsTodayHighlighted . $��1��6x   $��1��6�   	   DisplayDateEnd$	 
2099-12-31X�6�   
   DisplayDateStart$
 
1989-12-31X�6�      Text 6   �� *date_competition+6�   �� 5   
   $��2��6   $��
Время��6!   $��Right=�6.   $��Center=�6J   6g   �� 5   
   -   5        $
��time��5   4   $	��325��6@   $��2��6L   $��1��6Y   $ 9��6i   ��6   �� *time_competition+6y   �� 5!   
   $��3��6   $��Ипподром��6!   $��Right=�61   $��Center=�6M   6j   �� 5"   
   $	��325��6.   $	 100��6:   $��3��6J   $��1��6W   $
��Left=�6g   ��6   �� *
hippodrome+6�   �� 5#   
   -   5        $
��save��5#   q   $��Сохранить��6]   $	��100��6}   $��Center=�6�   $��4��6�   $��2��6�   $	��Top=�6�   6�   5%      5&      