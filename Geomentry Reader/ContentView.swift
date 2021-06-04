//
//  ContentView.swift
//  Geomentry Reader
//
//  Created by Abhinav krishna on 04/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 0.0) {
                GeometryReader{ geo in
                    Rectangle()
                        .frame(width: geo.size.width/5, height: geo.size.height , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .onTapGesture {
                            print("Global x: \(geo.frame(in: .global).minX) , y: \(geo.frame(in: .global).minY)")
                            print("Local x: \(geo.frame(in: .local).minX) , y: \(geo.frame(in: .local).minY)")
                        }
                }//.padding([.top, .leading], 30.0)
                //.offset(x: 30, y: 30)
            
                GeometryReader { geo in
                    Rectangle()
                        .frame(width: geo.size.width/5, height: geo.size.height , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .onTapGesture {
                            print("Global x: \(geo.frame(in: .global).minX) , y: \(geo.frame(in: .global).minY)")
                            print("Local x: \(geo.frame(in: .local).minX) , y: \(geo.frame(in: .local).minY)")
                        }
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                }
            
            
                
            }
            
      
                
            
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
