//
//  ContentView.swift
//  random_image_displayer
//
//  Created by User on 31/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var lastupdatedtime = Date().timeIntervalSince1970;
    
    var body: some View {
        VStack{
            
            let image_url = URL(string: "https://picsum.photos/200?timestamp=\(lastupdatedtime)")
            let imageblock = AsyncImage(url: image_url)
            imageblock.clipShape(RoundedRectangle(cornerRadius: 180))
            
            Spacer()
                .frame(width: 10.0, height: 30.0)
            
            Button(action:{
                lastupdatedtime = Date().timeIntervalSince1970
            }) {
                Text("Reload Image")
            
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
