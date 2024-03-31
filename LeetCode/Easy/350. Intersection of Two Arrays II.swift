
func intersect2(
    _ nums1: [Int],
    _ nums2: [Int]
) -> [Int] {
    let nums1 = nums1.sorted()
    let nums2 = nums2.sorted()
    
    let n = nums1.count
    let m = nums2.count
    
    var p1 = 0
    var p2 = 0
    
    var result = [Int]()
    
    while p1 < n && p2 < m {
        if nums1[p1] == nums2[p2] {
            result.append(nums1[p1])
            p1 += 1
            p2 += 1
        } else if nums1[p1] < nums2[p2] {
            p1 += 1
        } else {
            p2 += 1
        }
    }
    
    return result
}
