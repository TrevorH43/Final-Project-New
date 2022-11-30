import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var gameState:GameState;
    var body: some View{
        ZStack{
        Color.gray
            GeometryReader {geo in
                VStack {
                    Image("newbarbell").resizable().frame(width: geo.size.width * 0.9, height: 64);
                    CustomDivider(color:.yellow, height: 8);
        VStack{
            Text("You're Profile");
            CustomDivider(color:.yellow, height: 8);
            HStack {
                Text("Full Name: \(gameState.fullName!)")
            }
            CustomDivider(color:.yellow, height: 8);
            HStack {
                Text("Weight Class: \(gameState.weightClass!)")
            }
            CustomDivider(color:.yellow, height: 8);
            HStack {
                Text("Height Class: \(gameState.heightClass!)")
            }
        }
    }
}
        Spacer()
        HStack {
            Button("|Videos|") {
                gameState.viewState = 2;
            }
            Button("|Workout Log|") {
                gameState.viewState = 3;
            }
            Button("|Today's Work|") {
                gameState.viewState = 4;
                }
            }
        }
    }
}



