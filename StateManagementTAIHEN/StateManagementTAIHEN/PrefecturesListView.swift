import SwiftUI

struct PrefecturesListView: View {
    @State private var viewModel = PrefectureViewModel()

    var body: some View {
        List {
            ForEach(viewModel.prefectures, id: \.id) { prefecture in
                Text(prefecture.name)
            }
        }
    }
}

#Preview {
    PrefecturesListView()
}
