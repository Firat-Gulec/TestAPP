//
//  EdgeInsets.swift
//  Welcome
//
//  Created by FiratGulec on 28.08.2024.
//

import SwiftUI

extension EdgeInsets {
    public static let paddingAll = EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
}

struct PagePadding {
    enum All: Double {
        case normal = 8
    }
    
    enum Horizontal: Double {
        case normal = 20
    }
}
