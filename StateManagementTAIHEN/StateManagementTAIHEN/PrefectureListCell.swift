import SwiftUI

struct PrefectureListCell: View {
    @Binding var prefecture: Prefecture

    var body: some View {
        HStack {
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
            .buttonStyle(.plain)
            Text(prefecture.name)
            Spacer()
        } // HStack
    }
}

#Preview {
    @State var prefecture = Prefecture(name: "北海道")
    return PrefectureListCell(prefecture: $prefecture)
}
