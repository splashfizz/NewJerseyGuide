//
//  ContentView.swift
//  L3 Demo
//
//  Created by Ankith Ravindran on 1/31/24.
//

import SwiftUI

struct ContentView: View {
        var body: some View {

            
            ScrollView {
                
                
                ZStack{
                    VStack{
                        
                        
                        VStack(alignment: .leading, spacing: 20.0){
                            Image("download")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .cornerRadius(15)
                            
                            HStack {
                                Text("Mt. Fuji")
                                    .font(.title)
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                VStack{
                                    
                                    HStack{
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.leadinghalf.filled")
                                            .foregroundColor(Color.orange)
                                    }
                                    
                                    Text("(400 Reviews)")
                                }
                                .foregroundColor(.orange)
                                .font(.caption)
                            }
                            HStack{
                                Text("Visit the greatest wonder of Japan!")
                                
                                Spacer()
                                
                                Image(systemName: "bed.double.fill")
                                Image(systemName: "fork.knife")
                            }
                            .foregroundColor(.black)
                            .font(.caption)
                        }
                        .padding()
                        .background(Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(radius: 15))
                        .padding()
                        
                        VStack(alignment: .leading, spacing: 20.0){
                            Image("download")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .cornerRadius(15)
                            
                            HStack {
                                Text("Mt. Fuji")
                                    .font(.title)
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                VStack{
                                    
                                    HStack{
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.leadinghalf.filled")
                                            .foregroundColor(Color.orange)
                                    }
                                    
                                    Text("(400 Reviews)")
                                }
                                .foregroundColor(.orange)
                                .font(.caption)
                            }
                            HStack{
                                Text("Visit the greatest wonder of Japan!")
                                
                                Spacer()
                                
                                Image(systemName: "bed.double.fill")
                                Image(systemName: "fork.knife")
                            }
                            .foregroundColor(.black)
                            .font(.caption)
                        }
                        .padding()
                        .background(Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(radius: 15))
                        .padding()
                        VStack(alignment: .leading, spacing: 20.0){
                            Image("download")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .cornerRadius(15)
                            
                            HStack {
                                Text("Mt. Fuji")
                                    .font(.title)
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                VStack{
                                    
                                    HStack{
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                        Image(systemName: "star.leadinghalf.filled")
                                            .foregroundColor(Color.orange)
                                    }
                                    
                                    Text("(400 Reviews)")
                                }
                                .foregroundColor(.orange)
                                .font(.caption)
                            }
                            HStack{
                                Text("Visit the greatest wonder of Japan!")
                                
                                Spacer()
                                
                                Image(systemName: "bed.double.fill")
                                Image(systemName: "fork.knife")
                            }
                            .foregroundColor(.black)
                            .font(.caption)
                        }
                        .padding()
                        .background(Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(radius: 15))
                        .padding()
                    }
                }
            }
            
            
            
        }
    }
#Preview {
    ContentView()
}
struct HomeView: View {
   let locations = [
       Location(name: "Cape May", image: "capeMayImage", reviews: 4.8),
       Location(name: "Atlantic City Boardwalk", image: "atlanticCityBoardwalkImage", reviews: 4.2),
       Location(name: "Six Flags Great Adventure", image: "sixFlagsGreatAdventureImage", reviews: 4.5),
       Location(name: "Princeton University", image: "princetonUniversityImage", reviews: 4.9),
       Location(name: "Delaware Water Gap National Recreation Area", image: "delawareWaterGapImage", reviews: 4.7),
   ]

   var body: some View {
       ScrollView {
           VStack(spacing: 20) {
               ForEach(locations) { location in
                   LocationRow(location: location)
               }
           }
           .padding()
       }
   }
}

struct LocationRow: View {
   let location: Location

   var body: some View {
       HStack {
           Image(location.image)
               .resizable()
               .frame(width: 100, height: 100)
               .cornerRadius(10)
           VStack(alignment: .leading) {
               Text(location.name)
                   .font(.title2)
               Text("Reviews: \(location.reviews)")
                   .font(.caption)
               Button("See Reviews") {
                   // Implement action to show reviews here
                   print("Show reviews for \(location.name)")
               }
           }
           .padding()
       }
   }
}

struct Location {
   let name: String
   let image: String // Replace with actual image names
   let reviews: Double
}


