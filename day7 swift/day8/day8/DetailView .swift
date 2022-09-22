//
//  DetailView .swift
//  day8
//
//  Created by Ali Al-Otaibi on 21/09/2022.
//

import SwiftUI


struct DetailView: View {
    let movie: MovieStruct
    var body: some View {
        ZStack {
            Image(movie.imageName)
                .resizable()
                .scaledToFill()
                .blur(radius: 10)
                .ignoresSafeArea()

            VStack {
                Text(movie.title)
                    .foregroundColor(.white)
                    .bold()
                    .italic()
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                Spacer()
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(movie.cast) { castMember in
                            VStack {
                                Image(castMember.imageName)
                                    .resizable().scaledToFit().clipShape(Circle()).frame(width: 100, height:100).padding()
                                Text(castMember.name)
                            }
                        }
                    }
                    .padding(.horizontal, 100)
                }
            }

        }.foregroundColor(.white)
    }
}

struct DetailView__Previews: PreviewProvider {
    static var previews: some View {
        DetailView(movie: MovieStruct(title: "", imageName: "", cast: []))
    }
}
