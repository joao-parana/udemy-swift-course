//
//  ViewController.swift
//  PsC
//
//  Created by Joao Antonio Ferreira on 01/10/14.
//  Copyright (c) 2014 Joao Antonio Ferreira. All rights reserved.
//

import UIKit
import JsonModule

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myNull = JSON.null
        let _mySampleJsonObjForTest:[String:AnyObject] = [
          "array": [JSON.null, false, 0, "", [], [:]],
          "object":[
            "null":   JSON.null,
            "bool":   true,
            "int":    42,
            "double": 3.141592653589793,
            "string": "a α\t弾\nð assombração é feia",
            "array":  [],
            "object": [:]
          ],
          "url":"https://automacao.info"
        ]

        println(JSON(_mySampleJsonObjForTest))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

