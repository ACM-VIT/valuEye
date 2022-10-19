//
//  productSelector.swift
//  valuEye
//
//  Created by Rutwij Patil on 17/10/22.
//
//Selection of Products and Prodcuts and Categories 

import SwiftUI
struct productSelector: View{
    @State private var selectedCategory = 0
    var categories = ["Footwear","Clothing","Books and Magazines", "Cameras and Optics","Electronics", "Kitchen and Home Appliances", "Laptops and Computers", "Digital Electronics", "Mobile Phones and Accesories", "Watches", "Movies and Music", "Fitness and Sports", "Cosmetics and Health", "Perfumes", "Jewellery", "Baby Products and Toys", "Travel"]
    var body: some View{
        NavigationView {
            Form {
                Section {
                    Picker("Select", selection: $selectedCategory){
                        ForEach(0..<17){cat in
                            Text(categories[cat])
                        }
                    }
                }
                Section{
                    Text("Selected Category:")
                    Text(categories[selectedCategory])
                        .padding()
                        .foregroundColor(.white)
                        .frame( maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [.blue, .red, .green]), startPoint: .leading, endPoint: .trailing))
                        .font(.largeTitle)
                        .padding()
                        
                }.navigationTitle("Product Categories")
            }
        }
    }
}
struct productSelector_Previews: PreviewProvider {
    static var previews: some View {
        productSelector()
    }
}
