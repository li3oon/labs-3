   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          WpfApp1.add2   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5        N� Title$-  'Добавление владельца��5	       N� 
FontFamily$ Cascadia Code)�6$    N� FontSize$ 14(�6?    N� 
Foreground
 �����.��5      �  � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      $	��325 �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��80 �6   �� 5      $��* �6   .+�5   
   �� $��Имя��6   $��Right=�6   $��Center=�6;   6X   �� 5   
   $��
Адрес��6   $��1��6!   $��Right=�6.   $��Center=�6J   6g   �� 5   
   $��Телефон��6   $��2��6#   $��Right=�60   $��Center=�6L   6i   �� 5   
   $	��325��6.    �� 	MaxLength$	 100��6:   $��1��6J   $
��Left=�6Z   ��6   �� *
name_owner+6w   �� 5   
   $ 11��6)   $	��325��68   $��1��6D   $��2��6T   $
��Left=�6a   ��6   �� *phone+6~   �� 5   
   $	��325��6*   $	 100��66   $��1��6F   $��1��6S   $
��Left=�6c   ��6   �� *adress+6�   �� 5    
   -   5        $��save1��5    p   $��Сохранить��6\   $	��100��6}   $��Center=�6�   $��4��6�   $��2��6�   $	��Top=�6�   6�   �� 5!   
   -   5        $��db��5!   {   $*��$Данные о владельцах��6]   $	��170��6�   $��Center=�6�   $��3��6�   $��2��6�   $	��Top=�6�   6�   5#      5$      