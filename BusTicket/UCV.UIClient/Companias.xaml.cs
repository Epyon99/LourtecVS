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
    }
}
