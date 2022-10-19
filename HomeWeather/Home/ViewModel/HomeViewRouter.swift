//
//  HomeViewRouter.swift
//  HomeWeather
//
//  Created by Alexandre Souto on 19/10/22.
//

import SwiftUI

enum HomeViewRouter{
    static func makeHomeView() -> some View{
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
    
    static func makeConfigView() -> some View {
        return ConfigView()
    }
}
