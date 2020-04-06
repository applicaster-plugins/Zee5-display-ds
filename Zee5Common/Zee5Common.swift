//
//  Zee5Common.swift
//  Zee5Common
//
//  Created by Miri.
//  Copyright © 2018 Applicaster. All rights reserved.
//

import Foundation
import ApplicasterSDK

public class Zee5Common {

    public static func createScreen(for atomFeed: APAtomFeed?, config: [String: Any]?, style: [String: Any]?) -> UIViewController {
           let bundle = Bundle.init(for: type(of: self as AnyClass))
            let result = SectionCompositeViewController(nibName: "SectionCompositeViewController", bundle: bundle)
            result.modalPresentationStyle = .fullScreen
            result.setComponentModel((Zee5Common.getBaseComponent(for: atomFeed))!)
            result.atomFeedUrl = atomFeed?.link
            result.screenConfiguration = ScreenConfiguration.init(config: config, style: style, dataSource: atomFeed)
            return result
        }

        public static func getBaseComponent(for atomFeed: APAtomFeed?) -> ComponentModelProtocol? {
            if let feed = atomFeed {
                let model = ComponentModel.init(entry: feed, threshold: 3)
                model.isVertical = true
               model.dsUrl = atomFeed?.link

                return model
            }
            return nil
        }
}
