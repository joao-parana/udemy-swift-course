// Playground - noun: a place where people can play

import UIKit
import SpriteKit
import XCPlayground

let π = M_PI
println("π = \(π)")
for x in 0...255 {
  var factor = pow(Double(x), 1.5)
  var y = factor * sin(Double(x) * (π / 20))
}






















/*
let myNull = JSON.null

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
  "url":"https://automacao.info"
]
//
let json = JSON(obj)
let jstr = json.toString()
println("Objeto JSON é : \(jstr)")
json["object"]["null"].asNull       // NSNull()
json["object"]["bool"].asBool       // true
json["object"]["int"].asInt         // 42
json["object"]["double"].asDouble   // 3.141592653589793
json["object"]["string"].asString   // "a α\t弾\n𪚲"
json["array"][0].asNull             // NSNull()
json["array"][1].asBool             // false
json["array"][2].asInt              // 0
json["array"][3].asString           //
json["object"]["key"]["null"].asNull       // NSNull()
json["object"]["key"]["bool"].asBool       // true
json["object"]["key"]["int"].asInt         // 42
json["object"]["key"]["double"].asDouble   // 3.141592653589793
json["object"]["key"]["string"].asString   // "a α\t弾\n𪚲"
if let b = json["object"]["key"]["string"].asString {
  // ....
} else {
  let e = json["object"]["key"]["string"].asError
  println(e)
}
json["array"].type                  // "Array"
json["array"].isDictionary          // false
json["array"].isLeaf                // false
json["object"].type                 // "Dictionary"
json["object"].isDictionary         // true
json["object"].isLeaf               // false
json["url"].isLeaf                  // true
json["object"]["null"].type         // "NSNull"
json["object"]["null"].isNull       // true
json["object"]["bool"].type         // "Bool"
json["object"]["bool"].isBool       // true
json["object"]["bool"].isNumber     // false
json["object"]["int"].type          // "Int"
json["object"]["int"].isInt         // true
json["object"]["int"].asInt         // 42
json["object"]["int"].isNumber      // true
json["object"]["double"].type       // "Double"
json["object"]["double"].isDouble   // true
json["object"]["double"].isNumber   // true
json["object"]["string"].type       // "String"
json["object"]["string"].isString   // true

// In JavaScript where JSON is originated, You don't need subscripts for string keys. They automagically turns into property names.

//json["object"]["string"] vs...
// json.object.string
// 4 characters for each array or object! Can't we teach Swift how to access via methods?
// Yes, we can!

//// schema by Subclassing

class MyJSON : JSON {
  override init(_ obj:AnyObject){ super.init(obj) }
  override init(_ json:JSON)  { super.init(json) }
  var null  :NSNull? { return self["null"].asNull }
  var bool  :Bool?   { return self["bool"].asBool }
  var int   :Int?    { return self["int"].asInt }
  var double:Double? { return self["double"].asDouble }
  var string:String? { return self["string"].asString }
  var url:   String? { return self["url"].asString }
  var array :MyJSON  { return MyJSON(self["array"])  }
  var object:MyJSON  { return MyJSON(self["object"]) }
}

// Now do:

let myjson = MyJSON(obj)
myjson.object.null      // NSNull?
myjson.object.bool      // Bool?
myjson.object.int       // Int?
myjson.object.double    // Double?
myjson.object.string    // String?
myjson.url              // String?
*/
//  This approach comes with bonus. You can't accidentaly access elements that was not supposed to there. JSON is schemaless and that is what makes JSON rule today. But that is also what makes JSON so prone to error. With Swift and this JSON class you get the best of both worlds -- flexibility of JSON and robustness of static typing.

var myUrl = "http://api.dan.co.jp/asin/4534045220.json"
// JSON(url: myUrl).toString()
var err: NSError
// NSString(contentsOfURL: myUrl, encoding: NSUTF8StringEncoding)
var 🔓 = "DESPROTEGIDO"
var 🔒 = "BLOQUEADO"

let reload = "🔄"
let play = "▶️"



myUrl = "http://api.dan.co.jp/nonexistent"

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




