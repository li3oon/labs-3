   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          WpfApp1.addjockey   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5        N� Title$B  <Добавление/редактирования жокея��5	       N� 
FontFamily$ Cascadia Code)�6/    N� FontSize$ 14(�6J    N� 
Foreground
 �����.��5      �  � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      $	��325 �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��* �6   .+�5   
   �� $��Имя жокея��6   $��Right=�6%   $��Center=�6A   6^   �� 5   
   $	��325��6/    �� 	MaxLength$	 100��6;   $��1��6K   $
��Left=�6[   ��6   �� *name_jockey+6x   �� 5   
   $��1��6   $��
Адрес��6!   $��Right=�6.   $��Center=�6J   6g   �� 5   
   $	��325��6*   $	 100��66   $��1��6F   $��1��6V   $
��Left=�6c   ��6   �� *adress+6�   �� 5   
   $��2��6   $��Возраст��6!   $��Right=�60   $��Center=�6L   6i   �� 5   
   -   5        $	��age��5   '   $	��325��62   $��2��6>   $��1��6K   $ 2��6[   ��6   �� *age+6k   �� 5!   
   $��3��6   $��Рейтинг��6!   $��Right=�60   $��Center=�6L   6i   �� 5"   
   -   5        $	��rat��5"   *   $	��325��65   $ 4��6A   $��3��6O   $��1��6\   $
��Left=�6l   ��6   �� *rating+6�   �� 5#   
   -   5        $
��save��5#   q   $��Сохранить��6]   $	��100��6}   $��Center=�6�   $��4��6�   $��2��6�   $	��Top=�6�   6�   5%      5&      