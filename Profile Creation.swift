import SwiftUI

struct FormCreationView: View {
    @State var fullName:String;
    @State var weightClass:Class;
    @State var heightClass:HeightClass;
    @State var bmiClass:BmiClass;
    @EnvironmentObject var gameState:GameState;
    
     
    
    
     
    
    enum BmiClass:String, CaseIterable, Identifiable {
        case Obese
        case Overweight
        case Healthy
        case Underweight
        var id:Self{self}
    }
    enum Class:String, CaseIterable, Identifiable {
        case Small
        case Medium
        case Heavy
        
        var id:Self {self}
    }
    enum HeightClass:String, CaseIterable, Identifiable {
        case Tall
        case Average
        case Short
        
        var id:Self {self}
    }

    init() {
        weightClass = Class.Small;
        heightClass = HeightClass.Average;
        bmiClass = BmiClass.Overweight;
        fullName = "";
    }
    
    
    var body: some View {
        ZStack{
        Color.gray
        VStack {
            
            GeometryReader {geo in
                VStack {
                    Image("newbarbell").resizable().frame(width: geo.size.width * 0.9, height: 64);
                    CustomDivider(color:.yellow, height: 8);
                    
                    HStack {
                        
                        VStack(spacing: 15){
                        Text("Weight Form")
                                .fontWeight(.semibold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                            
                            
                        }
                        .padding(.horizontal,125)
                        .padding(.vertical,25)
                        .background{
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.ultraThinMaterial)
                        }
                    }
                    VStack{
                    CustomDivider(color:.black, height: 8);
                    }
                    HStack {
                        Text("Name")
                        TextField("Enter your name:", text: $fullName);
                    }
                    VStack{
                    CustomDivider(color:.black, height: 8);
                    }
                    HStack{
                        Text("Weight Class:")
                        Picker(selection: $weightClass, label: Text("Weight Class")) {
                            ForEach(Class.allCases) {casename in
                                Text(casename.rawValue.capitalized);
                            }
                        }.pickerStyle(.segmented)
                    }
                    HStack{
                        Text("Height Class:")
                        Picker(selection: $heightClass, label: Text("Height Class")) {
                            ForEach(HeightClass.allCases) {casename in
                                Text(casename.rawValue.capitalized);
                            }
                        }.pickerStyle(.segmented)
                    }
                    HStack{
                        Text("BMI Class:")
                        Picker(selection: $bmiClass, label: Text("BMI Class")) {
                            ForEach(BmiClass.allCases) {casename in
                                Text(casename.rawValue.capitalized);
                            }
                        }.pickerStyle(.segmented)
                    }
                    VStack{
                        CustomDivider(color:.black, height: 8);
                        Spacer()
                    HStack {
                        Button("Accept"){
                            gameState.fullName = fullName;
                            switch weightClass {
                            case .Heavy:
                                gameState.weightClass = "Heavy";
                            case .Medium:
                                gameState.weightClass = "Medium";
                            case .Small:
                                gameState.weightClass = "Small";
                            }
                            switch heightClass {
                            case .Tall:
                            gameState.heightClass = "Tall";
                            case .Average:
                            gameState.heightClass = "Average";
                            case .Short:
                            gameState.heightClass = "Short";
                            }
                            //switch bmiClass {
                            //case 
                            gameState.fullName = fullName;
                            gameState.viewState = 1;
                            }
                        }
                    }
                }
            }
        }
    }
    }
}
struct CustomDivider: View {
    var color:Color = .red;
    var height:CGFloat = 8;
    init(color:Color, height:CGFloat){
        self.color = color;
        self.height = height;
    }
    var body: some View {
        Rectangle().fill(color).frame(height: height).edgesIgnoringSafeArea(.horizontal)
    }
}

