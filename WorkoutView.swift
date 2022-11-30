import SwiftUI

struct WorkoutView: View {
    init() {
        workout1 = "";
        workout2 = "";
        workout3 = "";
        workout4 = "";
        workout5 = "";
    }
    @EnvironmentObject var gameState:GameState;
    @State var workout1:String;
    @State var workout2:String;
    @State var workout3:String;
    @State var workout4:String;
    @State var workout5:String;
    var body: some View{
        ZStack{
            Color.gray
        GeometryReader {geo in
            VStack {
                Image("newbarbell").resizable().frame(width: geo.size.width * 0.9, height: 64);
                CustomDivider(color:.yellow, height: 8);
                
                Text("Log Workouts Here")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,30)
                    .padding(.vertical,20)
                    .background{
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(.ultraThinMaterial)
                    }
                VStack {
                    Text("[1]")
                    TextField("Enter first workout", text: $workout1);
                    Text("[2]")
                    TextField("Enter second workout", text: $workout2);
                    Text("[3]")
                    TextField("Enter third workout", text: $workout3);
                    Text("[4]")
                    TextField("Enter fourth workout", text: $workout4);
                    Text("[5]")
                    TextField("Enter fifth workout", text: $workout5);
                }
                Spacer()
                CustomDivider(color:.black, height: 8);
                    VStack{
                        Button("Confirm"){
                            
                        }
                    }
                CustomDivider(color:.black, height: 8);
                HStack {
                    Button("|Videos|"){
                        gameState.viewState = 2;
                    }
                    Button("|Workout Log|") {
                        gameState.viewState = 3;
                    }
                    Button("|Today's Work|") {
                        gameState.viewState = 4;
                    }
                    Button("|Sleep Log|"){
                        gameState.viewState = 5;
                        }
                }
            }
        }
    }
}
}
