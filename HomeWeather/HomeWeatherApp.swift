//
//  HomeWeatherApp.swift
//  HomeWeather
//
//  Created by Alexandre Souto on 18/10/22.
//

import SwiftUI

@main
struct HomeWeatherApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: SplashViewModel())
        }
    }
}
