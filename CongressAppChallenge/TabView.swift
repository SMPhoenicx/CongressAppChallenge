//
//  TabView.swift
//  NewMavApp
//
//  Created by Suman Muppavarapu on 9/1/24.
//
// jvu was here

import SwiftUI

@MainActor
struct TabControl:View {
    @State private var tabSelection: TabBarItem = .home
    var body: some View {
        TabBarContainer(selection: $tabSelection) {
            HomePageView()
                .tabBarItem(tab: .home, selection: $tabSelection)
            InfoView()
                .tabBarItem(tab: .info, selection: $tabSelection)
            MapView()
                .tabBarItem(tab: .map, selection: $tabSelection)
            SettingsView()
                .tabBarItem(tab: .settings, selection: $tabSelection)
        }
    }
}

#Preview{
    TabControl()
}
