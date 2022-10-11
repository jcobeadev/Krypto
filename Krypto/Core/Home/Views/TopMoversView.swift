//
//  TopMoversView.swift
//  Krypto
//
//  Created by Jco Bea on 10/2/22.
//

import SwiftUI

struct TopMoversView: View {

    @StateObject var viewModel: HomeViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(viewModel.topMovingCoins) { coin in
                        TopMoversItemCell(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView(viewModel: HomeViewModel())
    }
}
