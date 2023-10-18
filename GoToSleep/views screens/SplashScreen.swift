//
//  SplashScreen.swift
//  GoToSleep 1.0
//
//  Created by Ekaterina Kalina on 31.08.23.
//  Update: 17.10.23
//  Splash screen with animation

import SwiftUI

struct SplashScreen: View {
    
    //VARS
    //for splash screen
    @State private var isActive = false
    //for animation
    @State private var viewAppeared: Bool = false
    
    //VIEW
    var body: some View {
        //Go to the main view if loaded
        if isActive {
            MainView()
        } else {
            ZStack {
                VStack(alignment: .center, spacing: 0) {
                    Text("Go to sleep")
                        .font(UIFont.titleFont())
                        .foregroundColor(UIColor.textIconColor())
                        .padding([.bottom], 120)
                
                    VStack {
                        Image("moon")
                        .opacity(viewAppeared ? 1 : 0)
                        .frame(width: 254, height: 154)
                        .padding([.top, .leading], 70)
                    }.onAppear() {
                        viewAppeared = true
                    }
                }
                .padding(0)
                .frame(width: 393, height: 852, alignment: .center)

            }//end ZStack
            .frame(width: 393, height: 800)
            .background(UIColor.darken())
            .background(UIColor.primaryGradient())
            .animation(.easeInOut.delay(0.8), value: viewAppeared)
            //animation delay
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation(.linear(duration: 1)) {
                        self.isActive = true
                    }
                }
            }
        }//end if-else
    }//end body
}//end View
    

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
        }
    }

