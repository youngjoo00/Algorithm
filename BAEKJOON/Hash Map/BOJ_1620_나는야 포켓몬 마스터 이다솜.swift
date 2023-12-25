// BOJ_1620_나는야 포켓몬 마스터 이다솜.swift

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], M = input[1]

var pokemonName: [String:Int] = [:]
var pokemonNumber: [Int:String] = [:]

for i in 1...N {
    let data = readLine()!
    pokemonName.updateValue(i, forKey: data)
    pokemonNumber.updateValue(data, forKey: i)
}

for _ in 0..<M {
    let question = readLine()!
    if let checkedNumber = Int(question) {
        print(pokemonNumber[checkedNumber]!)
    } else {
        print(pokemonName[question]!)
    }
}


//26 5
//Bulbasaur
//Ivysaur
//Venusaur
//Charmander
//Charmeleon
//Charizard
//Squirtle
//Wartortle
//Blastoise
//Caterpie
//Metapod
//Butterfree
//Weedle
//Kakuna
//Beedrill
//Pidgey
//Pidgeotto
//Pidgeot
//Rattata
//Raticate
//Spearow
//Fearow
//Ekans
//Arbok
//Pikachu
//Raichu
//25
//Raichu
//3
//Pidgey
//Kakuna
//
//Pikachu
//26
//Venusaur
//16
//14