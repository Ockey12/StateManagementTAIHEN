import SwiftUI

struct PrefectureView: View {
    @Binding var prefecture: Prefecture

    var body: some View {
        VStack {
            Spacer()
            Text(prefecture.name)
                .font(.largeTitle)
            Spacer()
            Button(
                action: {
                    prefecture.isFavorite.toggle()
                },
                label: {
                    prefecture.isFavorite
                    ? Image(systemName: "heart.fill")
                        .font(.largeTitle)
                    : Image(systemName: "heart")
                        .font(.largeTitle)
                }
            )
            Spacer()
        }
    }
}

#Preview {
    @State var prefecture = Prefecture(name: "北海道")
    return PrefectureView(prefecture: $prefecture)
}
