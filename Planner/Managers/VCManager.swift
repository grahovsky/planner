//
//  VCManager.swift
//  Planner
//
//  Created by Konstantin on 03/02/2019.
//  Copyright © 2019 Tim. All rights reserved.
//

import UIKit

// позволяет переключаться между контроллерами
class VCManager{
    
    // синглтон
    static let current = VCManager()
    
    private init(){}
    
    let defaultStoryboard = "Main" // где по-умолчанию искать нужный контроллер
    
    // инициализация контроллера из storyboard
    func loadVC(name:String) -> UIViewController{
        
        let storyboard = UIStoryboard(name: defaultStoryboard, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: name)
        
        return vc
        
    }
    
    
}
