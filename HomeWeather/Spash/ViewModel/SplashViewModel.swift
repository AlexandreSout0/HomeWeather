//
//  SplashViewModel.swift
//  HomeWeather
//
//  Created by Alexandre Souto on 18/10/22.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    
    @Published var uiState: SplashUiState = .loading
    
    func onAppear(){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            self.uiState = .goToHomeScreen
        }
        
    }
    
    func HomeView() -> some View{
        return SplashViewRouter.makeHomeView()
    }

}


