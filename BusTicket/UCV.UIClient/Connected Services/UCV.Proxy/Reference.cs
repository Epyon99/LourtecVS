﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UCV.UIClient.UCV.Proxy {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="UCV.Proxy.ICompaniasService")]
    public interface ICompaniasService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICompaniasService/GetCompanias", ReplyAction="http://tempuri.org/ICompaniasService/GetCompaniasResponse")]
        UCV.Comun.Modelos.Compania[] GetCompanias();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICompaniasService/GetCompanias", ReplyAction="http://tempuri.org/ICompaniasService/GetCompaniasResponse")]
        System.Threading.Tasks.Task<UCV.Comun.Modelos.Compania[]> GetCompaniasAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICompaniasService/SaveCompania", ReplyAction="http://tempuri.org/ICompaniasService/SaveCompaniaResponse")]
        void SaveCompania(UCV.Comun.Modelos.Compania compania);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICompaniasService/SaveCompania", ReplyAction="http://tempuri.org/ICompaniasService/SaveCompaniaResponse")]
        System.Threading.Tasks.Task SaveCompaniaAsync(UCV.Comun.Modelos.Compania compania);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICompaniasService/UpdateCompania", ReplyAction="http://tempuri.org/ICompaniasService/UpdateCompaniaResponse")]
        void UpdateCompania(UCV.Comun.Modelos.Compania compania);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICompaniasService/UpdateCompania", ReplyAction="http://tempuri.org/ICompaniasService/UpdateCompaniaResponse")]
        System.Threading.Tasks.Task UpdateCompaniaAsync(UCV.Comun.Modelos.Compania compania);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICompaniasService/DeleteCompania", ReplyAction="http://tempuri.org/ICompaniasService/DeleteCompaniaResponse")]
        void DeleteCompania(UCV.Comun.Modelos.Compania compania);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICompaniasService/DeleteCompania", ReplyAction="http://tempuri.org/ICompaniasService/DeleteCompaniaResponse")]
        System.Threading.Tasks.Task DeleteCompaniaAsync(UCV.Comun.Modelos.Compania compania);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ICompaniasServiceChannel : UCV.UIClient.UCV.Proxy.ICompaniasService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class CompaniasServiceClient : System.ServiceModel.ClientBase<UCV.UIClient.UCV.Proxy.ICompaniasService>, UCV.UIClient.UCV.Proxy.ICompaniasService {
        
        public CompaniasServiceClient() {
        }
        
        public CompaniasServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public CompaniasServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public CompaniasServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public CompaniasServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public UCV.Comun.Modelos.Compania[] GetCompanias() {
            return base.Channel.GetCompanias();
        }
        
        public System.Threading.Tasks.Task<UCV.Comun.Modelos.Compania[]> GetCompaniasAsync() {
            return base.Channel.GetCompaniasAsync();
        }
        
        public void SaveCompania(UCV.Comun.Modelos.Compania compania) {
            base.Channel.SaveCompania(compania);
        }
        
        public System.Threading.Tasks.Task SaveCompaniaAsync(UCV.Comun.Modelos.Compania compania) {
            return base.Channel.SaveCompaniaAsync(compania);
        }
        
        public void UpdateCompania(UCV.Comun.Modelos.Compania compania) {
            base.Channel.UpdateCompania(compania);
        }
        
        public System.Threading.Tasks.Task UpdateCompaniaAsync(UCV.Comun.Modelos.Compania compania) {
            return base.Channel.UpdateCompaniaAsync(compania);
        }
        
        public void DeleteCompania(UCV.Comun.Modelos.Compania compania) {
            base.Channel.DeleteCompania(compania);
        }
        
        public System.Threading.Tasks.Task DeleteCompaniaAsync(UCV.Comun.Modelos.Compania compania) {
            return base.Channel.DeleteCompaniaAsync(compania);
        }
    }
}
