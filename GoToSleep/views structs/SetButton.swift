//
//  SetButton.swift
//  GoToSleep 1.0
//
//  Created by Ekaterina Kalina on 15.10.23.
//  Update: 17.10.23
//  Struct: Set button 

import SwiftUI

struct SetButton: View {
    //VARS
    @State private var showingAlert = false
    
    var body: some View {
        
        Button("set your time") {
            showingAlert = true
        }
        //alert text
        .alert("\n🌑🌒🌓🌔🌕🌖🌗🌘\nThanks for having a look at my very first iOS project: \nthe sleep cycle app \nGo to sleep. \nMy plans are: \n- UI upgrade; \n- UX case; \n- further developing! \nEkaterina Kalina, 2023", isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        }
        //button styling
        .padding(.horizontal, 20)
        .padding(.vertical, 14)
        .frame(width: 247, alignment: .center)
        .foregroundColor(UIColor.buttonText())
        .font(UIFont.primaryFont())
        .multilineTextAlignment(.center)
        .background(UIColor.buttonGradient())
        .cornerRadius(12)
    }//end body
}//end View

struct SetButton_Previews: PreviewProvider {
    static var previews: some View {
        SetButton()
    }
}


