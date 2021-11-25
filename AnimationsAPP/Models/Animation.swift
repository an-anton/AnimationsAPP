//
//  Animation.swift
//  AnimationsAPP
//
//  Created by Anton Anan'eV on 24.11.2021.
//


struct Animation {
    
    let nameAnimation: String
    let duration: Float
    let curve: String
    let force: Float
    let damping: Float
    let rotate: Float
    
    
    static func getAnimation() -> Animation {
        Animation(nameAnimation: DataManager.shared.namesAnimations.randomElement() ?? "",
                  duration: Float.random(in: 0.5...1),
                  curve: DataManager.shared.namesCurve.randomElement() ?? "",
                  force: Float.random(in: 0.5 ..< 1),
                  damping: Float.random(in: 0 ..< 1),
                  rotate: Float.random(in: 0 ..< 10))
    }
}
    
    
    
    
