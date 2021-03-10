//
//  ContentView.swift
//  Culminating Assingment
//
//  Created by Mo Asche on 2021-03-03.
//

import SwiftUI

struct ListItem: Identifiable {
    let id = UUID()
    let title: String
    let summary: String
}

struct ContentView: View {
    var body: some View {
        
        
        
        NavigationView {
            List {
                NavigationLink(destination: DaysTillDeath()) {
                    
                    ListItem(title: "Days Till You Die",
                             summary: "This gives you an estimate on when you will die")
                }
                
                NavigationLink(destination: DaysTillBDay()) {
                    
                    ListItem(title: "Days Till You Die",
                             summary: "This gives you an estimate on when you will die")
                }
                
                NavigationLink(destination: DaysTillHoliday()) {
                    
                    ListItem(title: "Days Till You Die",
                             summary: "This gives you an estimate on when you will die")
                }
                
                NavigationLink(destination: DaysLivedSinceBirth()) {
                    
                    ListItem(title: "Days Till You Die",
                             summary: "This gives you an estimate on when you will die")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
