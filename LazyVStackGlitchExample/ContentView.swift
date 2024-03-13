//
//  ContentView.swift
//  LazyVStackGlitchExample
//
//  Created by Artem Trubacheev on 05.03.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        ScrollView {
            stack()
            Spacer(minLength: 16)
            stack()
        }
        .padding()
    }

    @ViewBuilder
    func stack() -> some View {
        LazyVStack {
            ForEach(1...5, id: \.self) { j in
                Text(j.description)
                    .padding(CGFloat(j))
                ForEach(1...5, id: \.self) { i in
                    LazyVStack {
                        ForEach(1...5, id: \.self) { k in
                            Text("\(i)_\(j)_\(k)")
                                .onAppear {
                                    print("a", i,j,k)
                                }
                                .padding(2)
                                .id("\(i)_\(j)_\(k)")
                        }
                    }
                    .id("\(i)_\(j)")
                    .background(Color.green)
                    .cornerRadius(8)
                    .padding()
                }
            }
        }
        .background(Color.blue)
        .cornerRadius(12)
    }

}
