   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          
WpfApp1._2   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5      -   5          N� Title$!  Список лошадей��5	       N� 
FontFamily$ Cascadia Code)�6    N� FontSize$ 14(�69   .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DGridhorses��5         AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Кличка лошади��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 * 6[   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6<   �� *
name_horse+6g     5      $ Владелец��6%   $	 * 6V   
 67   �� *
owner_name+6b     5      $ Пол��6%   $	 * 6J   
 62   �� *sex+6V     5      $ Возраст��6%   $	 * 6N   
 66   �� *age+6Z   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
	 auto 6)      CellTemplate 5      �� 5      .R�5      �� 
���   �$��1q�69   $��Stretch=�6M   $��Stretch=�6k   ._�5   "   �� $��btnEdit��6A   -   5        $ ��Редактировать��5   )   6P   5      5      5      5       �� 5"   
   -   5        $
��btn5��5"   1   $��1��6   $��Добавить��6   $��
50,5,632,5q�6�   �� 5#   
   -   5        $
��btn6��5#   1   $��1��6   $��Удалить��6   $��
632,5,50,5q�6�   5$      5%      