//
//  AppInfoView.swift
//  Iltalehti
//
//  Created by Ankush Kushwaha on 7/4/18.
//  Copyright © 2018 Iltalehti. All rights reserved.
//

import UIKit

class AppInfoView: UIView {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet var containerView: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadXibForInterfaceBuilder()
    }



    func loadXibForInterfaceBuilder() { // Via IB, parent views frame (frame) is being set by xib
        // so no need to set constraint

        Bundle.main.loadNibNamed(String(describing: AppInfoView.self), owner: self, options: nil) // responsible to load xib and add outlets in memory

        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight, .flexibleWidth]

        infoLabel.text = "uwyter\n\niuqyw\nteri\n\n\n\nuyq\n\n\ntwe\n\nsadfsa"



    }

    @IBAction func privacyPolicyButtonAction(_ sender: Any) {

        print("privacyPolicyButtonAction")
    }

    @IBAction func termsButtonAction(_ sender: Any) {
        print("termsButtonAction")

    }
}
