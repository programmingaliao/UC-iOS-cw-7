//
//  ContentView.swift
//  day8
//
//  Created by Ali Al-Otaibi on 21/09/2022.
//

import SwiftUI


struct MovieStruct: Identifiable {
    let id = UUID()
    let title:String
    let imageName:String
    let cast: [CastMember]
    
}


struct  CastMember: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}





struct ContentView: View {
    //var movies = ["batman", "terminator", "socialnetwork"]
    
    var movies = [
        
        MovieStruct(title: " The Batman", imageName: "batman", cast: [CastMember(name: "Robert Pattinson", imageName: "rpattinson")]),
        
        MovieStruct(title: "Terminator 2 ", imageName: "terminator2", cast:[CastMember(name: "Arnold Schwarzenegger" , imageName: "arnold")]),
        MovieStruct(title: "The Social Network", imageName: "socialnetwork", cast: [CastMember(name: "Jesse Eisenberg", imageName: "jesse")])
        
    ]
    
    
    var body: some View {
        NavigationView {
            
            List (movies) { movie in
                NavigationLink(destination: DetailView(movie: movie)) {
                    VStack {
                        Image(movie.imageName).resizable().scaledToFit().clipShape(Circle()).frame(width: 150, height: 150)
                        Text(movie.title).bold().italic()
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Struct ContentView "
//HStack{
// Image(systemName: "plus")
// if tapped  {
//  Text("Add Item")
//     }
//  }
//.font(.largeTitle)
//.padding()
//.background(.yellow)
//.cornerRadius(20)
//.onTapGesture {
//       withAnimation
// tapped.toggle()
//
