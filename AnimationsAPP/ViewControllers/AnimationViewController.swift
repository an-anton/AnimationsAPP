//
//  AnimationViewController.swift
//  AnimationsAPP
//
//  Created by Anton Anan'eV on 24.11.2021.
//

import Spring

class AnimationViewController: UIViewController {
     
     // MARK: - @IBOutlets
    @IBOutlet var animationView: SpringView!
    @IBOutlet var nameAnimationLabel: SpringLabel!
    @IBOutlet var curveLabel: SpringLabel!
    @IBOutlet var durationLabel: SpringLabel!
    @IBOutlet var forceLabel: SpringLabel!
    
    @IBOutlet var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonOutlet.setTitle("Начать", for: .normal)
        nameAnimationLabel.alpha = 0
        curveLabel.alpha = 0
        durationLabel.alpha = 0
        forceLabel.alpha = 0
    }
     // MARK: - Actions
    @IBAction func buttonShowAnimatioin(_ sender: UIButton) {
        let animationObject = Animation.getAnimation()
        
        buttonOutlet.setTitle("Cледующая анимация: \(animationObject.nameAnimation)", for: .normal)
        
        animationView.animation = animationObject.nameAnimation
        nameAnimationLabel.text = "Название: \(animationView.animation)"
        nameAnimationLabel.alpha = 1
        
        animationView.duration = CGFloat(animationObject.duration)
        durationLabel.text = "Продолжительность: \(String(format: "%.3f", animationView.duration))"
        durationLabel.alpha = 1
        
        animationView.curve = animationObject.curve
        curveLabel.text = "Кривая: \(animationView.curve)"
        curveLabel.alpha = 1
        
        animationView.force = CGFloat(animationObject.force)
        forceLabel.text = "Сила: \(String(format: "%.3f", animationView.force))"
        forceLabel.alpha = 1
        animationView.animate()
        
        nameAnimationLabel.animation = "slideUp"
        nameAnimationLabel.duration = 1
        nameAnimationLabel.curve = "easeln"
        nameAnimationLabel.force = 0.9
        nameAnimationLabel.animate()
        
        curveLabel.animation = "slideUp"
        curveLabel.duration = 1
        curveLabel.curve = "easeln"
        curveLabel.force = 0.9
        curveLabel.animate()
        
        forceLabel.animation = "slideUp"
        forceLabel.duration = 1
        forceLabel.curve = "easeln"
        forceLabel.force = 0.9
        forceLabel.animate()
        
        durationLabel.animation = "slideUp"
        durationLabel.duration = 1
        durationLabel.curve = "easeln"
        durationLabel.force = 0.9
        durationLabel.animate()
    }
}
