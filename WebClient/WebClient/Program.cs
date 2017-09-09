using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace WebClient
{
    class Program
    {
        static void Main(string[] args)
        {
            var uri = new Uri("http://www.google.com");
            var request = WebRequest.Create(uri) as HttpWebRequest;
            var response = request.GetResponse() as HttpWebResponse;

            if (response.StatusCode == HttpStatusCode.OK)
            {
                using (var s = new StreamReader(response.GetResponseStream()))
                {
                    Console.WriteLine(s.ReadToEnd());
                }
            }
            else
            {
                Console.WriteLine(response.StatusCode);
            }

            Console.ReadKey();
        }
    }
}
