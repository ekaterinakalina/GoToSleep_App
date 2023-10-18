//
//  Components.swift
//  GoToSleep 1.0
//
//  Created by Ekaterina Kalina on 31.08.23.
//  Update: 17.10.23
//  Reusable UI color styles

import SwiftUI
import UIKit

extension UIColor
{
    //######################################### GRADIENTS #########################################
    //Primary gradient
    class func primaryGradient() -> LinearGradient
    {
        return LinearGradient(
            stops: [
                Gradient.Stop(color: Color(red: 0.44, green: 0.32, blue: 0.75).opacity(0.76), location: 0.03),
                Gradient.Stop(color: Color(red: 0.36, green: 0.25, blue: 0.64).opacity(0.78), location: 0.17),
                Gradient.Stop(color: Color(red: 0.25, green: 0.16, blue: 0.5).opacity(0.81), location: 0.32),
                Gradient.Stop(color: Color(red: 0.18, green: 0.1, blue: 0.42).opacity(0.83), location: 0.45),
                Gradient.Stop(color: Color(red: 0.12, green: 0.04, blue: 0.33).opacity(0.84), location: 0.57),
                Gradient.Stop(color: Color(red: 0.1, green: 0.05, blue: 0.19).opacity(0.95), location: 0.76),
                Gradient.Stop(color: Color(red: 0.07, green: 0.03, blue: 0.15), location: 0.97),
                ],
            startPoint: UnitPoint(x: 0.5, y: 0),
            endPoint: UnitPoint(x: 0.5, y: 1)
        )
    }//end primaryGradient
    
    //Button gradient
    class func buttonGradient() -> LinearGradient
    {
        return LinearGradient(
            stops: [
                Gradient.Stop(color: Color(red: 0.78, green: 0.28, blue: 0.96), location: 0.00),
                Gradient.Stop(color: Color(red: 0.43, green: 0.33, blue: 0.97), location: 1.00),
            ],
            startPoint: UnitPoint(x: 0.14, y: 0),
            endPoint: UnitPoint(x: 0.98, y: 0.99)
            )
    }//end buttonGradient
    
    //######################################### COLORS #########################################
    //Primary text + icon color
    class func textIconColor() -> Color
    {
        return Color(red: 1, green: 0.86, blue: 0.76)
    }
    
    //Button color
    class func buttonText() -> Color
    {
        return Color(red: 1, green: 1, blue: 1)
    }
    
    //Set of cards color
    class func cardsColor() -> Color
    {
        return Color(red: 0.79, green: 0.65, blue: 0.95)
    }
    
    //Set of cards color
    class func textCardsColor() -> Color
    {
        return Color(red: 0.07, green: 0.07, blue: 0.07)
    }
    
    //Darken layer
    class func darken() -> Color
    {
        return Color(red: 0, green: 0, blue: 0).opacity(0.4)
        //Color.black.opacity(0.2)
    }
    
}//end extension UIColor
