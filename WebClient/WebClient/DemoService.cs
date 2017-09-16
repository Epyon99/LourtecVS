using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Services;
using System.ServiceModel.Web;

namespace WebClient
{
    public class TestA
    {
        public string PropA { get; set; }
    }
    class DemoService : DataService<TestA>
    {
        public static void InitializeService(DataServiceConfiguration config)
        {
            config.SetEntitySetAccessRule("*", EntitySetRights.All);
            config.SetServiceOperationAccessRule("TestMethodA", ServiceOperationRights.All);
        }

        [WebGet]
        [SingleResult]
        public TestA TestMethodA()
        {
            return new TestA() { PropA = "Hola Mundo" };
        }
    }
}
