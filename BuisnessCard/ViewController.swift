//
//  ViewController.swift
//  BuisnessCard
//
//  Created by Joel Joseph on 10/19/22.
//

import UIKit


class ViewController: UIViewController {
    var label = UILabel()
    var label2 = UILabel()
    var lb = UILabel()
    var lb2 = UILabel()
    let button = UIButton.init(type: .system)
    let button2 = UIButton.init(type: .system)
    let screenWidth  = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    let image = UIImage(named: "Pic.png")
    var imageView : UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemTeal
        imageView = UIImageView(frame: CGRect(x: screenWidth/2 - (150/2), y: 100, width: 150, height: 150))
        imageView.contentMode = .scaleAspectFill
        imageView.image = image
        view.addSubview(imageView)
        super .viewWillAppear(true)
        self.imageView.layer.cornerRadius = self.imageView.frame.size.width / 2
        self.imageView.clipsToBounds = true
        self.imageView.layer.borderColor = UIColor.black.cgColor
        self.imageView.layer.borderWidth = 5
        label = UILabel(frame: CGRect(x: screenWidth/2 - (300/2), y: 130, width: 300, height: 300))
        self.label.textAlignment = .center
        self.label.text = "Joel Joseph"
        label.font = UIFont(name:"Times New Roman",size:40)
        view.addSubview(label)
        label2 = UILabel(frame: CGRect(x: screenWidth/2 - (300/2), y: 180, width: 300, height: 300))
        self.label2.textAlignment = .center
        self.label2.text = "Student"
        label2.font = UIFont(name:"Times New Roman",size:30)
        view.addSubview(label2)
        //for show button
        button.frame = CGRect(x: screenWidth/2 - (200/2), y: 370, width: 200, height: 52)
        button.setTitle("Show Info", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.borderWidth = 5.0
        button.layer.borderColor = UIColor.white.cgColor
        button.backgroundColor = UIColor.black
        button.titleLabel?.textColor = UIColor.white
        button.tintColor = UIColor.white
        button.layer.cornerRadius = 15.0
        button.addTarget(self, action: #selector(buttonClicked(_ :)), for: .touchUpInside)
        self.view.addSubview(button)
    }
    @objc func buttonClicked(_ : UIButton) {
        //for hide button
        button2.frame = CGRect(x: screenWidth/2 - (205/2), y: 370, width: 200, height: 52)
        button2.setTitle("Hide Info", for: .normal)
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button2.layer.borderWidth = 5.0
        button2.layer.borderColor = UIColor.white.cgColor
        button2.backgroundColor = UIColor.black
        button2.titleLabel?.textColor = UIColor.white
        button2.tintColor = UIColor.white
        button2.layer.cornerRadius = 15.0
        button2.addTarget(self, action: #selector(buttonCA(_ :)), for: .touchUpInside)
        self.view.addSubview(button2)
        //label for number
        lb = UILabel(frame: CGRect(x: screenWidth/2 - (screenWidth/2), y:  500, width: screenWidth, height: 50))
        self.lb.textAlignment = .center
        self.lb.text = "Phone Number: 248-434-550"
        lb.font = UIFont(name:"Times New Roman",size:20)
        lb.backgroundColor = .white
        lb.layer.cornerRadius = 30
        lb.clipsToBounds = true
        view.addSubview(lb)
        //label for email
        lb2 = UILabel(frame: CGRect(x:  screenWidth/2 - (screenWidth/2), y: 580, width: screenWidth, height: 50))
        self.lb2.textAlignment = .center
        self.lb2.text = "Email: randomemailtotally@gmail.com"
        lb2.font = UIFont(name:"Times New Roman",size:20)
        lb2.backgroundColor = .white
        lb2.layer.cornerRadius = 30
        lb2.clipsToBounds = true
        view.addSubview(lb2)
        //removes show button from view when its clicked so hide button can come in
        button.removeFromSuperview()
    }
    @objc func buttonCA(_ : UIButton) {
        //hides button for Hide Info and shows button for Show Info
        button2.removeFromSuperview()
        lb.removeFromSuperview()
        lb2.removeFromSuperview()
        self.view.addSubview(button)
    }
}
