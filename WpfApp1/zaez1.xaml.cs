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
    /// Логика взаимодействия для zaez1.xaml
    /// </summary>
    public partial class zaez1 : Page
    {
        private participant _part = new participant();
        private check_in _check = new check_in();

        public zaez1(participant select1, check_in select2)
        {
            InitializeComponent();

            Combo1.ItemsSource = option_2Entities.GetContext().competitions.ToList();
            Combo2.ItemsSource = option_2Entities.GetContext().jockeys.ToList();
            Combo3.ItemsSource = option_2Entities.GetContext().horses.ToList();

            if (select1 != null) _part = select1;
            if (select2 != null) _check = select2;

            DataContext = _part;

        }

        private void btn28(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (_check.id > 101 || _check.id < 6 )
                errors.AppendLine("Введите номер заезда, начиная с 6 по 100");
            if (_part.name_comp1 == null)
                errors.AppendLine("Выберите состязание");
            if (_part.name_j1 == null)
                errors.AppendLine("Выберите жокея");
            if (_part.name_h1 == null)
                errors.AppendLine("Выберите кличку лошади");
            if (_part.time_participants < 10M || _part.time_participants > 61M)
                errors.AppendLine("Введите время пробега");
            if (_part.place_participants < 0 || _part.time_participants > 11)
                errors.AppendLine("Введите занятое место");

            //проверка на дубликат записи этого неn

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            var all1 = option_2Entities.GetContext().participants.ToList();
            all1 = all1.Where(p => p.id_check_in == _check.id).ToList();

            if (all1.Count == 0 || (_check.id != 0 && all1.Count <= 1))
            {


                if (all1.Count == 0)
                    option_2Entities.GetContext().participants.Add(_part);

                try
                {
                    option_2Entities.GetContext().SaveChanges();
                    MessageBox.Show("Добавлены данные о лошаде");
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
