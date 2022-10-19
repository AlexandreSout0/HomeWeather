//
//  SplashViewRouter.swift
//  HomeWeather
//
//  Created by Alexandre Souto on 19/10/22.
//

import SwiftUI

enum SplashViewRouter{
    
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}
