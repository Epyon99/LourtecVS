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
using System.Windows.Shapes;

namespace UCV.UIClient
{
    /// <summary>
    /// Interaction logic for Companias.xaml
    /// </summary>
    public partial class Companias : Window
    {
        Proxy.CompaniasServiceClient client = new Proxy.CompaniasServiceClient();
        public Companias()
        {
            InitializeComponent();
            Lista.ItemsSource = client.GetCompanias();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var col = client.GetCompanias().ToList();
            col = col.Where(g => g.Ruc != null && g.Ruc.Contains(Filtro.Text)).ToList();
            Lista.ItemsSource = col;
        }
    }
}
