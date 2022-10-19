//
//  pricePage.swift
//  valuEye
//
//  Created by Rutwij Patil on 07/10/22.
//
// This file is a View that displays the prices of a certain selected product across multiple websites 
import SwiftUI

struct pricePage: View {
    @State private var tag = 0;
    func defaultCurrency() -> FloatingPointFormatStyle<Double>.Currency {
        return .currency(code: Locale.current.currency?.identifier ?? "INR")
    }
    var body: some View{
        NavigationView{
            List{
                Section{
                    ForEach(1..<11){websiteNumber in
                        HStack{
                            NavigationLink("Website \(websiteNumber)"){
                                ContentView()
                            }
                            Spacer()
                            Text(fetchValue().fetched(websiteNumber), format: defaultCurrency())
                           
                        }
                    }
                    
                }
            }.navigationTitle("Product Values")
        }
    }
}
struct pricePage_Previews: PreviewProvider {
    static var previews: some View {
        pricePage()
    }
}
