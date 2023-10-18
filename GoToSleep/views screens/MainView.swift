//
//  MainView.swift
//  GoToSleep 1.0
//
//  Created by Ekaterina Kalina on 31.08.23.
//  Update: 17.10.23
//  Home screen with cycles times if user goes to sleep now


import SwiftUI

struct MainView: View {
    
    //VARS
    //access to DataController
    @ObservedObject var dc: DataController = DataController()
    @State private var showSideBar: Bool = false
    //offset for both drag gestures and showing sidebar
    @State var offset: CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
    
    var body: some View {
        //sliding sidebar
        let sideBarWidth = getRect().width - 90
        
        NavigationView {
            
                HStack (spacing: 0) {
                    //binding the sidebar
                    SideBarView(showSideBar: $showSideBar)
                    
                    VStack (spacing: 0) {
                        
                        //Hamburger menu
                        HamburgerButton(showSideBar: $showSideBar)
                        Spacer()
                        
                        //Title
                        Text("Go to sleep now.\nWake up at: ")
                            .font(UIFont.primaryFont())
                            .foregroundColor(UIColor.textIconColor())
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 18)
                        Spacer()
                        
                        //List view struct with data
                        ListView(cardData: dc.allCycles)
        
                        //Set button
                        SetButton().padding(.top, 20)
                                   .padding(.bottom, 31)
            
                    }//end VStack
                    .frame(width: getRect().width)
                    //hide sidebar when tapping on the main screen, out of the sidebar
                    .overlay (
                        Rectangle()
                            .fill(
                                UIColor.primaryGradient().opacity(Double( (offset / sideBarWidth) / 2) )
                            )
                            .ignoresSafeArea(.container, edges: .vertical)
                            .onTapGesture {
                                withAnimation{
                                    showSideBar.toggle()
                                }
                            }
                    )//end overlay
                    
                }//end HStack
                .frame(width: getRect().width + sideBarWidth) //max size
                .offset(x: -sideBarWidth / 2)
                .offset(x: offset)
                .background(UIColor.darken())
                .background(UIColor.primaryGradient())
            
        }//end NavigationView
        .navigationBarBackButtonHidden() //hide default "Back" button
        .animation(.easeOut, value: offset == 0)
        //sidebar appears/hides
        .onChange(of: showSideBar) { newValue in
            if showSideBar && offset == 0 {
                offset = sideBarWidth
                lastStoredOffset = offset
            }
            if !showSideBar && offset == sideBarWidth {
                offset = 0
                lastStoredOffset = 0
            }
        }
    }//end body
}//end View

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

