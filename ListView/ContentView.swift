//
//  ContentView.swift
//  ListView
//
//  Created by sw on 22/01/24.
//

import SwiftUI

class ProgrammersModelData: ObservableObject {
    @Published var programmers = [
        Programmer(id:0, name: "Marcos Manzo", languages: "Java", favorite: true),
        Programmer(id:1, name: "Luis Manzo", languages: "Javascript", favorite: true),
        Programmer(id:2, name: "Jose Manzo", languages: "Python", favorite: false)]
}
struct ContentView: View {
    @StateObject var programmersModelData = ProgrammersModelData();
    @State private var isFavorite = false;
    var filterProgrammmers: [Programmer] {
        programmersModelData.programmers.filter {
            programmer in
            return !isFavorite || programmer.favorite
        }
    }
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $isFavorite) {
                    Text("Filter favorites")
                }.padding()
                List {
                    ForEach(filterProgrammmers, id: \.id) {
                        programmer in
                        NavigationLink(destination: DetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite)) {
                            
                            RowView(programmer: programmer)
                            
                        }
                    }
                }
            }
            
            .navigationTitle("Programmers")
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ProgrammersModelData())
    }
}
