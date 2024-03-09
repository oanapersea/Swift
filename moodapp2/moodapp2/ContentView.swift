//
//  ContentView.swift
//  moodapp2
//
//  Created by Persea Oana on 03.12.2021.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView{
        VStack{
            Spacer();
        Text("Welcome Back!").font(.largeTitle)
            .fontWeight(.bold)
            .padding().foregroundColor(.black)
            .offset(y: -60);
        
          
        NavigationLink(destination: FirstView(), label:
            {Text("Start")
                    .bold()
                    .frame(width:120, height:50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10);
                
            })
            Spacer();
               
        }
    }
    }
}

struct FirstView: View{
    private let emojiList: [EmojiItem] = [
        EmojiItem(
        emoji:"😡",
        name: "angry"),
        EmojiItem(
            emoji:"😞",
            name: "sad"),
        EmojiItem(
            emoji:"😐",
            name:"bored"),
        EmojiItem(
            emoji:"😕",
            name: "confused"),
        EmojiItem(
            emoji:"🙄",
            name:"fed up"),
        EmojiItem(
            emoji:"😦",
            name:"overwhelmed"),
        EmojiItem(
            emoji:"😌",
            name:"grateful"),
        EmojiItem(
            emoji:"☺️",
            name:"happy"),
        EmojiItem(
            emoji:"😄",
            name:"excited"),
        EmojiItem(
            emoji:"🤗",
            name:"loving")
        ]
    var body: some View{
    
            List(emojiList)
            { emojiItem in
                NavigationLink(destination: DetailsView(emojiItem: emojiItem) ) {
                    HStack{
                        EmojiCircleView(emojiItem: emojiItem)
                        Text(emojiItem.name).font(.headline)
                    }.padding(7)
                    }                    }
                
        .navigationBarTitle("How are you today?")
                
                    
                
        
}
}
    

struct DetailsView: View {
    let emojiItem: EmojiItem
    var body: some View {
        VStack(alignment: .leading)
        {
            HStack{
                EmojiCircleView(emojiItem: emojiItem)
                    .padding(.trailing, 5)
            
                Text(emojiItem.name)
                    .font(.largeTitle)
                    .bold()
                Spacer();
           
            }
        }
        .padding()
        .navigationBarTitle(Text(emojiItem.name), displayMode: .inline)
    }
        }

struct EmojiCircleView: View{
    let emojiItem: EmojiItem
    var body: some View {
        ZStack
        {
            Text(emojiItem.emoji)
                .shadow(radius:3)
                .font(.largeTitle)
                .frame(width: 65, height: 65)
                .overlay(
                    Circle().stroke(Color.purple, lineWidth: 3)
                    )
        }
    }
}


struct EmojiItem: Identifiable {
    let id = UUID()
    let emoji: String
    let name: String
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView();
    }
}
