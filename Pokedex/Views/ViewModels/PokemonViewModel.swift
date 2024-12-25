//
//  Pokemon.swift
//  Pokedex
//
//  Created by Jeet P Mehta on 12/10/24.
//

import Foundation

class PokemonViewModel: ObservableObject {
    @Published var pokemon: Pokemon?
    
    init() {
        fetchPokemonData()
    }
    
    func fetchPokemonData() {
        let urlstring = "https://pokeapi.co/api/v2/pokemon/ditto"
        guard let URL =  URL(string:urlstring)else{
            return
        }
        URLSession.shared.dataTask(with:URL){(data,response, error) in
            //handle errors first
            if let error = error{
                print(error.localizedDescription)
                return
            }
            if let response = response as? HTTPURLResponse{
                print(response.statusCode)
            }
            
            guard let data = data else{
                return
            }
            do{
                //need to decode the data into something readable
                //decoder
                let decoder = JSONDecoder()
                //decode
                let pokemonOne = try decoder.decode(Pokemon.self, from: data)
                print(pokemonOne.id,pokemonOne.name)
       }
            catch{
                
                
            }
        }
                .resume()
    }
    
    
    
    
}
