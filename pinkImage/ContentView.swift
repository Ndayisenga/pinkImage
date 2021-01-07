//
//  ContentView.swift
//  pinkImage
//
//  Created by Jean Claude Ndayisenga on 03/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHearted = false
    @State private var numHearts = 999
    
    var body: some View {
        
        VStack {
            Image("pinkbuilding").resizable().cornerRadius(30).padding().shadow(radius: 10)
            
            HStack {
                
                Button(action: {
                    self.isHearted.toggle()
                    
                    if self.isHearted {
                        self.numHearts += 1
                    }
                    else {
                        self.numHearts -= -1
                    }
                }) {
                    
                    if isHearted {
                        
                        Image(systemName: "heart.fill")
                    }
                    else {
                        Image(systemName: "heart")
                    }
                    
                    
                }
                
                Text(String(numHearts))
            }
            
            
            
            
            
            Text("This pink building is wow ").fontWeight(.heavy).foregroundColor(.pink).font(.largeTitle).multilineTextAlignment(.center).shadow(color:.black , radius: 0.1, x: 2, y: 2 )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
