//
//  HollowView.swift
//
//
//  Created by 鶴本賢太朗 on 2019/03/29.
//  Copyright © 2019 Kentarou. All rights reserved.
//

import UIKit

/**
 *  自分に対するタップイベントを無視するカスタムView
 */
class HollowView: UIView {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        guard let tapView: UIView = super.hitTest(point, with: event) else {
            return nil
        }
        // 自分へのタップは無視する
        if tapView == self {
            return nil
        }
        // subviewならOK
        else {
            return tapView
        }
    }
}
