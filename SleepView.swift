//
//  SleepView.swift
//  Final ProjectNEW
//
//  Created by Trevor J. Hattendorf on 11/30/22.
//

import SwiftUI

struct SleepView: View {
    init() {
        sleep1 = "";
        sleep2 = "";
        sleep3 = "";
        sleep4 = "";
        sleep5 = "";
    }
@EnvironmentObject var gameState:GameState;
    @State var sleep1:String;
    @State var sleep2:String;
    @State var sleep3:String;
    @State var sleep4:String;
    @State var sleep5:String;
    var body: some View {
        ZStack{
            Color.gray
        GeometryReader {geo in
            VStack {
                Image("newbarbell").resizable().frame(width: geo.size.width * 0.9, height: 64);
                CustomDivider(color:.yellow, height: 8);
                
                Text("Log Sleep Here")
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
                    TextField("First night sleep", text: $sleep1);
                    Text("[2]")
                    TextField("Second night sleep", text: $sleep2);
                    Text("[3]")
                    TextField("Third night sleep", text: $sleep3);
                    Text("[4]")
                    TextField("Fourth night sleep", text: $sleep4);
                    Text("[5]")
                    TextField("Fifth night sleep", text: $sleep5);
                }
                Spacer()
                CustomDivider(color:.black, height: 8);
                    VStack{
                        Button("Confirm"){
                            
                        }
                    }
                CustomDivider(color:.black, height: 8);
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
                    Button("|Sleep Log|"){
                        gameState.viewState = 5;
                        }
                    }
                }
            }
        }
    }
}
    
