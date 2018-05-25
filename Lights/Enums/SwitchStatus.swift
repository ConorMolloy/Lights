//
//  SwitchStatus.swift
//  Lights
//
//  Created by Conor Molloy on 25/05/2018.
//  Copyright © 2018 Conor Molloy. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on
    case off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
