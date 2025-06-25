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

namespace psytest
{
    /// <summary>
    /// Логика взаимодействия для Ifno.xaml
    /// </summary>
    public partial class Ifno : Page
    {

        public Ifno()
        {
            InitializeComponent();

            rb1.IsChecked = true;
        }

        private void btnGo_Click(object sender, RoutedEventArgs e)
        {
            if ((tbGro.Text.Length == 0) || (tbName.Text.Length == 0) || (tbPart.Text.Length == 0) || (tbSurn.Text.Length == 0))
            {
                MessageBox.Show($"Заполните все поля!", "Внимание!",
                    MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
               


                StudentTesting set = new StudentTesting(tbName.Text, tbSurn.Text, tbPart.Text
                    , tbGro.Text, rb1.IsChecked.Value);
                Manager.MainFrame.Navigate(set);

            }
        }
    }
}
