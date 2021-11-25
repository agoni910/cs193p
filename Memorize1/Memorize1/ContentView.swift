//
//  ContentView.swift
//  Memorize1
//
//  Created by 蒋文荣 on 2021/10/9.
//

import SwiftUI


struct ContentView: View {
    @State var emojis = ["🚌","🚗","🚓","🚑","🛻","🏎","🚲","🚂","✈️","🚀","🛶","🛸","🚕","🚙","🚎","🚛","🚁","🏍","🦽","🚒","🚜","🚠","🚄","🛰"]
    @State var emojis1 = ["🚌","🚗","🚓","🚑","🛻","🏎","🚲","🚂","✈️","🚀","🛶","🛸","🚕","🚙","🚎","🚛","🚁","🏍","🦽","🚒","🚜","🚠","🚄","🛰"]
    @State var emojis2 = ["🐶","🐱","🐭","🐰","🦊","🐻","🐼","🐮","🐵","🐧","🦋","🐢","🐝","🦆","🐙","🦐","🦀"]
    @State var emojis3 = ["😀","☺️","😊","😇","🥰","😌","😉","🙃","😋","🤨","😏","😒","😭","🥵","😳","🤔","🤗","😷"]
    @State var emojis4 = ["🎂","🍡","🍱","🍛","🍝","🌯","🍕","🍟","🍔","🌭","🍗","🥗","🍲","🍤","🥮","🥧","🍩","🍪","🍵","🍞","🥐","🥖","🥞","🫕"]
    
    @State var emojiCount = 14
 
    var body: some View {
        VStack{
            HStack {
                Text("Memorize!")
                    .font(.largeTitle)
            }
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75))]) {
                
                    ForEach(emojis[0..<emojis.count], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                        
                    }
              
                }
            }
        
            .foregroundColor(.red)
            Spacer()
            HStack {
                Vehicles
                Spacer()
                Animal
                Spacer()
                People
                Spacer()
                Food
                
//                remove
//                Spacer()
//                add
                
            }
            .font(.largeTitle)
            .frame(height: 40)
            .padding(.horizontal)
            HStack {
                Text("Vehicles")
                Spacer()
                Text("Animal")
                Spacer()
                Text("People")
                Spacer()
                Text("Food")
            }
            .font(.caption)
            .foregroundColor(Color.blue)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
//    mutating func shuffle() {
//        emojis1.shuffle()
//    }
    
    var Vehicles: some View {
        Button {
            emojis = emojis1
            emojis.shuffle()
        } label: {
           
            Image(systemName: "car")
              
         
        }
    }
    var Animal: some View {
        Button {
            emojis = emojis2
            emojis.shuffle()
        } label: {
         
            Image(systemName: "pawprint")
               
            
        }
    }
    var People: some View {
        Button {
            emojis = emojis3
            emojis.shuffle()
        } label: {
           
            Image(systemName: "face.smiling")
                
        }
    }
    var Food: some View {
        Button {
            emojis = emojis4
            emojis.shuffle()
        } label: {
           
            Image(systemName: "fork.knife")
           
        }
    }
    
    
    
//    var remove: some View {
//        Button {
//            if emojiCount > 1 {
//                emojiCount -= 1
//            }
//        } label: {
//            Image(systemName: "minus.circle")
//        }
//    }
//
//
//    var add: some View {
//        Button {
//            if emojiCount < emojis.count {
//                emojiCount += 1
//            }
//        } label: {
//            Image(systemName: "plus.circle")
//        }
//    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack{
            
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            }
            else{
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            ContentView()
        }
    }
}
