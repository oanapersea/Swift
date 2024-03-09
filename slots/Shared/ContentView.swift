//
//  ContentView.swift
//  Shared
//
//  Created by Persea Oana on 14.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State var Score=1000
    @State var RandName = "image1"
    @State var SecondImage = "image2"
    @State var ThirdImage = "image3"
  
    
    
    var body: some View {
        VStack{
            Spacer();
        Text("SwiftUI Slots!").foregroundColor(Color.black);
            Spacer();
        HStack
            {
                Text("Credits:");
                Text(String(Score));
            };
            Spacer();
        HStack
            {   Spacer();
                Image(RandName)
                    .resizable()
                    .aspectRatio(contentMode: .fit);
                    
             
                Image(SecondImage)
                    .resizable()
                    .aspectRatio(contentMode:.fit);
                    
             
               
                Image(ThirdImage)
                    .resizable()
                    .aspectRatio(contentMode:.fit);
                Spacer();
            };
            Spacer();
            
            Button(action:
                    { let a=Int.random(in: 1...3);
                let b=Int.random(in:1...3);
                let c=Int.random(in:1...3);
                RandName="image" + String(a);
                SecondImage="image"+String(b);
                ThirdImage="image" + String(c);
                if ((a==b) && (a==c))
                {Score=Score+40;
                }
                else
                {
                    Score=Score-5;
                }
                }, label:
                    {Text("Spin").padding()
                    .padding([.leading, .trailing],40)
                    .foregroundColor(Color.white)
                    .background(Color(.systemPink))
                    .cornerRadius(25)
                    .font(.system(size: 18, weight: .bold, design: .default))
            });
            Spacer();
                
                
            
         
        
           
        }
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
