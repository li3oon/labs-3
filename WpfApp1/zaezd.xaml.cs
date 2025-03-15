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
            Manager.MainFrame.Navigate(new zaez1(null,null));

        }

        private void btn27(object sender, RoutedEventArgs e)
        {
            var partRemoving = DGridpart.SelectedItems.Cast<participant>().ToList();
            

            if (MessageBox.Show($"Вы точно хотите удалить следующие {partRemoving.Count()} элементы?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    option_2Entities.GetContext().participants.RemoveRange(partRemoving);
                    option_2Entities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");

                    DGridpart.ItemsSource = option_2Entities.GetContext().participants.ToList();

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
            if (Visibility == Visibility.Visible)
            {
                option_2Entities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridhorses.ItemsSource = option_2Entities.GetContext().horses.ToList();

            }
        }*/
    }
}
