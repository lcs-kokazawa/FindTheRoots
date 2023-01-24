//
//  ResultView.swift
//  FindTheRoots
//
//  Created by Kiho Okazawa on 2023-01-24.
//

import SwiftUI

struct ResultView: View {
    
    //MARK: Stored properties
    let somePriorResult: Result
    
    //MARK: Computed properties
    var body: some View {
        VStack(spacing: 10) {
            //Input values
            HStack(spacing: 30){
                
            }
            
            Text(somePriorResult.roots)
                .font(Font.custom("Times New Roman",
                                  size: 20.0,
                                     relativeTo: .body))
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 15)
       
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(somePriorResult: resultForPreviews)
    }
}
