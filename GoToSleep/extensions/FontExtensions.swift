//
//  FontExtensions.swift
//  GoToSleep 1.0
//
//  Created by Ekaterina Kalina on 16.10.23.
//  Update: 17.10.23
//

import SwiftUI
import UIKit

extension UIFont
{
    //##################################### Base Fonts #####################################
    //primary font: 28px
    class func primaryFont() -> Font
    {
        return Font.custom("Alata", size: 28)
    }
    
    //title font: 60px
    class func titleFont() -> Font
    {
        return Font.custom("Alata", size: 60)
    }
    
    //##################################### Cards Font #####################################
    //cards cycle name + sleep time: 20px
    class func cardsCycleNameTime() -> Font
    {
        return Font.custom("Alata", size: 20)
    }
    
    //cards cycle time: 50px
    class func cardsWakeUpTime() -> Font
    {
        return Font.custom("Alata", size: 50)
    }
    
} //end extension UIFont

