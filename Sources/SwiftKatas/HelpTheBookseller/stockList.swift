/**
 - See: https://www.codewars.com/kata/54dc6f5a224c26032800005c/train/swift
 */
func stockList(_ listOfArt: [String], _ listOfCat: [String]) -> String {
    if listOfArt.isEmpty {
        return ""
    }
    
    let stock = listOfArt.map {
            $0.toStockItem()
        }
        .reduce(into: [String: Int]()) { (stock: inout [String: Int], stockItem: (String, Int)) in
            let (category, quantity) = stockItem
            stock[category] = quantity + (stock[category] ?? 0)
        }
    
    return listOfCat.map { category in
            (category, stock[category])
        }
        .map { category, quantity in
            "(\(category) : \(quantity ?? 0))"
        }
        .joined(separator: " - ")
}

private extension String {
    func toStockItem() -> (String, Int) {
        let split = self.split(separator: " ")
        
        let category = String(split[0].first!)
        let quantity = Int(split[1])!
        
        return (category, quantity)
    }
}
