//
//  CAEmitterCell.swift
//  LearnJPL
//
//  Created by dsun on 9/9/2020.
//  Copyright © 2020 dsun. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    //
    func addEmitter(imagename: String){
    //
    let instanceEmitterCell = CAEmitterCell()
    instanceEmitterCell.contents = UIImage(named: imagename)?.cgImage
    instanceEmitterCell.scale = 0.1
    instanceEmitterCell.scaleRange = 0.1
    instanceEmitterCell.emissionRange = .pi
    instanceEmitterCell.lifetime = 10
    instanceEmitterCell.birthRate = 2
    instanceEmitterCell.velocity = -10
    instanceEmitterCell.velocityRange = -10
    instanceEmitterCell.yAcceleration = 5
    instanceEmitterCell.xAcceleration = 2
    instanceEmitterCell.spin = -0.5
    instanceEmitterCell.spinRange = 1.0
    //
    let imageLayer = CAEmitterLayer()
    imageLayer.emitterPosition = CGPoint(x: self.bounds.width / 2.0, y: -40)
    imageLayer.emitterSize = CGSize(width: self.bounds.width, height: 0)
    imageLayer.emitterShape = CAEmitterLayerEmitterShape.line
    imageLayer.beginTime = CACurrentMediaTime()
    imageLayer.timeOffset = 5
    imageLayer.emitterCells = [instanceEmitterCell]
    //
    self.layer.addSublayer(imageLayer)
    }
    
    
    
}

