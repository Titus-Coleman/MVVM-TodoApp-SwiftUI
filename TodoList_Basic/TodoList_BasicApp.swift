//
//  TodoList_BasicApp.swift
//  TodoList_Basic
//
//  Created by Titus Coleman on 7/19/23.
//

import SwiftUI


/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 */

@main
struct TodoList_BasicApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
            }
        }
    }
}
