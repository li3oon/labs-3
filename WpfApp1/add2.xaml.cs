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
    /// Логика взаимодействия для add2.xaml
    /// </summary>
    public partial class add2 : Page
    {
        private horse_owner _currenthorseowner = new horse_owner();

        public add2(horse_owner selectedhorseowner)
        {
            InitializeComponent();
            if (selectedhorseowner != null)
                _currenthorseowner = selectedhorseowner;

            DataContext = _currenthorseowner;
            
        }

        private void btn9(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currenthorseowner.name_owner))
                errors.AppendLine("Введите имя владельца");
            if (string.IsNullOrWhiteSpace(_currenthorseowner.adress))
                errors.AppendLine("Введите адрес владельца");
            if (string.IsNullOrWhiteSpace(_currenthorseowner.phone))
                errors.AppendLine("Введите телефон владельца");

            //проверка на дубликат записи этого неn

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            var allhorseowners = option_2Entities.GetContext().horse_owner.ToList();
            allhorseowners = allhorseowners.Where(p => p.name_owner == _currenthorseowner.name_owner).ToList();

            if (allhorseowners.Count == 0 || (_currenthorseowner.id != 0 && allhorseowners.Count <= 1))
            {


                if (allhorseowners.Count == 0)
                    option_2Entities.GetContext().horse_owner.Add(_currenthorseowner);

                try
                {
                    option_2Entities.GetContext().SaveChanges();
                    MessageBox.Show("Добавлены данные о владельце");
                    Manager.MainFrame.GoBack();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
            else MessageBox.Show("Такая запись о владельце уже существует");
        }

        private void Button_MouseEnter(object sender, MouseEventArgs e)
        {
            (sender as Button).Background = Brushes.LightGray;
        }

        private void Button_MouseLeave(object sender, MouseEventArgs e)
        {
            (sender as Button).Background = Brushes.LightGray;
        }

        private void btn10(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new ownerhorse(null));
        }
    }
}
