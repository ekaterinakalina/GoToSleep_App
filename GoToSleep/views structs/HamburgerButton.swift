//
//  HomeView.swift
//  GoToSleep 1.0
//
//  Created by Ekaterina Kalina on 05.09.23.
//  Update: 17.10.23
//  Struct: Hamburger button with toggle function

import SwiftUI

struct HamburgerButton: View {
    //VARS
    @Binding var showSideBar: Bool
    
    //Toggle button
    var body: some View {
    
            Button {
                withAnimation {showSideBar.toggle()}
            } label: {
                Image("hamburger")
                    .resizable()
                    .frame(width: 40, height: 40)
                    //move to the left corner
                    .padding([.trailing], 320)
            }//end button
    }//end body
} //end View

struct HamburgerButton_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

