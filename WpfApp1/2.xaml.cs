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
    /// Логика взаимодействия для _2.xaml
    /// </summary>
    public partial class _2 : Page
    {
        public _2()
        {
            InitializeComponent();
            DGridhorses.ItemsSource = option_2Entities.GetContext().horses.ToList();

        }
        private void btn4(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new add((sender as Button).DataContext as horse));
        }
        private void btn55(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new add(null));
        }
        private void btn66(object sender, RoutedEventArgs e)
        {
            var horseRemoving = DGridhorses.SelectedItems.Cast<horse>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {horseRemoving.Count()} элементы?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    option_2Entities.GetContext().horses.RemoveRange(horseRemoving);
                    option_2Entities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");

                    DGridhorses.ItemsSource = option_2Entities.GetContext().horses.ToList();

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

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            /*if (Visibility == Visibility.Visible)
            {
                option_2Entities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridhorses.ItemsSource = option_2Entities.GetContext().horses.ToList();

            }*/
        }
    }
}
