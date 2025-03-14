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
    /// Логика взаимодействия для add3.xaml
    /// </summary>
    public partial class add3 : Page
    {
        private competition _currentcomp = new competition();
        public add3(competition selectedcopm)
        {
            InitializeComponent();
            if (selectedcopm != null) 
                _currentcomp = selectedcopm;

            DataContext = _currentcomp;
        }


        //попытка перевести строку из тексбокса в время 
        /*private void time1(object sender, RoutedEventArgs e)
        {
            string t = time.Text;
            TimeSpan t1 = TimeSpan.Parse(time.Text);
        }*/
        //просмотреть связь между вводом и сохранением даты и времени
        //редактировать ещё много

        private void btn18(object sender, RoutedEventArgs e)
        {
            _currentcomp.date_competition = Convert.ToDateTime(date.Text);
            string str = _currentcomp.time_competition.ToString();
            TimeSpan.TryParse(str, out TimeSpan time);

            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrEmpty(_currentcomp.name_competition))
                errors.AppendLine("Введите наименование состязания");
            if (_currentcomp.date_competition == null)
                errors.AppendLine("Введите/укажите дату состязания");
            if (_currentcomp.time_competition == null)
                errors.AppendLine("Введите время состязания");
            if (string.IsNullOrEmpty(_currentcomp.hippodrome))
                errors.AppendLine("Введите ипподром");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            var allcomp = option_2Entities.GetContext().competitions.ToList();
            allcomp = allcomp.Where(p => p.name_competition == _currentcomp.name_competition).ToList();

            if (allcomp.Count == 0 || (_currentcomp.id != 0 && allcomp.Count <= 1))
            {


                if (allcomp.Count == 0)
                    option_2Entities.GetContext().competitions.Add(_currentcomp);

                try
                {
                    option_2Entities.GetContext().SaveChanges();
                    MessageBox.Show("Добавлены данные о состязании");
                    Manager.MainFrame.GoBack();

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
            else MessageBox.Show("Такая запись о состязании уже существует");
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
