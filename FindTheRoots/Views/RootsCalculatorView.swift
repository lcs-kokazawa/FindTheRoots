//
//  RootsCalculatorView.swift
//  FindTheRoots
//
//  Created by Kiho Okazawa on 2023-01-24.
//

import SwiftUI

struct RootsCalculatorView: View {
    //MARK: Stored properties
    @State var a : Double = 1.0
    @State var b : Double = 0.6
    @State var c : Double = 8.0
    
    //MARK: Computed properties
    
    //the result, possibilities are:
    //1.Discriminant is negative, no real roots
    //2. Discriminant is zero, so two equal real roots
    //3. Discriminant is positive, so teo different real roots
    var result: String {
        
        let discriminant = b * b - 4 * a * c
        
        // Check for negative discriminant (meaning no solutions)
        if discriminant < 0 {
            return "No real roots"
        } else {
            let x1 = (b * -1 - discriminant.squareRoot() ) / (2 * a)
            let x2 = (b * -1 + discriminant.squareRoot() ) / (2 * a)
            
            return "x ≈ \(x1.formatted(.number.precision(.fractionLength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
    }
    var body: some View {
        VStack {
            Image("formula1")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
            
            Image("formula2")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
            
            HStack {
                VStack {
                    Text("a: \(a.formatted(.number.precision(.fractionLength(1))))")
                        .font(Font.custom("Times New Roman",
                                          size: 24.0,
                                          relativeTo: .body))
                    Slider(value: $a, in: -50...50,step: 0.1, label: {
                        Text("a")
                        
                    })
                    
                }
                VStack {
                    Text("b: \(b.formatted(.number.precision(.fractionLength(1))))")
                        .font(Font.custom("Times New Roman",
                                          size: 24.0,
                                          relativeTo: .body))
                    Slider(value: $b, in: -50...50,step: 0.1, label: {
                        Text("b")
                        
                    })
                    
                }
                VStack {
                    Text("c: \(c.formatted(.number.precision(.fractionLength(1))))")
                        .font(Font.custom("Times New Roman",
                                          size: 24.0,
                                          relativeTo: .body))
                    Slider(value: $c, in: -50...50,step: 0.1, label: {
                        Text("c")
                        
                    })
                    
                }
            }
            .padding()
            .navigationTitle("Find the Roots")
        }
    }
    
    struct RootsCalculatorView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                RootsCalculatorView()
            }
            
        }
    }
}
