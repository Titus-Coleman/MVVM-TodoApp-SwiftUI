//
//  NoItemsView.swift
//  TodoList_Basic
//
//  Created by Titus Coleman on 7/21/23.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20){
                Text("Welp, your todos are MIA!")
                    .font(.title)
                    .fontWeight(.light)
                Text("I thought you were a productive person?! Add some todos!")
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add a something")
                            .padding(animate ? 30: 50)
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 50)
                            .background(animate ? Color.cyan : Color.accentColor)
                            .cornerRadius(10)
                    })
                .shadow(
                    color: (animate ? Color.cyan : Color.accentColor).opacity(0.3),
                    radius: 10,
                    y: animate ? 30 : 20
                    )
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation(){
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                withAnimation(
                    Animation
                        .easeInOut(duration: 2.0)
                        .repeatForever()
            
                ){
                    animate.toggle()
                }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            NoItemsView()
                .navigationTitle("Title")
        }
        
    }
}
