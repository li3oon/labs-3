   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          WpfApp1.ownerhorse   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5      -   5          N� Title$  Владельцы��5	       N� 
FontFamily$ Cascadia Code)�6    N� FontSize$ 14(�64   .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DGridownerhorse��5         AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Владелец��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 * 6V   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 67   �� *
name_owner+6b     5      $ 
Адрес��6%   $	 * 6O   
 64   �� *adress+6[     5      $ Телефон��6%   $	 * 6P   
 66   �� *phone+6\   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
	 auto 6)      CellTemplate 5      �� 5      .R�5      �� 
���   �$��1q�69   $��Stretch=�6M   $��Stretch=�6k   ._�5   "   �� $��btnEdit��6A   -   5        $ ��Редактировать��5   )   6P   5      5      5      5      �� 5!   
   -   5        $	��btn��5!   0   $��1��6   $��Удалить��6   $	��120��6;   $��-50,5,-632,5q�6�   5"      5#      