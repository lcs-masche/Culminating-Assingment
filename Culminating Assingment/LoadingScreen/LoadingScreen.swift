//
//  LoadingScreen.swift
//  Culminating Assingment
//
//  Created by Mo Asche on 2021-03-03.
//

import SwiftUI




struct CustomComposableView: View {
    
    @State private var shouldAnimate = false
    @State var bottomOffset: CGFloat = -70
    @State var topOffset: CGFloat = 70
    @State private var offSet = 40
    @State var rightOffset = 70
    @State var leftOffset = -70
    @State var textOffset = 100
    let timerColour = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    
    @State private var scaleFactor: CGFloat = 1.0
    @State var dotOffset1 = (x: -4.99, y: -220)
    @State var dotOffset2 = (x: -4.95, y: -220)
    @State var dotOffset3 = (x: -4.91, y: -220)
    
//    @State var dotTimer = 0.1
    
    let timerLoading = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    let timerLoading2 = Timer.publish(every: 0.28, on: .main, in: .common).autoconnect()
    let timerLoading3 = Timer.publish(every: 0.30, on: .main, in: .common).autoconnect()
    
    @State var speedCircle = 1.0
    
    @State private var hue: Color = .black
    var body: some View {
    
        
    ZStack {
            
            Text("Loading")
                .font(.subheadline)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .offset(x: -5, y: -220)

            
            Text("                 .")
                .font(.subheadline)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .offset(x: 4, y: -220)

            Text("                 .")
                .font(.subheadline)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .offset(x: 11, y: -220)
        }



    ZStack() {
            Circle()
                .foregroundColor(hue)
                .frame(width: 30, height: 30)
                .onReceive(timerColour) { input in
                    hue = Color(hue: Double.random(in: 0.01...1), saturation: 0.8, brightness: 0.8)
                    }
                .offset(y: shouldAnimate ? bottomOffset : topOffset)
                .animation(Animation.easeOut(duration: speedCircle).repeatForever())
                .onAppear {
                    self.shouldAnimate = true

                }
                .offset(x: CGFloat(shouldAnimate ? rightOffset : leftOffset))
                .animation(Animation.easeIn(duration: speedCircle).repeatForever())
                .onAppear() {
                    self.shouldAnimate = true
                }
//                onTapGesture {
//                    if speedCircle > 0.99 {
//                        speedCircle = 0.0
//                    } else if speedCircle < 0.1 {
//                        speedCircle = 1.0
//                    }
//                }

            Circle()
                .foregroundColor(hue)
                .frame(width: 30, height: 30)
                .onReceive(timerColour) { input in
                    hue = Color(hue: Double.random(in: 0.01...1), saturation: 0.8, brightness: 0.8)
                    }
                .offset(x: shouldAnimate ? bottomOffset : topOffset)
                .animation(Animation.easeOut(duration: speedCircle).repeatForever())
                .onAppear {
                    self.shouldAnimate = true

                }
                .offset(x: CGFloat(shouldAnimate ? leftOffset : rightOffset))
                .animation(Animation.easeIn(duration: speedCircle).repeatForever())
                .onAppear() {
                    self.shouldAnimate = true
                }

            Circle()
                .foregroundColor(hue)
                .frame(width: 30, height: 30)
                .onReceive(timerColour) { input in
                    hue = Color(hue: Double.random(in: 0.01...1), saturation: 0.8, brightness: 0.8)
                    }
                .offset(x: shouldAnimate ? topOffset : bottomOffset)
                .animation(Animation.easeOut(duration: speedCircle).repeatForever())
                .onAppear {
                    self.shouldAnimate = true

                }
                .offset(x: CGFloat(shouldAnimate ? rightOffset : leftOffset))
                .animation(Animation.easeIn(duration: speedCircle).repeatForever())
                .onAppear() {
                    self.shouldAnimate = true
                }
            

            Circle()
                .foregroundColor(hue)
                .frame(width: 30, height: 30)
                .onReceive(timerColour) { input in
                    hue = Color(hue: Double.random(in: 0.01...1), saturation: 0.8, brightness: 0.8)
                    }
                .offset(y: shouldAnimate ? topOffset : bottomOffset)
                .animation(Animation.easeOut(duration: speedCircle).repeatForever())
                .onAppear {
                    self.shouldAnimate = true

                }
                .offset(y: CGFloat(shouldAnimate ? rightOffset : leftOffset))
                .animation(Animation.easeIn(duration: speedCircle).repeatForever())
                .onAppear() {
                    self.shouldAnimate = true
                }
            
            Circle()
                .foregroundColor(hue)
                .frame(width: 30, height: 30)
                .onReceive(timerColour) { input in
                    hue = Color(hue: Double.random(in: 0.01...1), saturation: 0.8, brightness: 0.8)
                    }
                .offset(y: shouldAnimate ? bottomOffset : topOffset)
                .animation(Animation.easeOut(duration: speedCircle).repeatForever())
                .onAppear {
                    self.shouldAnimate = true

                }
                .offset(y: CGFloat(shouldAnimate ? leftOffset : rightOffset))
                .animation(Animation.easeIn(duration: speedCircle).repeatForever())
                .onAppear() {
                    self.shouldAnimate = true
                }
            
            Circle()
                .foregroundColor(hue)
                .frame(width: 30, height: 30)
                .onReceive(timerColour) { input in
                    hue = Color(hue: Double.random(in: 0.01...1), saturation: 0.8, brightness: 0.8)
                    }
                .offset(y: shouldAnimate ? bottomOffset : topOffset)
                .animation(Animation.easeOut(duration: speedCircle).repeatForever())
                .onAppear {
                    self.shouldAnimate = true

                }
                .offset(x: CGFloat(shouldAnimate ? leftOffset : rightOffset))
                .animation(Animation.easeIn(duration: speedCircle).repeatForever())
                .onAppear() {
                    self.shouldAnimate = true
                }
////
            Circle()
                .foregroundColor(hue)
                .frame(width: 30, height: 30)
                .onReceive(timerColour) { input in
                    hue = Color(hue: Double.random(in: 0.01...1), saturation: 0.8, brightness: 0.8)
                    }
                .offset(y: shouldAnimate ? topOffset : bottomOffset)
                .animation(Animation.easeOut(duration: speedCircle).repeatForever())
                .onAppear {
                    self.shouldAnimate = true

                }
                .offset(x: CGFloat(shouldAnimate ? leftOffset : rightOffset))
                .animation(Animation.easeIn(duration: speedCircle).repeatForever())
                .onAppear() {
                    self.shouldAnimate = true
                }

            Circle()
                .foregroundColor(hue)
                .frame(width: 30, height: 30)
                .onReceive(timerColour) { input in
                    hue = Color(hue: Double.random(in: 0.01...1), saturation: 0.8, brightness: 0.8)
                    }
                .offset(x: shouldAnimate ? topOffset : bottomOffset)
                .animation(Animation.easeOut(duration: speedCircle).repeatForever())
                .onAppear {
                    self.shouldAnimate = true

                }
                .offset(y: CGFloat(shouldAnimate ? rightOffset : leftOffset))
                .animation(Animation.easeIn(duration: speedCircle).repeatForever())
                .onAppear() {
                    self.shouldAnimate = true
                }


        }
      
 
        
//        HStack {
//
//            Text("W")
//                .colorMultiply(.blue)
//                .frame(width: 15, height: 20)
//                .offset(y: shouldAnimate ? topOffset : bottomOffset)
//                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
//                .onAppear {
//                    self.shouldAnimate = true
//
//                }
//
//
//            Text("O")
//                .colorMultiply(.green)
//                .frame(width: 15, height: 20)
//                .offset(y: shouldAnimate ? topOffset : bottomOffset)
//                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
//                .onAppear {
//                    self.shouldAnimate = true
//                }
//                .offset()
//
//            Text("W")
//                .colorMultiply(.red)
//                .frame(width: 15, height: 20)
//                .offset(y: shouldAnimate ? topOffset : bottomOffset)
//                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
//                .onAppear {
//                    self.shouldAnimate = true
//                }
//                .offset()
//        }
        
        }

}


struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
