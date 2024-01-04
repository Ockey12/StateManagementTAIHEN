import SwiftUI

struct PrefecturesListView: View {
    @State private var viewModel = PrefectureViewModel()

    var body: some View {
        NavigationView {
            List($viewModel.prefectures) { $prefecture in
                HStack {
                    Button(
                        action: {
                            prefecture.isFavorite.toggle()
                        },
                        label: {
                            prefecture.isFavorite
                            ? Image(systemName: "heart.fill")
                            : Image(systemName: "heart")
                        }
                    )
                    NavigationLink(
                        destination: PrefectureView(prefecture: $prefecture),
                        label: {
                            Text(prefecture.name)
                        }
                    )
                }
            }
        }
    }
}

#Preview {
    PrefecturesListView()
}
