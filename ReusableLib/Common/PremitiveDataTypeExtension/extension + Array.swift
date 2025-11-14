


import Foundation


extension Array{
    /**
     Removes element at index.
     */
    mutating func remove(safeAt index: Index) {
        guard indices.contains(index) else {return}
        remove(at: index)
    }
    
    /**
     Inserts element at index.
     */
    mutating func insert(_ element: Element, safeAt index: Index) {
        guard indices.contains(index) else {return}
        insert(element, at: index)
    }
    
    mutating func truncate(to index: Int) {
        guard index >= 0 && index < self.count else {
            return
        }
        self = Array(self[..<(index + 1)])
    }
}

