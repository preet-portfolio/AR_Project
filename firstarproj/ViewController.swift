//
//  ViewController.swift
//  firstarproj
//
//  Created by Preet Panchal on 2022-03-27.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let configuration = ARWorldTrackingConfiguration()
        
        configuration.planeDetection = .horizontal
        
        sceneView.session.run(configuration)
    }

    @IBAction func addCube(_ sender: Any) {
        
        let scene = SCNScene()
        
        let cube = SCNNode(geometry: SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0))
        cube.position = SCNVector3(0, 0, -0.2)
        
        scene.rootNode.addChildNode(cube)
        
        sceneView.scene = scene
    }
    
}

