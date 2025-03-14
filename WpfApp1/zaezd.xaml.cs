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
    /// Логика взаимодействия для zaezd.xaml
    /// </summary>
    public partial class zaezd : Page
    {
        public zaezd()
        {
            InitializeComponent();
            DGridpart.ItemsSource = option_2Entities.GetContext().participants.ToList();
        }

        


        /*private void btn25(object sender, RoutedEventArgs e)
        {

        }

        private void btn26(object sender, RoutedEventArgs e)
        {

        }

        private void btn27(object sender, RoutedEventArgs e)
        {

        }

        private void Button_MouseEnter(object sender, MouseEventArgs e)
        {
            (sender as Button).Background = Brushes.LightGray;
        }

        private void Button_MouseLeave(object sender, MouseEventArgs e)
        {
            (sender as Button).Background = Brushes.LightGray;
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                option_2Entities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridhorses.ItemsSource = option_2Entities.GetContext().horses.ToList();

            }
        }*/
    }
}
