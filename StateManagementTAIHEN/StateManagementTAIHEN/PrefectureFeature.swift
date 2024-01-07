import ComposableArchitecture
import Foundation

public struct PrefectureFeature: Reducer {
    public struct State: Equatable {
        var prefectures: [Prefecture] = []

        struct Prefecture: Equatable, Identifiable, Hashable {
            let id = UUID()
            let name: String
            var isFavorite = false

            static let prefectures = [
                "北海道", "青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県", "茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県", "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県", "鳥取県", "島根県", "岡山県", "広島県", "山口県", "徳島県", "香川県", "愛媛県", "高知県", "福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県"
            ]
        }
    }

    public init() {}

    public enum Action: Equatable {
        case tappedFavoriteButton(UUID)
    }

    public func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .tappedFavoriteButton(let id):
            guard let index = state.prefectures.firstIndex(where: { $0.id == id }) else { return .none }
            state.prefectures[index].isFavorite.toggle()
            return .none
        }
    }
}
