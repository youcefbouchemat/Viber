//
//  CustomButton.swift
//  Viber
//
//  Created by apple on 27/3/2023.
//

import SwiftUI

struct CustomButton: View {
    let text: String
    var body: some View {
        Button {
            
        } label: {
            Text(text)
                .foregroundColor(Color("white"))
                .fontWeight(.bold)
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical)
        .background(Color("purple"))
        .cornerRadius(30)
                    .overlay(RoundedRectangle(cornerRadius: 30)
                        .stroke(lineWidth: 1).foregroundColor(Color("purple")))

    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text: "Start Now")
    }
}
