//
//  ContentView.swift
//  stepper
//
//  Created by noor alotibi on 26/08/1444 AH.
//


import SwiftUI
import StepperView
struct ContentView: View {
    let steps = [ Text("day 1").font(.caption),
                  Text("day 2").font(.caption),
                  Text("day 3").font(.caption),
                  Text("day 4").font(.caption),
                  Text("day 5").font(.caption)]
    
    let indicationTypes = [StepperIndicationType.custom(NumberedCircleView(text: "1")),
                           .custom(NumberedCircleView(text: "2")),
                           .custom(NumberedCircleView(text: "3")),
                           .custom(NumberedCircleView(text: "4")),
                           .custom(NumberedCircleView(text: "5"))]
    
    var body: some View {
        StepperView()
            .addSteps(steps)
            .indicators(indicationTypes)
            .stepIndicatorMode(StepperMode.vertical)
            .spacing(30)
            .lineOptions(StepperLineOptions.custom(1, Colors.blue(.teal).rawValue))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
