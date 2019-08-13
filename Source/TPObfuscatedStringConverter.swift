//
//  TPObfuscatedStringConverter.swift
//  TPObfuscatedString
//
//  Created by Philip Niedertscheider on 27/08/15.
//  Copyright (c) 2015 Philip Niedertscheider. All rights reserved.
//

import Foundation

class TPObfuscatedStringConverter {
    
    class func convert(phrase: String) -> String {
        var result = [String]()
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        
        for c in phrase {
            let s = String(c).unicodeScalars
            let unicode = Int(s[s.startIndex].value)
            switch unicode {
            case 65...90, 97...122:
                result.append(String(c))
                
            case 48...57:
                let content = formatter.string(from: NSNumber(value: Int(String(c))!))!
                result.append(content)
                
            case 32:
                result.append("space")
                
            case 33:
                result.append("exclamation")
                
            case 34:
                result.append("quote")
                
            case 35:
                result.append("hash")
                
            case 36:
                result.append("dollar")
                
            case 37:
                result.append("percent")
                
            case 38:
                result.append("and")
                
            case 39:
                result.append("apostrophe")
                
            case 40:
                result.append("openparantheses")
                
            case 41:
                result.append("closeparantheses")
                
            case 42:
                result.append("asteriks")
                
            case 43:
                result.append("plus")
                
            case 44:
                result.append("comma")
                
            case 45:
                result.append("minus")
                
            case 46:
                result.append("dot")
                
            case 47:
                result.append("slash")
                
            case 58:
                result.append("colon")
                
            case 59:
                result.append("semicolon")
                
            case 60:
                result.append("lessthan")
                
            case 61:
                result.append("equal")
                
            case 62:
                result.append("greaterthan")
                
            case 63:
                result.append("question")
                
            case 64:
                result.append("at")
                
            case 91:
                result.append("openbracket")
                
            case 92:
                result.append("backslash")
                
            case 93:
                result.append("closebracket")
                
            case 94:
                result.append("circumflex")
                
            case 95:
                result.append("underscore")
                
            case 96:
                result.append("gravis")
                
            case 123:
                result.append("curlyopenbracket")
                
            case 124:
                result.append("pipe")
                
            case 125:
                result.append("curlyclosebracket")
                
            case 126:
                result.append("lambda")
                
            default:
                fatalError("Unknown character: \(c)")
            }
        }
        
        return result.joined(separator: ".")
    }
}
