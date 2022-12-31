//
//  MotionAnimationView.swift
//  Africa
//
//  Created by FE-Minh Thong on 31/12/2022.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
    //1. RANDOM CODINATE
    func randomConinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    //2. RANDOM SIZE
    func randomSzie() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    //3. RANDOM SCALE
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    //4. RANDOM SPEED
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    //5. RANDOM DELAY
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id:\.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSzie(), height: randomSzie(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale(): 1)
                        .position(
                            x: randomConinate(max: geometry.size.width) ,
                            y: randomConinate(max: geometry.size.height)
                        )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        ,value: isAnimating)
                            
                        
                    
                    
                }
 
            }.drawingGroup()
        }.onAppear {
            withAnimation(.linear(duration: 1)){
                isAnimating = true
            }
        }
        
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
