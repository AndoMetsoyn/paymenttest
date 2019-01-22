//
//  SummaryViewController.swift
//  paymentSystemTest
//
//  Created by metso on 1/22/19.
//  Copyright © 2019 metso. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {
    
    @IBOutlet weak var rangeDaysLabel: UILabel!
    @IBOutlet weak var overviewMoneyLabel: UILabel!
    @IBOutlet weak var moneyView: UIView!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var leftToSpendView: UIView!
    var shapeLayer = CAShapeLayer()
    var shapeLayerBackground =  CAShapeLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        //let money = moneyLabel.text as
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //shapeLayer.removeAllAnimations()
        //shapeLayer.animation(forKey: "animOne")?.isRemovedOnCompletion = true
        let basicAnim = CABasicAnimation(keyPath: "strokeStart")
        //basicAnim.isRemovedOnCompletion = true
        //basicAnim.fillMode = CAMediaTimingFillMode.removed
        basicAnim.toValue = 0.9
        basicAnim.duration = 1
        basicAnim.fillMode = CAMediaTimingFillMode.forwards
        basicAnim.isRemovedOnCompletion = false
        shapeLayer.add(basicAnim, forKey: "animOne")
    }
   
    override func viewDidLayoutSubviews() {
        configOfMoneyView()
        let center = CGPoint(x: leftToSpendView.bounds.width/2, y:leftToSpendView.bounds.height / 2 + 15)
        
        let circularPath = UIBezierPath(arcCenter: .zero, radius: leftToSpendView.frame.height * 0.4, startAngle: 1.25*CGFloat.pi, endAngle: -CGFloat.pi*0.75, clockwise: false)
        
        //let circularPathBackground = UIBezierPath(arcCenter: center, radius: leftToSpendView.frame.height * 0.4, startAngle: -CGFloat.pi*0.75, endAngle: 2*CGFloat.pi, clockwise: true)
        shapeLayerBackground.path = circularPath.cgPath
        shapeLayerBackground.strokeColor = #colorLiteral(red: 0.5921568627, green: 0.8980392157, blue: 0.8431372549, alpha: 1).cgColor
        shapeLayerBackground.lineWidth = 5
        shapeLayerBackground.fillColor = UIColor.clear.cgColor
        shapeLayerBackground.lineCap = CAShapeLayerLineCap.round
        shapeLayerBackground.position = center
        leftToSpendView.layer.addSublayer(shapeLayerBackground)

        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = #colorLiteral(red: 0, green: 0.7490196078, blue: 0.6078431373, alpha: 1).cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.strokeStart = 0
        shapeLayer.position = center
        //shapeLayer.strokeEnd =
        
        leftToSpendView.layer.addSublayer(shapeLayer)

    }
    func configOfMoneyView(){
        let charContOfMoney = moneyLabel.text?.count
        let moneyViewWidth = moneyView.frame.width
        moneyLabel.font = UIFont(name: moneyLabel.font.fontName, size: CGFloat(Float(moneyViewWidth)/Float(charContOfMoney!)))
    }
 
}
