//
//  SetupScreen.swift
//  Viber
//
//  Created by apple on 27/3/2023.
//

import SwiftUI
import CountryPicker

struct SetupScreen: View {
    @State private var phoneNumber: String = ""
    @State private var country: Country? = Country(isoCode: "DZ")
    @State private var showCountryPicker = false
    
    var body: some View {
        VStack{
            Text("Viber Setup")
                .font(.title)
                .foregroundColor(Color("white"))
                .fontWeight(.semibold)
            
            HStack{
                Text("Viber Setup")
                    .font(.headline)
                    .foregroundColor(Color("white"))
                    .padding()
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(Color("lightBlack"))
            
            HStack{
                
                Button {
                    showCountryPicker = true
                } label: {
                    Text(country?.isoCode.getFlag() ?? "")
                        .font(.headline)
                        .foregroundColor(Color("white"))
                }.sheet(isPresented: $showCountryPicker) {
                    CountryPicker(country: $country)
                }.padding()
                
                Divider()
                    .frame(height: 50)
                TextField("Phone Number", text: $phoneNumber)
                    .keyboardType(.numberPad)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(Color("lightBlack"))
            
            
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("darkBlack"))
    }
}

struct SetupScreen_Previews: PreviewProvider {
    static var previews: some View {
        SetupScreen()
    }
}
