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
    /// Логика взаимодействия для _3.xaml
    /// </summary>
    public partial class _3 : Page
    {
        public _3()
        {
            InitializeComponent();
            DGridcomp.ItemsSource = option_2Entities.GetContext().competitions.ToList();

        }

        private void btn13(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new add3((sender as Button).DataContext as competition));
        }

        private void btn14(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new add3(null));
        }

        private void btn15(object sender, RoutedEventArgs e)
        {
            var compRemoving = DGridcomp.SelectedItems.Cast<competition>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {compRemoving.Count()} записи?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    option_2Entities.GetContext().competitions.RemoveRange(compRemoving);
                    option_2Entities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");

                    DGridcomp.ItemsSource = option_2Entities.GetContext().competitions.ToList();

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }
        private void btn16(object sender, RoutedEventArgs e)
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

        private void StartDatePicker_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            if (end.SelectedDate == null || end.SelectedDate < start.SelectedDate)
            {
                end.SelectedDate = DateTime.Now.Date;
            }

            ApplyDateFilter();
        }

        private void EndDatePicker_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            ApplyDateFilter();
        }
        private void ApplyDateFilter()
        {
            if (start.SelectedDate == null || end.SelectedDate == null)
                return;

            DateTime startDate = start.SelectedDate.Value.Date;
            DateTime endDate = end.SelectedDate.Value.Date.AddDays(1).AddTicks(-1);

            DGridcomp.Items.Filter = item =>
            {
                competition items = (competition)item;

                return items.date_competition >= startDate && (items.date_competition == null || items.date_competition <= endDate);
            };

        }
    }
}
