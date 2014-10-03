// Playground - noun: a place where people can play

import UIKit
import SpriteKit
import XCPlayground
import Foundation
import MyCTFramework
import JsonModule


var spriteView = SKView(frame: CGRectMake(0, 0, 1334, 650))
spriteView.backgroundColor = UIColor(red: 0.167, green: 0.165, blue: 0.164, alpha: 1.0)
let rootScene = SKScene()

let rect = SKShapeNode(rect: CGRectMake(10, 10, 100, 100))

rect.fillColor = UIColor.redColor()

rootScene.addChild(rect)

spriteView.presentScene(rootScene)

// XCPShowView("The Sprite View", spriteView)



// let url:URL = URL("http://www.google.com")
// var error: NSError?
// var request: NSURLRequest = NSURLRequest(URL: url)
// var connection: NSURLConnection = NSURLConnection(request: request, delegate: self, startImmediately: false)

// let jsonData: NSData =  NSData.dataWithContentsOfFile("/tmp/xx.json", options: .DataReadingMappedIfSafe, error: nil) /* get your json data */


// var error:func

// let jsonDict = NSJSONSerialization.JSONObjectWithData(jsonData,
//   options: nil, error: &error) as NSDictionary

//let the show begin!


let obj:[String:AnyObject] = [
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
  "url":"http://blog.livedoor.com/dankogai/"
]
//
let json = JSON(obj)
let jstr = json.toString()
println("Objeto JSON é : \(jstr)")

