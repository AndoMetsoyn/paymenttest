//
//  ViewController.swift
//  paymentSystemTest
//
//  Created by metso on 1/21/19.
//  Copyright © 2019 metso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var headerGradient:CAGradientLayer!
    @IBOutlet weak var headerView: UIView!{
        didSet {
            setHeaderStyle(headerView, firstColor: #colorLiteral(red: 0, green: 0.5176470588, blue: 0.7725490196, alpha: 1), secondColor: #colorLiteral(red: 0, green: 0.7490196078, blue: 0.6078431373, alpha: 1))
        }
    }
    @IBOutlet weak var payBtn: UIButton! {
        didSet {
            setServicesBtnSyle(payBtn, firstColor: #colorLiteral(red: 0, green: 0.5176470588, blue: 0.7725490196, alpha: 1), secondColor: #colorLiteral(red: 0, green: 0.7490196078, blue: 0.6078431373, alpha: 1),"Union 2")

        }
    }
    @IBOutlet weak var billBtn: UIButton! {
        didSet {
            setServicesBtnSyle(billBtn, firstColor: #colorLiteral(red: 0.4784313725, green: 0.7803921569, blue: 0.2509803922, alpha: 1), secondColor: #colorLiteral(red: 0.5607843137, green: 0.8588235294, blue: 0.3529411765, alpha: 1),"Path 3553")
        }
    }
    @IBOutlet weak var ratesBtn: UIButton! {
        didSet {
            setServicesBtnSyle(ratesBtn, firstColor: #colorLiteral(red: 0.9960784314, green: 0.6078431373, blue: 0, alpha: 1), secondColor: #colorLiteral(red: 0.9647058824, green: 0.7843137255, blue: 0, alpha: 1),"Path 3554")
        }
    }
    @IBOutlet weak var myBibtonBtn: UIButton! {
        didSet {
            setServicesBtnSyle(myBibtonBtn, firstColor: #colorLiteral(red: 0.9568627451, green: 0.2823529412, blue: 0.1294117647, alpha: 1), secondColor: #colorLiteral(red: 1, green: 0.3843137255, blue: 0.2352941176, alpha: 1),"Path 3554")
        }
    }
    @IBOutlet weak var viewBalance: UIView! {
        didSet {
            setBalanceShadow(viewBalance)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewDidLayoutSubviews() {
        headerGradient.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: headerView.bounds.size.height)
    }
    func setBalanceShadow(_ view:UIView){
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        view.layer.shadowOpacity = 0.5
        view.layer.shadowRadius = 5
        view.layer.cornerRadius = 5
        
    }
    
    func setHeaderStyle(_ viewd:UIView,firstColor:UIColor, secondColor:UIColor) {
        headerGradient = CAGradientLayer()
        headerGradient.frame = viewd.bounds
        headerGradient.colors = [firstColor.cgColor, secondColor.cgColor]
        headerGradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        headerGradient.endPoint = CGPoint (x: 1, y: 1)
        headerGradient.shadowColor = UIColor.black.cgColor
        headerGradient.shadowOffset = CGSize(width: 0.0, height: 3.0)
        headerGradient.shadowOpacity = 0.6
        headerGradient.shadowRadius = 4
        viewd.layer.insertSublayer(headerGradient, at: 0)
       
        
    }
    func setServicesBtnSyle(_ btn: UIButton,firstColor:UIColor, secondColor:UIColor,_ imgName:String) {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = btn.bounds
        gradient.colors = [firstColor.cgColor, secondColor.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint (x: 1, y: 1)
        gradient.cornerRadius = btn.frame.width / 2
        btn.imageView?.image = UIImage(named: imgName)
        btn.layer.insertSublayer(gradient, at: 0)
    }

}


