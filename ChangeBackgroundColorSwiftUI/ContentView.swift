//
//  ContentView.swift
//  ChangeBackgroundColorSwiftUI
//
//  Created by naresh kukkala on 01/05/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        //UITableView.appearance().backgroundColor = UIColor.yellow
    }
    
    var body: some View {
        
        ScrollView {
            LazyVStack {
                ForEach(1...10, id: \.self) { index in
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(index)")
                            Divider()
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            .background(Color.green)
        }.background(Color.blue)
        
        
        /*
        List {
            ForEach(1...10, id: \.self) { index in
                HStack {
                    Text("\(index)")
                    Spacer()
                }.listRowBackground(Color.green)
            }
        } */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

