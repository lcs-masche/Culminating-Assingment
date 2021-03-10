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
    
    @State private var progressMeterOffset = CGSize.zero
    
    let timerLoading = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    let timerLoading2 = Timer.publish(every: 0.28, on: .main, in: .common).autoconnect()
    let timerLoading3 = Timer.publish(every: 0.30, on: .main, in: .common).autoconnect()
    
    @State var speedCircle = 1.0
    
    @State private var hue: Color = .black
    var body: some View {
    
        Text("Just wait a second please ...")
            .font(.subheadline)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .offset(x: -5, y: -220)


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
        
    
//        VStack {
//            ZStack {
//                // "Fill" for progress meter; stationary
//                Rectangle()
//                    .frame(width: 100, height: 548 - 44, alignment: .center)
//
//                // Will slide up
//                Rectangle()
//                    .fill(Color.primary)
//                    .colorInvert()
//                    .frame(width: 100, height: 548 - 44, alignment: .center)
//                    .offset(progressMeterOffset)
//                    .onAppear(perform: {
//                        withAnimation(Animation.easeIn(duration: 4.0)) {
//                            // Offset is moves the opaque rectangle up
//                            progressMeterOffset = CGSize(width: 0, height: -1 * (548 - 44))
//                        }
//                    })
//
//                // Sits above the rectangle that slides up (in the z-axis)
//                // This means the rectangle sliding up will pass beneath this view
//                Rectangle()
//                    .fill(Color(hue: 0, saturation: 0, brightness: 0, opacity: 0))
//                    .frame(width: 100 + 2, height: 548 - 44 + 2, alignment: .center)
//                    .overlay(
//                        Rectangle()
//                            .stroke(Color.primary, lineWidth: 2)
//                    )
//
//            }
//
//        }
        
        }

}


struct LoadingScreen_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
