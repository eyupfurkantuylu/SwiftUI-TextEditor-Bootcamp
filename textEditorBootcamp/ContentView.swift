//
//  ContentView.swift
//  textEditorBootcamp
//
//  Created by Eyüp Furkan Tüylü on 8.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var textEditorText: String = "Varsayılan metin"
    @State var savedText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                Text(savedText)
                TextEditor(text: $textEditorText)
                    .frame(height: 300)
                    .colorMultiply(.gray)
                    .cornerRadius(15)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(15)
                }
                Spacer()

                
                
                
                
            }
            .padding()
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
