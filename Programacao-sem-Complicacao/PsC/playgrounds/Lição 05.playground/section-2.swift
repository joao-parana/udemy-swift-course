import UIKit
import JsonModule

let json1 = JSON(string: "{ \"name\": \"João Paraná\" }")
"é indentico a :"
let json2 = JSON.parse("{ \"name\": \"João Paraná\" }")



func + (left: UIColor, right: UIColor) -> UIColor {
    var leftRGBA = [CGFloat] (count: 4, repeatedValue: 0.0)
    var rightRGBA = [CGFloat](count: 4, repeatedValue: 0.0)

    left.getRed(&leftRGBA[0], green: &leftRGBA[1], blue: &leftRGBA[2], alpha: &leftRGBA[3])
    right.getRed(&rightRGBA[0], green: &rightRGBA[1], blue: &rightRGBA[2], alpha: &rightRGBA[3])

    return UIColor(
        red: (leftRGBA[0] + rightRGBA[0]) / 2,
        green: (leftRGBA[1] + rightRGBA[1]) / 2,
        blue: (leftRGBA[2] + rightRGBA[2]) / 2,
        alpha: (leftRGBA[3] + rightRGBA[3]) / 2
    )
}

UIColor.yellowColor() + UIColor.redColor()
UIColor.greenColor() + UIColor.blueColor()
UIColor.purpleColor() + UIColor.orangeColor()

// No OSX use assim -> NSImage(named: "pattern1")

let imageNames = ["pattern1" ]
let images = imageNames.map { UIImage(named: $0) }
images[0]

// Este comando abaixo Abenda o XCode
// let backgroundColor = UIColor( patternImage:images[0] )

// If you just want to get your hands on an image quickly, you can also just use absolute file path:

// On iOS:

// let absoluteImagePath = "/tmp/pattern1.png"
// let image = UIImage(contentsOfFile: absoluteImagePath)

// And on OS X

// let absoluteImagePath = "/absolute/path/to/image.png"
// let image = NSImage(contentsOfFile: absoluteImagePath)

// var sample = UIImage(named: "/tmp/pattern1.png")
