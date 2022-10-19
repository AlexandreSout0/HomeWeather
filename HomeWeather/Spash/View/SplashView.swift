//
//  SplashView.swift
//  HomeWeather
//
//  Created by Alexandre Souto on 18/10/22.
//

import SwiftUI

struct SplashView: View {
    
    @ObservedObject var viewModel: SplashViewModel
    
    
    var body: some View {
        Group{
            switch viewModel.uiState{
            case .loading:
                LoadingView()
            case .goToHomeScreen:
                viewModel.HomeView()
            case .error(let msg):
                loadingView(error: msg)
            }
        }.onAppear(perform: viewModel.onAppear)
    }
}


//1. Compartilhamneto | Objetos
struct LoadingView: View{
    var body: some View{
        ZStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity , maxHeight: .infinity, alignment: .center)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
            
        }
    }
}

//2. Variáveis em extensions
extension SplashView{
    func loadingView(error: String? = nil) -> some View{
        ZStack{
             Image("logo")
             .resizable()
             .scaledToFit()
             .frame(maxWidth: .infinity , maxHeight: .infinity, alignment: .center)
             .padding(20)
             .background(Color.white)
             .ignoresSafeArea()
            if let error = error {
              Text("")
                .alert(isPresented: .constant(true)) {
                  Alert(title: Text("Erro ao localizar dados"), message: Text(error), dismissButton: .default(Text("Ok")) {
                    // faz algo quando some o alerta
                  })
                }
             }
            
        }
    }
}


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = SplashViewModel()
        SplashView(viewModel: viewModel)
    }
}
