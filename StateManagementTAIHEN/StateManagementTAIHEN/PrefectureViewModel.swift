import Foundation

@Observable
final class PrefectureViewModel {
    private(set) var prefectures = [Prefecture]()

    init() {
        for name in Prefecture.prefectures {
            prefectures.append(Prefecture(name: name))
        }
    }
}
