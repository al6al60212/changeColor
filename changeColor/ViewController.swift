//
//  ViewController.swift
//  changeColor
//
//  Created by 董禾翊 on 2022/8/30.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var gradientRedSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var gradientBlueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var gradientGreenSlider: UISlider!
    @IBOutlet weak var presetBtn: UIButton!
    @IBOutlet weak var singleColorRandom: UIButton!
    @IBOutlet weak var gradientColorRandom: UIButton!
    @IBOutlet weak var gradientColorRandom2: UIButton!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addShapeLayer()
        presetColor()
        gradientRedSlider.isEnabled = false
        gradientGreenSlider.isEnabled = false
        gradientBlueSlider.isEnabled = false
        gradientColorRandom.isEnabled = false
        gradientColorRandom2.isEnabled = false
    }
    //陰影的layer
    func addShapeLayer(){
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 78, y: 169))
        path.addQuadCurve(to: CGPoint(x: 55, y: 189), controlPoint: CGPoint(x: 63, y: 162))
        path.addQuadCurve(to: CGPoint(x: 78, y: 169), controlPoint: CGPoint(x: 67, y: 171))
        path.move(to: CGPoint(x: 65, y: 217))
        path.addQuadCurve(to: CGPoint(x: 56, y: 362), controlPoint: CGPoint(x: 32, y: 288))
        path.addQuadCurve(to: CGPoint(x: 39, y: 332), controlPoint: CGPoint(x: 41, y: 347))
        path.addQuadCurve(to: CGPoint(x: 54, y: 401), controlPoint: CGPoint(x: 35, y: 378))
        path.addQuadCurve(to: CGPoint(x: 43, y: 356), controlPoint: CGPoint(x: 40, y: 368))
        path.addQuadCurve(to: CGPoint(x: 98, y: 417), controlPoint: CGPoint(x: 59, y: 385))
        path.addLine(to: CGPoint(x: 83, y: 398))
        path.addLine(to: CGPoint(x: 80, y: 385))
        path.addLine(to: CGPoint(x: 98, y: 399))
        path.addQuadCurve(to: CGPoint(x: 65, y: 217), controlPoint: CGPoint(x: 37, y: 329))
        path.move(to: CGPoint(x: 81, y: 403))
        path.addQuadCurve(to: CGPoint(x: 66, y: 569), controlPoint: CGPoint(x: 107, y: 496))
        path.addQuadCurve(to: CGPoint(x: 88, y: 532), controlPoint: CGPoint(x: 81, y: 552))
        path.addQuadCurve(to: CGPoint(x: 105, y: 581), controlPoint: CGPoint(x: 88, y: 561))
        path.addQuadCurve(to: CGPoint(x: 118, y: 570), controlPoint: CGPoint(x: 109, y: 575))
        path.addQuadCurve(to: CGPoint(x: 113, y: 451), controlPoint: CGPoint(x: 112, y: 549))
        path.addQuadCurve(to: CGPoint(x: 84, y: 406), controlPoint: CGPoint(x: 82, y: 424))
        path.close()
        path.move(to: CGPoint(x: 198, y: 228))
        path.addQuadCurve(to: CGPoint(x: 171, y: 219), controlPoint: CGPoint(x: 181, y: 182))
        path.addQuadCurve(to: CGPoint(x: 187, y: 230), controlPoint: CGPoint(x: 178, y: 222))
        path.addLine(to: CGPoint(x: 184, y: 224))
        path.addLine(to: CGPoint(x: 193, y: 230))
        path.addLine(to: CGPoint(x: 191, y: 222))
        path.close()
        path.move(to: CGPoint(x: 198, y: 228))
        path.addQuadCurve(to: CGPoint(x: 247, y: 238), controlPoint: CGPoint(x: 239, y: 191))
        path.addQuadCurve(to: CGPoint(x: 219, y: 230), controlPoint: CGPoint(x: 236, y: 231))
        path.addLine(to: CGPoint(x: 221, y: 226))
        path.addQuadCurve(to: CGPoint(x: 198, y: 228), controlPoint: CGPoint(x: 210, y: 225))
        path.move(to: CGPoint(x: 252, y: 404))
        path.addQuadCurve(to: CGPoint(x: 272, y: 375), controlPoint: CGPoint(x: 261, y: 394))
        path.addQuadCurve(to: CGPoint(x: 250, y: 460), controlPoint: CGPoint(x: 267, y: 420))
        path.addQuadCurve(to: CGPoint(x: 258, y: 404), controlPoint: CGPoint(x: 260, y: 429))
        path.addLine(to: CGPoint(x: 252, y: 409))
        path.close()
        path.move(to: CGPoint(x: 313, y: 256))
        path.addQuadCurve(to: CGPoint(x: 308, y: 325), controlPoint: CGPoint(x: 314, y: 294))
        path.addQuadCurve(to: CGPoint(x: 312, y: 352), controlPoint: CGPoint(x: 315, y: 335))
        path.addQuadCurve(to: CGPoint(x: 315, y: 527), controlPoint: CGPoint(x: 333, y: 457))
        path.addQuadCurve(to: CGPoint(x: 294, y: 465), controlPoint: CGPoint(x: 299, y: 498))
        path.addQuadCurve(to: CGPoint(x: 340, y: 586), controlPoint: CGPoint(x: 291, y: 502))
        path.addLine(to: CGPoint(x: 344, y: 586))
        path.addQuadCurve(to: CGPoint(x: 338, y: 536), controlPoint: CGPoint(x: 345, y: 563))
        path.addQuadCurve(to: CGPoint(x: 359, y: 586), controlPoint: CGPoint(x: 358, y: 571))
        path.addLine(to: CGPoint(x: 374, y: 586))
        path.addQuadCurve(to: CGPoint(x: 351, y: 455), controlPoint: CGPoint(x: 369, y: 503))
        path.addQuadCurve(to: CGPoint(x: 340, y: 344), controlPoint: CGPoint(x: 338, y: 394))
        path.addLine(to: CGPoint(x: 347, y: 363))
        path.addQuadCurve(to: CGPoint(x: 346, y: 279), controlPoint: CGPoint(x: 341, y: 307))
        path.addLine(to: CGPoint(x: 332, y: 290))
        path.addCurve(to: CGPoint(x: 360, y: 236), controlPoint1: CGPoint(x: 330, y: 279), controlPoint2: CGPoint(x: 355, y: 264))
        path.addQuadCurve(to: CGPoint(x: 354, y: 242), controlPoint: CGPoint(x: 359, y: 240))
        path.addQuadCurve(to: CGPoint(x: 347, y: 261), controlPoint: CGPoint(x: 355, y: 252))
        path.addQuadCurve(to: CGPoint(x: 341, y: 248), controlPoint: CGPoint(x: 342, y: 257))
        path.addQuadCurve(to: CGPoint(x: 329, y: 246), controlPoint: CGPoint(x: 336, y: 243))
        path.addQuadCurve(to: CGPoint(x: 316, y: 307), controlPoint: CGPoint(x: 338, y: 269))
        path.addQuadCurve(to: CGPoint(x: 313, y: 256), controlPoint: CGPoint(x: 320, y: 281))
        path.move(to: CGPoint(x: 370, y: 242))
        path.addQuadCurve(to: CGPoint(x: 354, y: 270), controlPoint: CGPoint(x: 364, y: 265))
        path.addQuadCurve(to: CGPoint(x: 353, y: 356), controlPoint: CGPoint(x: 351, y: 321))
        path.addQuadCurve(to: CGPoint(x: 372, y: 287), controlPoint: CGPoint(x: 370, y: 328))
        path.addQuadCurve(to: CGPoint(x: 385, y: 313), controlPoint: CGPoint(x: 375, y: 301))
        path.addQuadCurve(to: CGPoint(x: 370, y: 242), controlPoint: CGPoint(x: 368, y: 269))
    
        let shadow = CAShapeLayer()
        shadow.path = path.cgPath
        shadow.lineWidth = 1
        shadow.fillColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.2).cgColor
        shadow.strokeColor = UIColor.clear.cgColor
        view.layer.addSublayer(shadow)
        
    }
    //漸層func
    func addgradient(r: CGFloat,g: CGFloat, b: CGFloat, a: CGFloat){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 86, width: imageView.bounds.width, height: imageView.bounds.height - 86)
        gradientLayer.colors = [CGColor(red: r, green: g, blue: b, alpha: a), CGColor(red: CGFloat(gradientRedSlider.value), green: CGFloat(gradientGreenSlider.value), blue: CGFloat(gradientBlueSlider.value), alpha: 1)]
        view.layer.insertSublayer(gradientLayer, below: imageView.layer)
        
    }
    //slider單一髮色設定
    @IBAction func changeColor(_ sender: Any) {
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    //預設顏色Func
    func presetColor(){
        redSlider.value = 222 / 255
        greenSlider.value = 171 / 255
        blueSlider.value = 128/255
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    //預設按鈕
    @IBAction func presetBtn(_ sender: Any) {
        presetColor()
    }
    //單一色隨機按鈕
    @IBAction func randomBtn(_ sender: Any) {
        redSlider.setValue(.random(in: 0...1), animated: true)
        greenSlider.setValue(.random(in: 0...1), animated: true)
        blueSlider.setValue(.random(in: 0...1), animated: true)
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    //slider漸層色設定
    @IBAction func changeGradientColor(_ sender: UISlider) {
        addgradient(r: 1, g: 1, b: 1, a: 1)
    }
    //漸層模式1隨機
    @IBAction func gradientRandom1(_ sender: Any) {
        gradientRedSlider.setValue(.random(in: 0...1), animated: true)
        gradientGreenSlider.setValue(.random(in: 0...1), animated: true)
        gradientBlueSlider.setValue(.random(in: 0...1), animated: true)
        addgradient(r: 1, g: 1, b: 1, a: 1)
    }
    //漸層模式2隨機
    @IBAction func gradientRandom2(_ sender: Any) {
        gradientRedSlider.value = 0
        gradientGreenSlider.value = 0
        gradientBlueSlider.value = 0
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 86, width: imageView.bounds.width, height: imageView.bounds.height - 86)
        gradientLayer.colors = [CGColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1), CGColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)]
        view.layer.insertSublayer(gradientLayer, below: imageView.layer)
        
    }
    //漸層開關
    @IBAction func gradientSwitch(_ sender: UISwitch) {
        if sender.isOn{
            imageView.backgroundColor = UIColor.clear
            redSlider.value = 0
            redSlider.isEnabled = false
            greenSlider.value = 0
            greenSlider.isEnabled = false
            blueSlider.isEnabled = false
            blueSlider.value = 0
            presetBtn.isEnabled = false
            singleColorRandom.isEnabled = false
            
            gradientRedSlider.isEnabled = true
            gradientGreenSlider.isEnabled = true
            gradientBlueSlider.isEnabled = true
            gradientColorRandom.isEnabled = true
            gradientColorRandom2.isEnabled = true
            gradientRedSlider.value = 1
            gradientGreenSlider.value = 1
            gradientBlueSlider.value = 1
            addgradient(r: 1, g: 1, b: 1, a: 1)
        }else{
            gradientRedSlider.isEnabled = false
            gradientGreenSlider.isEnabled = false
            gradientBlueSlider.isEnabled = false
            gradientColorRandom.isEnabled = false
            gradientColorRandom2.isEnabled = false
            gradientRedSlider.value = 1
            gradientGreenSlider.value = 1
            gradientBlueSlider.value = 1
            presetBtn.isEnabled = true
            singleColorRandom.isEnabled = true
            redSlider.isEnabled = true
            greenSlider.isEnabled = true
            blueSlider.isEnabled = true
            redSlider.value = 222 / 255
            greenSlider.value = 171 / 255
            blueSlider.value = 128/255
            imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        }
        
        /*struct ViewControllerView: UIViewControllerRepresentable {
         func makeUIViewController(context: Context) -> ViewController {
         ViewController()
         }
         
         func updateUIViewController(_ uiViewController: ViewController, context: Context) {
         }
         
         typealias UIViewControllerType = ViewController
         
         
         }
         struct ViewController_Previews: PreviewProvider {
         static var previews: some View {
         ViewControllerView()
         }*/
    }
    
    
}
