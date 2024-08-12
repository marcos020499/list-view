import SwiftUI

struct RowView: View {
    var programmer: Programmer
    var body: some View {
        HStack {
            Image(systemName: "person")
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
            VStack {
                Text(programmer.name).font(.system(size: 20))
                Text(programmer.languages).font(.system(size: 15))
            }
            Spacer()
            if(programmer.favorite) {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: .center)
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id:3, name: "Jose Manzo", languages: "Python", favorite: true))
    }
}
