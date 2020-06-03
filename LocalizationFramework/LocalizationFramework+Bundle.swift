//
//  LocalizationFramework+Bundle.swift
//  LocalizationFramework
//
//  Created by Yahya Saddiq on 6/3/20.
//  Copyright © 2020 Yahya Saddiq. All rights reserved.
//

extension Bundle {
    static var localizationFramework: Bundle {
        return Bundle(identifier: "org.cocoapods.LocalizationFramework") ?? .main
    }
}
