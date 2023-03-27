//
//  WelcomeScreen.swift
//  Viber
//
//  Created by apple on 27/3/2023.
//

import SwiftUI

struct WelcomeScreen: View {
    let headerDimension: CGFloat = 80
    var body: some View {
            VStack{
                HStack{
                    Image("header")
                        .resizable()
                        .frame(width: headerDimension + 40,height: headerDimension)
                    Spacer()
                }
                
                
                Image("welcome")
                    .resizable()
                    .frame(width: 350, height: 300)
                
                Text("Welcome to Viber")
                    .foregroundColor(Color("white"))
                    .font(.largeTitle)
                    .padding(.vertical)
                    
                
                Text("Free messages and calls - with end-to-end encryption")
                    .foregroundColor(Color("white"))
                    .font(.callout)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                CustomButton(text: "Start Now")
                
                Text("Read our Privacy Policy")
                    .foregroundColor(Color("white"))
                    .font(.footnote)
                    .padding(.vertical)
                
                Text("By tapping \"Start Now\" you agree to our Terms & Policies")
                    .foregroundColor(Color("white"))
                    .font(.footnote)
                
                Text("©2010-2022 Viber Media S. a r. l.")
                    .foregroundColor(Color("lightGrey"))
                    .font(.caption)
                    .padding(.vertical)
                
            }.frame(maxWidth: .infinity,maxHeight: .infinity)
            .padding()
            .background(Color("darkBlack"))
            
            
        
        
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
