   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          WpfApp1.zaezd   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5        N� Title$  Заезды��5	       N� 
FontFamily$ Cascadia Code)�6    N� FontSize$ 14(�61   .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	DGridpart��5         AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Номер заезда��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 93 6[   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6;   �� *id_check_in+6h     5      $3 -Наименование состязания��6%   $		 171 6e   
 6F   �� *
name_comp1+6s     5      $ 
Жокей��6%   $	 * 6P   
 64   �� *	name_j1+6\     5      $ Лошадь��6%   $	 * 6Q   
 65   �� *	name_h1+6]     5      $ Время заезда��6%   $	 45 6a   
 6;   �� *time_participants+6n     5      $ Занятое место��6%   $		 105 6c   
 6<   �� *place_participants+6q   5"      5'      5(      