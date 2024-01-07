import ComposableArchitecture
import SwiftUI

struct PrefecturesListView: View {
    let store: StoreOf<PrefectureFeature>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            NavigationStack {
                List(viewStore.prefectures) { prefecture in
                    HStack {
                        NavigationLink(
                            destination: {
                                VStack {
                                    Spacer()
                                    Text(prefecture.name)
                                        .font(.largeTitle)
                                    Spacer()
                                    Button(
                                        action: {
                                            viewStore.send(
                                                .tappedFavoriteButton(prefecture.id)
                                            )
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
                                } // VStack
                            },
                            label: {
                                HStack {
                                    Button(
                                        action: {
                                            viewStore.send(
                                                .tappedFavoriteButton(prefecture.id)
                                            )
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
                        )
                    } // HStack
                    .listRowSeparator(.hidden)
                } // List
                .listStyle(.plain)
            } // NavigationStack
        }
    }
}

#Preview {
    let prefectureInstances = PrefectureFeature.State.Prefecture.prefectures.map { PrefectureFeature.State.Prefecture(name: $0) }

    var view = PrefecturesListView(
        store: .init(
            initialState: PrefectureFeature.State(prefectures: prefectureInstances),
            reducer: {
                PrefectureFeature()
            }
        )
    )
    return view
}
