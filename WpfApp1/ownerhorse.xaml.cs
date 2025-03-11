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
    /// Логика взаимодействия для ownerhorse.xaml
    /// </summary>
    public partial class ownerhorse : Page
    {
        private horse_owner _currenthorseowner = new horse_owner();

        public ownerhorse(horse_owner selectedhorseowner)
        {
            InitializeComponent();

            if (selectedhorseowner != null)
                _currenthorseowner = selectedhorseowner;
            DGridownerhorse.ItemsSource = option_2Entities.GetContext().horse_owner.ToList();
        }
        private void btn12(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new add2((sender as Button).DataContext as horse_owner));
        }
        private void btn11(object sender, RoutedEventArgs e)
        {
            var ownerhorseRemoving = DGridownerhorse.SelectedItems.Cast<horse_owner>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {ownerhorseRemoving.Count()} записи?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    option_2Entities.GetContext().horse_owner.RemoveRange(ownerhorseRemoving);
                    option_2Entities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");

                    DGridownerhorse.ItemsSource = option_2Entities.GetContext().horse_owner.ToList();

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

        private void Page_IsVisibleChanged1(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                option_2Entities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridownerhorse.ItemsSource = option_2Entities.GetContext().horse_owner.ToList();

            }
        }
    }
}
