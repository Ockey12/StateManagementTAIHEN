import SwiftUI

struct PrefecturesListView: View {
    @State private var viewModel = PrefectureViewModel()

    var body: some View {
        List {
            ForEach($viewModel.prefectures) { $prefecture in
                PrefectureListCell(prefecture: $prefecture)
            }
        }
    }
}

#Preview {
    PrefecturesListView()
}
