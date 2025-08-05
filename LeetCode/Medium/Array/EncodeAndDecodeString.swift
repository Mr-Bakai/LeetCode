//
//  EncodeAndDecodeString.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 27/7/25.
//

struct EncodeAndDecodeString {
    
    // ["Need", "Code"]
    public static func encode(_ strs: [String]) -> String {
        var res = ""
        for word in strs {
            res += "\(word.count)#\(word)"
        }
        return res
    }
    
    // "4#Need4#code"
    public static func decode(_ s: String) -> [String] {
        var res = [String]()
        let sArr = Array(s)
        var i = 0

        while i < sArr.count {
            var j = i
            while sArr[j] != "#" {
                j += 1
            }
            let lengthStr = String(sArr[i..<j])
            let length = Int(lengthStr)!

            i = j + 1
            let end = i + length
            let substring = String(sArr[i..<end])
            res.append(substring)
            i = end
        }

        return res
    }
}
