//
//  ListView.swift
//  GoToSleep 1.0
//
//  Created by Ekaterina Kalina on 02.09.23.
//  Update: 17.10.23
//  Struct: list of cards with sleep cycles

import SwiftUI

struct ListView: View {
    //VARS
    var cardData: [Cycle]
    
    var body: some View {
        //List gets the data struct
        List(cardData) { item in
            
            //Card UI
            ZStack {
                //alarm clock + cycle time
                HStack(alignment: .center, spacing: 60) {
                    
                    HStack(alignment: .center, spacing: 0)  {
                        Label {
                            Text(item.cycleTime)
                                .font(UIFont.cardsWakeUpTime())
                                .foregroundColor(UIColor.textCardsColor())
                                //prevents text from collapsing during preview
                                .fixedSize(horizontal: true, vertical: true)
                        } icon: {
                            Image(systemName: "alarm")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .trailing)
                                .foregroundColor(UIColor.textCardsColor())
                        }
                    }
                    .padding(.leading, 22)
                    
                    //cycle number + sleep time
                    VStack(alignment: .center, spacing: 10)  {
                        Text(item.cycleName)
                            .font(UIFont.cardsCycleNameTime())
                            .foregroundColor(UIColor.textCardsColor())
                            //prevents text from collapsing during preview
                            .fixedSize(horizontal: true, vertical: true)
                        
                        Text(item.sleepTime)
                            .font(UIFont.cardsCycleNameTime())
                            .foregroundColor(UIColor.textCardsColor())
                            .fixedSize(horizontal: true, vertical: true)
                    }
                    .padding(.trailing, 22)
                    
                }//end HStack
                .padding(.horizontal, 0)
                .padding(.vertical, 16)
                .frame(width: 315, height: 90, alignment: .top)
                
            }//end ZStack
            //some list styling
            .listRowSeparator(.hidden)
            .listRowBackground(Color.clear)
            .padding(.horizontal, 23)
            .padding(.vertical, 15)
            .frame(width: 360, height: 120, alignment: .center)
            .background(UIColor.cardsColor())
            .cornerRadius(8)
        }
        //removes list padding
        .listStyle(PlainListStyle())
    }
}

