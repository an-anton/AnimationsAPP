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
        presentAnimationView(for: animationView, model: animationObject)
        
        nameAnimationLabel.text = "Название: \(animationView.animation)"
        durationLabel.text = "Продолжительность: \(String(format: "%.3f", animationView.duration))"
        curveLabel.text = "Кривая: \(animationView.curve)"
        forceLabel.text = """
    Сила: \(String(format: "%.3f", animationView.force))
    Поворот: \(String(format: "%.3f", animationView.rotate))
    """
        

                        


        animationLabels(for: nameAnimationLabel, curveLabel, forceLabel, durationLabel)
    }
    private func animationLabels(for labels: SpringLabel...) {
        
        for label in labels {
            label.animation = "slideUp"
            label.duration = 1
            label.curve = "easeln"
            label.force = 0.9
            label.alpha = 1
            label.animate()
        }
        
    }
    
    private func presentAnimationView(for view: SpringView, model: Animation) {
        view.animation = model.nameAnimation
        view.duration = CGFloat(model.duration)
        view.curve = model.curve
        view.force = CGFloat(model.force)
        view.rotate = CGFloat(model.rotate)
        view.animate()
    }
}
