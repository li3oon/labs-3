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
    /// Логика взаимодействия для addjockey.xaml
    /// </summary>
    public partial class addjockey : Page
    {
        private jockey _currentjock = new jockey();

        public addjockey(jockey selectedjock)
        {
            InitializeComponent();
            if (selectedjock != null)
                _currentjock = selectedjock;

            DataContext = _currentjock;
        }

        private void btn22(object sender, RoutedEventArgs e)
        {
            string a = _currentjock.rating.ToString();
            decimal c = Convert.ToDecimal(a);
            //_currentjock.rating = Convert.ToDecimal(rat.Text);

            StringBuilder errors = new StringBuilder();


            if (string.IsNullOrWhiteSpace(_currentjock.name_jockey))
                errors.AppendLine("Введите имя жокея");
            if (string.IsNullOrWhiteSpace(_currentjock.adress))
                errors.AppendLine("Введите адрес жокея");
            if (_currentjock.age < 18 || _currentjock.age > 60)
                errors.AppendLine("Введите корректный возраст жокея");
            if (c > 9.9M || c < 0.0M)
                errors.AppendLine("Введите рейтинг жокея");

            //проверка на дубликат записи этого неn

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            var alljock = option_2Entities.GetContext().jockeys.ToList();
            alljock = alljock.Where(p => p.name_jockey == _currentjock.name_jockey).ToList();

            if (alljock.Count == 0 || (_currentjock.id != 0 && alljock.Count <= 1))
            {


                if (alljock.Count == 0)
                    option_2Entities.GetContext().jockeys.Add(_currentjock);

                try
                {
                    option_2Entities.GetContext().SaveChanges();
                    MessageBox.Show("Добавлены данные о жокее");
                    Manager.MainFrame.GoBack();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
            else MessageBox.Show("Такая запись о лошаде уже существует");
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
