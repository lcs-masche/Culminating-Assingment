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
    
    @State private var showDetails = true
    
    
    var body: some View {
    
        VStack {
            
            NavigationLink(destination: DaysTillDeath()) {
                Text("Death")
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .colorMultiply(.black)
                    .frame(width: 100, height: 20)
                    .font(.title)
            }
            
            
            NavigationLink(destination: DaysTillBDay()) {
                Text("B-Day")
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .colorMultiply(.black)
                    .frame(width: 100, height: 20)
                    .font(.title)
                
            }
            

            NavigationLink(destination: DaysTillHoliday()) {
                Text("Holiday")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .colorMultiply(.black)
                .frame(width: 100, height: 20)
                .font(.title)
            }

            NavigationLink(destination: OwnSetDate()) {
                Text("Set Date")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .colorMultiply(.black)
                .font(.title)
            }
            
            NavigationLink(destination: OwnTimer()) {
                Text("Set Timer")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .colorMultiply(.black)
                .font(.title)
            }
            
            
            
        }
        .navigationTitle("Time Till")
        
        
//        ZStack {
//
//            Rectangle()
//                .colorMultiply(.black)
//                //                .foregroundColor(.init(red: 7, green: 238, blue: 242, opacity: 100))
//                .frame(width: 1000, height: 1000, alignment: .center)
//
//
//            Text("TIME TILL . . .")
//                .fontWeight(.heavy)
//                .foregroundColor(.white)
//                .colorMultiply(.white)
//                .multilineTextAlignment(.leading)
//                .offset(x: -40, y: -250)
//                .font(.largeTitle)
//
//            Rectangle()
//                .foregroundColor(.white)
//                .opacity(0.75)
//                .frame(width: 200, height: 430)
//                .cornerRadius(10.0)
//                .offset(x: 0, y: 0)
//
//
//
//            ZStack {
//                Rectangle()
//                    .foregroundColor(.red)
//                    .frame(width: 170, height: 35)
//                    .cornerRadius(3.0)
//                    .offset(x: 0, y: -180)
//
//
//                Text("Death")
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.black)
//                    .colorMultiply(.black)
//                    .frame(width: 100, height: 20)
//                    .offset(x: 0, y: -180)
//                    .font(.title)
//
//                //                Button("Show details") {
//                //                    showDetails.toggle()
//                //                            }
//                //                if showDetails {
//                //                    NavigationLink(<#T##titleKey: LocalizedStringKey##LocalizedStringKey#>, destination: DaysTillDeath)
//                //                }
//
//
//            }
//
//            ZStack {
////                Rectangle()
////                    .foregroundColor(.red)
////                    .frame(width: 170, height: 35)
////                    .cornerRadius(3.0)
////                    .offset(x: 0, y: -130)
//
//
//
//
//
//            }
//
//            ZStack {
//                Rectangle()
//                    .foregroundColor(.red)
//                    .frame(width: 170, height: 35)
//                    .cornerRadius(3.0)
//                    .offset(x: 0, y: -80)
//
//                Text("Holiday")
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.black)
//                    .colorMultiply(.black)
//                    .frame(width: 100, height: 20)
//                    .offset(x: 0, y: -80)
//                    .font(.title)
//
//            }
//
//            ZStack {
//                Rectangle()
//                    .foregroundColor(.red)
//                    .frame(width: 170, height: 35)
//                    .cornerRadius(3.0)
//                    .offset(x: 0, y: -30)
//
//                Text("Days Lived")
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.black)
//                    .colorMultiply(.black)
//                    .frame(width: 100, height: 20)
//                    .offset(x: 0, y: -30)
//                    .font(.title)
//
//            }
//
//            ZStack {
//                Rectangle()
//                    .foregroundColor(.red)
//                    .frame(width: 170, height: 35)
//                    .cornerRadius(3.0)
//                    .offset(x: 0, y: 20)
//
//                Text("B-Day")
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.black)
//                    .colorMultiply(.black)
//                    .frame(width: 100, height: 20)
//                    .offset(x: 0, y: 20)
//                    .font(.title)
//
//            }
//
//            ZStack {
//                Rectangle()
//                    .foregroundColor(.red)
//                    .frame(width: 170, height: 35)
//                    .cornerRadius(3.0)
//                    .offset(x: 0, y: 20)
//
//                Text("Year")
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.black)
//                    .colorMultiply(.black)
//                    .frame(width: 100, height: 20)
//                    .offset(x: 0, y: 20)
//                    .font(.title)
//
//            }
//
//
//
//
//        }
//
//
//
//
//
//
//        //        NavigationView {
//
//        //            List {
//        //                NavigationLink(destination: DaysTillDeath()) {
//        //
//        //                ListItemView(title: "Days Till You Die", caption: "This gives you an estimate on when you will die")
//        //                }
//        //
//        //                NavigationLink(destination: DaysTillBDay()) {
//        //
//        //                ListItemView(title: "Days Till Your B-Day", caption: "This gives you the days left until ur B-Day")
//        //
//        //                }
//        //
//        //                NavigationLink(destination: DaysTillHoliday()) {
//        //
//        //                    ListItemView(title: "Days Till The Next Holiday", caption: "This gives you the days left until the next break")
//        //                }
//        //
//        //                NavigationLink(destination: DaysLivedSinceBirth()) {
//        //
//        //                    ListItemView(title: "Days Passed Since Your Birth", caption: "The days passed since your birth")
//        //                }
//        //
//        //            }
//        //        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
