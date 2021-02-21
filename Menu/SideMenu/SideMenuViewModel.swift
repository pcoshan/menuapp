//
//  SideMenuViewModel.swift
//  SideMenu
//
//  Created by Patrick Coshan on 12/2/21.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable{
    case food
    case drinks
    case merch
    case contact_us
    case book_now
    
    var title: String{
        switch self{
            case .food: return "Facebook"
            case .drinks: return "Instagram"
            case .merch: return "Twitter"
            case .contact_us: return "Contact Us"
            case  .book_now: return "Book Now"
        }
    }
    
    var imageName: String{
        switch self{
            case .food: return "eyes.inverse"
            case .drinks: return "drop"
            case .merch: return "person"
            case .contact_us: return "bubble.right"
            case .book_now: return "phone.circle"
        }
    }
}
