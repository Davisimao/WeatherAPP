//
//  ViewController.swift
//  WeatherAPP
//
//  Created by Davi Simao on 10/05/24.
//

import UIKit


class ViewController: UIViewController {
    
    private lazy var backgroundView : UIImageView={
        let Imageview = UIImageView(frame: .zero)
        Imageview.image = UIImage(named:"Background")
        Imageview.contentMode = .scaleAspectFill
        Imageview.translatesAutoresizingMaskIntoConstraints = false
        return Imageview
    }()
    
    
    private lazy var headerView: UIView={
        let view = UIView(frame: .zero)
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupView()
        
    }
    
    private func setupView(){
        view.backgroundColor = .red
               
        setHyerachy()
    
        setContraints()
    }
    
    private func setHyerachy(){
        view.addSubview(headerView)
        view.addSubview(backgroundView)
        
        
    }
    
    
    private func setContraints(){
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
    }


}

