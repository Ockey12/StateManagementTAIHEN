import SwiftUI

struct PrefecturesListView: View {
    @State private var viewModel = PrefectureViewModel()

    var body: some View {
        NavigationStack {
            List($viewModel.prefectures) { $prefecture in
                HStack {
                    NavigationLink(
                        destination: PrefectureView(prefecture: $prefecture),
                        label: { PrefectureListCell(prefecture: $prefecture) }
                    )
                } // HStack
                .listRowSeparator(.hidden)
            } // List
            .listStyle(.plain)
        } // NavigationStack
    }
}

#Preview {
    PrefecturesListView()
}
