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
    /// Логика взаимодействия для _1.xaml
    /// </summary>
    public partial class _1 : Page
    {
        public _1()
        {
            InitializeComponent();
        }
        private void btn1(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new _2());
        }
        private void btn2(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new _3());
        }
        private void btn3(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new rating());
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
