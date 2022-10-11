//
//  AllCoinsView.swift
//  Krypto
//
//  Created by Jco Bea on 10/2/22.
//

import SwiftUI

struct AllCoinsView: View {

    @StateObject var viewModel: HomeViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()

            HStack {
                Text("Coin")

                Spacer()

                Text("Price")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)

            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        CoinRowCell(coin: coin)
                    }
                }
            }
        }
    }
}
