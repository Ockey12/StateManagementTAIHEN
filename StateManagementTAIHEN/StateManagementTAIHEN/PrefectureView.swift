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
                    if prefecture.isFavorite {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.pink)
                    } else {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.gray)
                            .opacity(0.3)
                    }
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
