import SwiftUI

struct PrefectureListCell: View {
    @Binding var prefecture: Prefecture

    var body: some View {
        HStack {
            Text(prefecture.name)
            Spacer()
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
        }
    }
}

#Preview {
    @State var prefecture = Prefecture(name: "北海道")
    return PrefectureListCell(prefecture: $prefecture)
}
