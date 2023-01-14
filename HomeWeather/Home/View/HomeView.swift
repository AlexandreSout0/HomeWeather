//
//  HomeView.swift
//  HomeWeather
//
//  Created by Alexandre Souto on 19/10/22.
//

import SwiftUI



struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    @StateObject var viewModel2 = BluetoothViewModel()

   // @ObservedObject private var bluetoothViewModel = BluetoothViewModel()
        
    @State var action: Int? = 0
    @State var navigationHidden: Bool = true
        
    var body: some View {
        
        ScrollView(showsIndicators: false){
            NavigationView{
                VStack{
                    configLink
                    Text("HomeView")
                    
                    Button("BLE Sent"){
                        viewModel2.sendText(text: "Alexandre Souto")
                    }
                    
                    Text(viewModel2.temperatura + "ºC")
                    Text(viewModel2.umidade + "%")
                    
                }.navigationBarTitle("Home", displayMode:.inline)
                    .navigationBarHidden(navigationHidden)
            }
        }
    }
}



extension HomeView{
    var configLink: some View{
        VStack{
            ZStack{
                //Image(systemName:"gearshape.fill").font(.system(size: 40)).padding()
                NavigationLink(
                    destination: viewModel.HomeView(),
                tag: 1,
                selection:$action,
                label: {EmptyView()}
                )
                Button("Configuração"){
                    self.action = 1
                }
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = HomeViewModel()
        HomeView(viewModel: viewModel)
    }
}
