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
    
    static func getAnimation() -> Animation {
        let namesAnimations = ["shake",
                               "pop",
                               "morph",
                               "squeeze",
                               "wobble",
                               "swing",
                               "squeezeLeft",
                               "squeezeRight",
                               "squeezeDown",
                               "squeezeUp",
                               "slideLeft",
                               "slideRight",
                               "slideDown",
                               "slideUp",
                               "fadeIn",
                               "fadeOut",
                               "fadeInLeft",
                               "fadeInRight",
                               "fadeInDown",
                               "fadeInUp",
                               "zoomIn",
                               "zoomOut",
                               "flash"]
        let randomNameAnim = namesAnimations.randomElement() ?? ""
        
        let namesCurve = ["spring",
                          "linear",
                          "easeIn",
                          "easeOut",
                          "easeInOut"]
        let randomNameCurve = namesCurve.randomElement() ?? ""
      
        return Animation(nameAnimation: randomNameAnim,
                         duration: Float.random(in: 0.5...1),
                         curve: randomNameCurve,
                         force: Float.random(in: 0.5 ..< 1),
                         damping: Float.random(in: 0 ..< 1))
    }
}
    
    
    
    
