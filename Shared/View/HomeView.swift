//
//  HomeView.swift
//  MinimalAnimation (iOS)
//
//  Created by 최형우 on 2022/06/06.
//

import SwiftUI

struct HomeView: View {
    // MARK: - Animation Properties
    @State var animationState: [Bool] = Array(repeating: false, count: 3)
    
    @Namespace var animation
    var body: some View {
        ZStack {
            if !animationState[0] {
                RoundedRectangle(cornerRadius: animationState[0] ? 30 : 0, style: .continuous)
                    .fill(Color("Purple"))
                    .matchedGeometryEffect(id: "DATEVIEW", in: animation)
                    .ignoresSafeArea()
            }
            
            if animationState[0] {
                VStack(spacing: 0) {
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(Color("Purple"))
                        .matchedGeometryEffect(id: "DATEVIEW", in: animation)
                        .frame(height: 290)
                }
                .padding([.horizontal, .top])
            }
        }
        .onAppear(perform: startAnimation)
    }
    
    func startAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            withAnimation(.interactiveSpring(response: 0.8, dampingFraction: 0.7, blendDuration: 0.7)) {
                animationState[0] = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                animationState[1] = true
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
