import SwiftUI

@main
struct StateManagementTAIHENApp: App {
    let prefectureInstances = PrefectureFeature.State.Prefecture.prefectures.map { PrefectureFeature.State.Prefecture(name: $0) }
    
    var body: some Scene {
        WindowGroup {
            PrefecturesListView(
                store: .init(
                    initialState: PrefectureFeature.State(prefectures: prefectureInstances),
                    reducer: {
                        PrefectureFeature()
                            ._printChanges()
                    }
                )
            )
        }
    }
}
