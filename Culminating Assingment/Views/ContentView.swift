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
        
        ZStack {
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 170, height: 35)
                .cornerRadius(3.0)
                .offset(x: 0, y: -220)
                        
            Text("Death")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .colorMultiply(.black)
                .frame(width: 100, height: 20)
                .offset(x: 0, y: -220)
                .font(.title)
                
        }
        
        ZStack {
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 170, height: 35)
                .cornerRadius(3.0)
                .offset(x: 0, y: -180)
                        
            Text("B-Day")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .colorMultiply(.black)
                .frame(width: 100, height: 20)
                .offset(x: 0, y: -180)
                .font(.title)
                
        }

        
        
//        NavigationView {
            
//            List {
//                NavigationLink(destination: DaysTillDeath()) {
//
//                ListItemView(title: "Days Till You Die", caption: "This gives you an estimate on when you will die")
//                }
//
//                NavigationLink(destination: DaysTillBDay()) {
//
//                ListItemView(title: "Days Till Your B-Day", caption: "This gives you the days left until ur B-Day")
//
//                }
//
//                NavigationLink(destination: DaysTillHoliday()) {
//
//                    ListItemView(title: "Days Till The Next Holiday", caption: "This gives you the days left until the next break")
//                }
//
//                NavigationLink(destination: DaysLivedSinceBirth()) {
//
//                    ListItemView(title: "Days Passed Since Your Birth", caption: "The days passed since your birth")
//                }
//
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
