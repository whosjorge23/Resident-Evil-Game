//
//  StoryView.swift
//  Resident Evil Game
//
//  Created by Giorgio Giannotta on 19/03/23.
//

import SwiftUI

struct StoryView: View {
    @State var story = Story()
    
    var body: some View {
        ZStack {
            VStack {
                Text(story.chapters[story.currentChapter].title)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding()
                
                Image(story.chapters[story.currentChapter].image)
                    .resizable()
                    .scaledToFit()
                Text(story.chapters[story.currentChapter].text)
                    .foregroundColor(Color.white)
                    .padding()
                
                Spacer()
                
                ForEach(story.chapters[story.currentChapter].options, id: \.self.id) { option in
                    Button(action: {
                        story.selectOption(option)
                    }, label: {
                        Text(option.text)
                            .font(.headline)
                            .padding()
                    })
                    .buttonStyle(BorderlessButtonStyle())
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
