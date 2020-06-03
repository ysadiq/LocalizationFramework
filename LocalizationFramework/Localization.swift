//
//  Localization.swift
//  LocalizationFramework
//
//  Created by Yahya Saddiq on 6/3/20.
//  Copyright © 2020 Yahya Saddiq. All rights reserved.
//

extension String {
    func localized(withComment comment: String = "") -> String {
        return Bundle.localizationFramework.localizedString(forKey: self,
                                                            value: "**\(self)**",
                                                            table: nil)
    }
}

public enum Localization {
    public static let title = "title".localized()
    public static let description = "description".localized()
}
