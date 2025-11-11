//
// Lab 3
// Group #
// Hasan Dababo
// Date: 11/10/2025
//

import Foundation

struct MemoryCard: Identifiable {
    let id = UUID()
    let emoji: String
    var isFaceUp: Bool = false
    var isMatched: Bool = false
}
