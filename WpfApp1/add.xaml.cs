using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для add.xaml
    /// </summary>
    public partial class add : Page
    {
        private horse _currenthorse = new horse();

        public add()
        {
            InitializeComponent();
            DataContext = _currenthorse;
            ComboOwners.ItemsSource = option_2Entities.GetContext().horse_owner.ToList();
        }

        private void btn7(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new add2());
        }
        
        private void btn8(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currenthorse.name_horse))
                errors.AppendLine("Введите кличку лошади");
            if (string.IsNullOrWhiteSpace(_currenthorse.sex))
                errors.AppendLine("Введите пол лошади: муж/жен");
            if (_currenthorse.age < 0 || _currenthorse.age > 30)
                errors.AppendLine("Введите корректный возраст лошади");
            if (_currenthorse.horse_owner == null)
                errors.AppendLine("Выберите владельца");

            //проверка на дубликат записи этого неn

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currenthorse.id == 0)
                option_2Entities.GetContext().horses.Add(_currenthorse);

            try
            {
                option_2Entities.GetContext().SaveChanges();
                MessageBox.Show("Добавлены данные о лошаде");
            }
            catch (Exception ex) 
            { 
                MessageBox.Show(ex.Message.ToString());
            }
        }

      

        private void Button_MouseEnter(object sender, MouseEventArgs e)
        {
            (sender as Button).Background = Brushes.LightGray;
        }

        private void Button_MouseLeave(object sender, MouseEventArgs e)
        {
            (sender as Button).Background = Brushes.LightGray;
        }

        
    }
}
