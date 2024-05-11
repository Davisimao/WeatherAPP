//
//  ViewController.swift
//  WeatherAPP
//
//  Created by Davi Simao on 10/05/24.
//

import UIKit


class ViewController: UIViewController {
    
    private lazy var CustomView : UIView={
        let view = UIView(frame: .zero)
        view.backgroundColor = .black
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
        view.addSubview(CustomView)
    }
    
    
    private func setContraints(){
        NSLayoutConstraint.activate([
            CustomView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 100),
            
            CustomView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant:50),
            
            CustomView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -50),
            
            CustomView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant:-100),
            
        ])
    }


}

