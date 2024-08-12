//
//  ProgrammerList.swift
//  ListView
//
//  Created by sw on 22/01/24.
//

import SwiftUI

struct DetailView: View {
    var programmer: Programmer;
    @Binding var favorite: Bool;
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
            Text(programmer.name)
                .font(.title)
                
            if favorite {
                Button {
                    favorite.toggle()
                }label: {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                }
            } else {
                Button {
                    favorite.toggle()
                }label: {
                    Image(systemName: "star")
                        .foregroundColor(Color.black)
                }
            }
        }
    }
}

struct ProgrammerList_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(programmer: Programmer(id:3, name: "Jose Manzo", languages: "Python", favorite: false), favorite: .constant(false))
    }
}
