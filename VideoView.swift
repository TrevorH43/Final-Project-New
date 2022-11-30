import SwiftUI
import AVKit

struct VideoView: View {
    
    @EnvironmentObject var gameState:GameState;
    var body: some View{
       // let videoURL:URL = URL(fileURLWithPath: Bundle.main.path(forResource: "TheDeadlift", ofType: "mov")!)
        ZStack{
        Color.gray
            GeometryReader {geo in
                VStack {
                    Image("newbarbell").resizable().frame(width: geo.size.width * 0.9, height: 64);
                    CustomDivider(color:.yellow, height: 8);
          //  VideoPlayer(player: AVPlayer(url:videoURL)).frame(height:250)
          //  .frame(alignment: .top)
                    ScrollView(.vertical) {
                    VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "deadlift2", withExtension: "mp4")!))
                        .frame(height: 200)
                    
                    VStack{
                        Text("Deadlift")
                            .foregroundColor(.black)
                            .background(.white.opacity(0.7))
                    }
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "hangclean", withExtension: "mp4")!))
                            .frame(height: 200)
                    VStack{
                        Text("Hang Clean")
                            .foregroundColor(.black)
                            .background(.white.opacity(0.7))
                    }
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "squat", withExtension: "mp4")!))
                            .frame(height: 200)
                    VStack{
                        Text("Squat")
                            .foregroundColor(.black)
                            .background(.white.opacity(0.7))
                    }
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "benchpress", withExtension: "mp4")!))
                            .frame(height: 200)
                    VStack{
                        Text("Bench Press")
                            .foregroundColor(.black)
                            .background(.white.opacity(0.7))
                    }
                    
                }
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
