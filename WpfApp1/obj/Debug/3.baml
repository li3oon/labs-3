   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          
WpfApp1._3   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5      -   5          N� Title$  Соренования��5	       N� 
FontFamily$ Cascadia Code)�6    N� FontSize$ 14(�66   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   (  "System.Windows.Controls.DatePicker  -   5        $	��end��5   M   $��424,5,226,5q�6X   6o     5   
   -   5        $��start��5   O   $��225,5,425,5q�6\   6s   �� 5   
   $/��)Сортировка по датам:   c��6   $��Center=�64   $��
10,0,500,0q�6O   6e   �� 5   
   $
��по��6   $��Center=�6   $��17��69   $��Center=�6D   6c   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	DGridcomp��5   !   $��1��6      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Наименование��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 * 6`   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6;   �� *name_competition+6l     5      $ Дата��6%   $	 * 6r   
 63   �� *date_competition+ �� StringFormat$ 
dd.MM.yyyy��6~     5      $ 
Время��6%   $	 * 6q   
 64   �� *time_competition+$ hh\:mm��6}     5      $ Ипподром��6%   $	 * 6V   
 67   �� *
hippodrome+6b   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
	 auto 6)      CellTemplate 5      �� 5      .R�5      �� 
���   �$��1q�69   $��Stretch=�6M   $��Stretch=�6k   ._�5    "   �� $��btnEdit��6A   -   5        $ ��Редактировать��5    )   6P   5!      5"      5$      5&      �� 5(   
   -   5        $��btn144��5(   1   $��2��6   $��Добавить��6   $��
50,5,632,5q�6�   �� 5)   
   -   5        $��btn155��5)   0   $��2��6   $��Удалить��6   $��
632,5,50,5q�6�    � Cursor$
 Hand��6�   �� 5*   
   -   5        $��btn166��5*   /   $��2��6   $��Заезды��6   $	��120��6=   $��Center=�6�   $��Center=�6�   $
 Hand��6�   5+      5,      