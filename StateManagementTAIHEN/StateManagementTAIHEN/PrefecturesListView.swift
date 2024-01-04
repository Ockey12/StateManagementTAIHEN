import SwiftUI

struct PrefecturesListView: View {
    @State private var viewModel = PrefectureViewModel()

    var body: some View {
        NavigationStack {
            HStack(spacing: 0) {
                Spacer()

                List($viewModel.prefectures) { $prefecture in
                    Button(
                        action: {
                            prefecture.isFavorite.toggle()
                        },
                        label: {
                            if prefecture.isFavorite {
                                Image(systemName: "heart.fill")
                                    .foregroundStyle(.pink)
                            } else {
                                Image(systemName: "heart.fill")
                                    .foregroundStyle(.gray)
                                    .opacity(0.3)
                            }
                        }
                    )
                    .foregroundStyle(.pink)
                    .frame(width: 25, height: 25)
                    .listRowSeparator(.hidden)
                } // List
                .frame(width: 50)
                .listStyle(.plain)

                List($viewModel.prefectures) { $prefecture in
                    HStack {
                        NavigationLink(
                            destination: PrefectureView(prefecture: $prefecture),
                            label: {Text(prefecture.name)})
                    }
                    .listRowSeparator(.hidden)
                } // List
                .listStyle(.plain)
            } // HStack
        } // NavigationStack
    }
}

#Preview {
    PrefecturesListView()
}
