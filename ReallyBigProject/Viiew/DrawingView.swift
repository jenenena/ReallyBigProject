//
//  DrawingView.swift
//  PaintPotProject
//
//  Created by Mills, Jenna on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
    {
        // Drawing code
        createStickFigure().stroke()
        drawTurtle()
        myDrawing()
    }
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.magenta.setStroke()
        figure.lineWidth = 3.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y:200),
                                    radius: CGFloat(20),
                                      startAngle: CGFloat(0),
                                      endAngle: CGFloat(2) * CGFloat.pi,
                                      clockwise: true)
        
            figure.move(to: CGPoint(x: 200, y: 220))
            figure.addLine(to: CGPoint(x:200, y: 270))
            figure.move(to: CGPoint(x: 180, y: 240))
            figure.addLine(to: CGPoint(x: 220, y: 240))
            figure.move(to: CGPoint(x:200, y: 270))
            figure.addLine(to: CGPoint(x: 180, y:300))
            figure.move(to: CGPoint(x: 200,  y: 270))
            figure.addLine(to: CGPoint(x: 220, y: 300))
            
        return figure
    }
    
    public func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    public func myDrawing()
    {
        let coolio = UIBezierPath()
        UIColor.magenta.setStroke()
        coolio.lineWidth = 3.0
        coolio.move(to: CGPoint(x: 50, y: 400))
        coolio.addLine(to: CGPoint(x: 30, y: 390))
        coolio.addLine(to: CGPoint(x: 10, y: 390))
        coolio.addLine(to: CGPoint(x: -10, y: 400))
        coolio.move(to: CGPoint(x: 30, y: 420))
        coolio.addLine(to: CGPoint(x: 30, y: 439))
        coolio.stroke()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

