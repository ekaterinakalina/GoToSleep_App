//
//  SideBarView.swift
//  GoToSleep 1.0
//
//  Created by Ekaterina Kalina on 04.09.23.
//  Update: 17.10.23
//  Struct: Sliding sidebar 

import SwiftUI
 
struct SideBarView: View {
    //VARS
    @Binding var showSideBar: Bool
    @State private var showingAlert = false
    
    var body: some View {
        
        //1VSTack align all elements with min spacing
        VStack (alignment: .leading, spacing: 0) {
            //2VSTack add some spacing
            VStack (alignment: .leading, spacing: 20) {
                //sidebar rows
                HStack(alignment: .top, spacing: 10) {
                    Image(systemName: "clock.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(UIColor.textIconColor())
                    
                    
                    NavigationLink(destination: MainView()) {
                        Text("Now")
                            .font(UIFont.primaryFont())
                            .foregroundColor(UIColor.textIconColor())
                    }
                }
                .padding(.horizontal, 20)
                .padding()
                
                HStack(alignment: .top, spacing: 10) {
                    Image(systemName: "alarm.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(UIColor.textIconColor()).opacity(0.5) //inactive
                    
                    Text("Set your time")
                        .font(UIFont.primaryFont())
                        .foregroundColor(UIColor.textIconColor()).opacity(0.5) //inactive
                }
                .padding(.horizontal, 20)
                .padding()
              
                HStack(alignment: .top, spacing: 10) {
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(UIColor.textIconColor()).opacity(0.5) //inactive
                    
                    Text("Settings")
                        .font(UIFont.primaryFont())
                        .foregroundColor(UIColor.textIconColor()).opacity(0.5) //inactive
                }
                .padding(.horizontal, 20)
                .padding()
                
                HStack(alignment: .top, spacing: 10) {
                    Image("feedback")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(UIColor.textIconColor()).opacity(0.5) //inactive
                    
                    Text("Feedback")
                        .font(UIFont.primaryFont())
                        .foregroundColor(Color(red: 1, green: 0.86, blue: 0.76).opacity(0.5)) //inactive
                }
                .padding(.horizontal, 20)
                .padding()
            
                HStack(alignment: .top, spacing: 10) {
                    Image("coins")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(UIColor.textIconColor())
                    
                    Button("Info") {
                        showingAlert = true
                    }
                    //alert text
                    .alert("\n🌑🌒🌓🌔🌕🌖🌗🌘\nThanks for having a look at my very first iOS project: \nthe sleep cycle app \nGo to sleep. \nMy plans are: \n- UI upgrade; \n- UX case; \n- further developing! \nEkaterina Kalina, 2023", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { }
                    }
                    .font(UIFont.primaryFont())
                    .foregroundColor(Color(red: 1, green: 0.86, blue: 0.76))
                }
                .padding(.horizontal, 20)
                .padding()
                
            }//end VStack2
            .padding(.leading)
            //pushes the VStack to the top
            Spacer()
            
        }//end VStack1
        //sidebar width calculation
        .frame(width: getRect().width - 90)
        .frame(maxHeight: .infinity)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(UIColor.darken())
        .background(UIColor.primaryGradient().ignoresSafeArea(.container, edges: .vertical))
    }//end body
}//end View
 
//extending view to get screen rect
extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
     }
 }
