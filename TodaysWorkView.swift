import SwiftUI


struct TodaysView: View {
    @EnvironmentObject var gameState:GameState;
    var body: some View {
        ZStack{
        Color.gray
        VStack(spacing: 15){
            GeometryReader {geo in
                VStack {
                    CustomDivider(color:.yellow, height: 12);
                }
                
            VStack {
        Text("Progress Today-- \(Date()).")
                .fontWeight(.semibold)
                .frame(maxWidth:.infinity,alignment: .leading)
                .padding(.horizontal,5)
                .padding(.vertical,5)
                .background{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.ultraThinMaterial)
                    }
                VStack {
                    CustomDivider(color:.yellow, height: 8);
                }
                Text("Steps")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,5)
                    .padding(.vertical,5)
                    .background{
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(.ultraThinMaterial)
                    }
                VStack{
                    Image("steps")
                        .resizable()
                        .frame(height:150)
                
                CustomDivider(color:.yellow, height: 8);
                Text("Last Nights Rest")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,5)
                    .padding(.vertical,5)
                    .background{
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(.ultraThinMaterial)
                }
                VStack{
                    Image("sleepcalc")
                        .resizable()
                        .frame(height:200)
                }
                CustomDivider(color:.yellow, height: 8);
                Text("Meal Plan")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,5)
                    .padding(.vertical,5)
                    .background{
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(.ultraThinMaterial)
                    }
                VStack{
                    Image("mealplan")
                        .resizable()
                        .frame(height:100)
                }
                
                CustomDivider(color:.yellow, height: 8);
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
                            }
                        }
                    }
                }
            }
        }
    }
}
