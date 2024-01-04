import Foundation

@Observable
final class PrefectureViewModel {
    var prefectures = [Prefecture]()

    init() {
        for name in Prefecture.prefectures {
            prefectures.append(Prefecture(name: name))
        }
    }
}
