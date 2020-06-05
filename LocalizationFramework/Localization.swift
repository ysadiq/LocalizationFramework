//
//  Localization.swift
//  LocalizationFramework
//
//  Created by Yahya Saddiq on 6/3/20.
//  Copyright © 2020 Yahya Saddiq. All rights reserved.
//

extension String {
    func localized(withComment comment: String = "") -> String {
        let notFound = "**\(self)**"
        var result = notFound

        result = Bundle.main.localizedString(forKey: self,
                                             value: notFound,
                                             table: nil)

        if result == notFound {
            result = Bundle.localizationFramework.localizedString(forKey: self,
                                                                  value: notFound,
                                                                  table: nil)
        }

        return result
    }
}

public enum Localization {
    public static let title = "title".localized()
    public static let description = "description".localized()
}
