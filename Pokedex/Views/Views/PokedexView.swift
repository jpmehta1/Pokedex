//
//  SwiftUIView.swift
//  Pokedex
//
//  Created by Jeet P Mehta on 12/10/24.
//

import SwiftUI

struct SwiftUIView: View {
    @StateObject var model = PokemonViewModel()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            //Image
            
            
            VStack(){
                
                
                //Name
                Text("\(model.pokemon?.name)")
                    .bold()
                    .font(.title)
                    .padding(.top,380)
                
                //Species
                Text("Species: Psychic")
                    .bold()
                    .padding()
                
                
                HStack(spacing:130){
                    //Height

                    VStack(spacing: 10){
                        
                        Text("2M")
                            .fontWeight(.medium)
                        
                        Text("Height")
                            .fontWeight(.light)
                            
                    }
                    
                    
                    
                    //Weight
                    VStack(spacing: 10){
            
                        Text("60KG")
                            .fontWeight(.medium)
                        
                        Text("Weight")
                            .fontWeight(.light)
                    }
                }
                .padding(.top,30)
                
        
                
                
                
              
                
                
                //Abilities
                
                
                
                //Type
                
                
                
                //Move
                
                
                
                //Base Experience
                
                
                
                //Held Items
                
                
                
                //
            }
        }
        
        
    }
}

#Preview {
    SwiftUIView()
}
