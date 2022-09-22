//
//  ContentView.swift
//  section2
//
//  Created by Ali Al-Otaibi on 22/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var clicked = true
    let who = 1
    var body: some View {
        VStack {
            HStack {
                
                
                Image(systemName: "plus.circle")
                    .imageScale(.large)
                    .foregroundColor(.blue).cornerRadius(10).clipShape(Rectangle()).onTapGesture {
                        withAnimation (.linear(duration: 0.3)) {
                            clicked.toggle()
                            
                        }
                    }
                
                    
                Text("اختر تخصصك").font(.largeTitle).bold()
                    
                
                
            }
            .padding()
            
            VStack {
                if clicked {
                    Text("هندسه الكبيوتر").background(.blue).foregroundColor(.white).font(.title).clipShape(Rectangle()).cornerRadius(7)
                    
                    
                    Text("علوم الكمبوتر").background(.blue).foregroundColor(.white).font(.title).clipShape(Rectangle()).cornerRadius(10)
                    Text("تخصص اخر").background(.blue).foregroundColor(.white).font(.title).clipShape(Rectangle()).cornerRadius(10)
                }
                Spacer()
                Text("التحصص:").bold().italic().font(.largeTitle)
                if clicked{
                    
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

