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
    /// Логика взаимодействия для rating.xaml
    /// </summary>
    public partial class rating : Page
    {
        public rating()
        {
            InitializeComponent();
            DGridjockey.ItemsSource = option_2Entities.GetContext().jockeys.ToList();

        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            /*if (Visibility == Visibility.Visible)
            {
                option_2Entities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridjockey.ItemsSource = option_2Entities.GetContext().jockeys.ToList();

            }*/
        }

        private void btn23(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new addjockey((sender as Button).DataContext as jockey));
        }

        private void btn20(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new addjockey(null));
        }

        private void btn21(object sender, RoutedEventArgs e)
        {
            var jockeyRemoving = DGridjockey.SelectedItems.Cast<jockey>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {jockeyRemoving.Count()} записи?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    option_2Entities.GetContext().jockeys.RemoveRange(jockeyRemoving);
                    option_2Entities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");

                    DGridjockey.ItemsSource = option_2Entities.GetContext().jockeys.ToList();

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
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
