// Playground - noun: a place where people can play

import UIKit
import CommonCrypto

var str = "Hello, playground !"
println("String a ser processada = '\(str)'")
var s = "The quick brown fox jumps over the lazy dog."
s = str

var context = UnsafeMutablePointer<CC_MD5_CTX>.alloc(1)
var digest = Array<UInt8>(count:Int(CC_MD5_DIGEST_LENGTH), repeatedValue:0)
CC_MD5_Init(context)
CC_MD5_Update(context, s,
  CC_LONG(s.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)))
CC_MD5_Final(&digest, context)
context.dealloc(1)
var hexString = ""
for byte in digest {
  hexString += String(format:"%02x", byte)
}
// println("MD5    hexString = \(hexString)")

// criando as extensões para a classe String
extension String {
  func sha1() -> String! {
    let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
    let strLen = CUnsignedInt(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
    let digestLen = Int(CC_SHA1_DIGEST_LENGTH)
    let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
    
    CC_SHA1(str!, strLen, result)
    
    var hash = NSMutableString()
    for i in 0..<digestLen {
      hash.appendFormat("%02x", result[i])
    }
    
    result.destroy()
    return String(hash)
  }
  func sha256() -> String! {
    let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
    let strLen = CUnsignedInt(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
    let digestLen = Int(CC_SHA256_DIGEST_LENGTH)
    let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
    
    CC_SHA256(str!, strLen, result)
    
    var hash = NSMutableString()
    for i in 0..<digestLen {
      hash.appendFormat("%02x", result[i])
    }
    
    result.destroy()
    return String(hash)
  }
}

println("SHA1   hexString = \(str.sha1())")
println("SHA256 hexString = \(str.sha256())")


// import MyCTFramework

