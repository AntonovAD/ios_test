import Foundation

class SearchService {
    let mockData: [String] = [
        "🍇 виноград",
        "🍈 дыня",
        "🍉 арбуз",
        "🍊 мандарин",
        "🍋 лимон",
        "🍌 банан",
        "🍍 ананас",
        "🥭 манго",
        "🍎 красное яблоко",
        "🍏 зеленое яблоко",
        "🍐 груша",
        "🍑 персик",
        "🍒 вишня",
        "🍓 клубника",
        "🥝 киви",
        "🍅 помидор",
        "🥥 кокос"
    ]
    
    func search(by word: String) -> [String] {
        return self.mockData.compactMap { (item: String) -> String? in
            if (item.lowercased().contains(word.lowercased()) || word.isEmpty) {
                return item
            } else {
                return nil
            }
        }
    }
}
