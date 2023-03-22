//
//  Story.swift
//  Resident Evil Game
//
//  Created by Giorgio Giannotta on 19/03/23.
//

import Foundation

struct Story {
    var currentChapter: Int = 0
    
    let chapters = [
        Chapter(
            id: 0,
            title: "The Mansion",
            image: "TheMansion0",
            text: "You are a member of the special forces unit, S.T.A.R.S. Your team has been sent to investigate a series of bizarre murders in Raccoon City. You arrive at a mansion on the outskirts of the city and soon discover that something is very wrong.",
            options: [
                Option(
                    text: "Investigate the mansion",
                    nextChapter: 1
                ),
                Option(
                    text: "Call for backup",
                    nextChapter: 2
                )
            ]
        ),
        Chapter(
            id: 1,
            title: "The Zombies",
            image: "TheZombies1",
            text: "As you investigate the mansion, you encounter a group of zombies. They are slow and clumsy, but deadly. What do you do?",
            options: [
                Option(
                    text: "Fight the zombies",
                    nextChapter: 3
                ),
                Option(
                    text: "Run away",
                    nextChapter: 4
                )
            ]
        ),
        Chapter(
            id: 2,
            title: "The Helicopter",
            image: "TheHelicopter2",
            text: "You call for backup, but before they arrive, you hear the sound of a helicopter crashing nearby. What do you do?",
            options: [
                Option(
                    text: "Investigate the crash site",
                    nextChapter: 5
                ),
                Option(
                    text: "Wait for backup",
                    nextChapter: 6
                )
            ]
        ),
        Chapter(
            id: 3,
            title: "The Safe Room",
            image: "TheSafeRoom3",
            text: "You fight the zombies and manage to find a safe room. Inside, you find some ammunition and a first aid spray. What do you do?",
            options: [
                Option(
                    text: "Use the first aid spray",
                    nextChapter: 7
                ),
                Option(
                    text: "Save the ammunition",
                    nextChapter: 8
                )
            ]
        ),
        Chapter(
            id: 4,
            title: "Game Over",
            image: "GameOver4",
            text: "You try to run away, but the zombies catch up to you and kill you. Game over.",
            options: [
                Option(
                text: "Try Again",
                nextChapter: 0
                ),
            ]
        ),
        Chapter(
            id: 5,
            title: "The Tyrant", image: "GameOver4",
            text: "You investigate the crash site and find a Tyrant. It is a huge, powerful creature that seems to be invulnerable. What do you do?",
            options: [
                Option(
                    text: "Fight the Tyrant",
                    nextChapter: 9
                ),
                Option(
                    text: "Run away",
                    nextChapter: 10
                )
            ]
        ),
        Chapter(
            id: 6,
            title: "Game Over", image: "GameOver4",
            text: "You wait for backup, but it never arrives. The zombies eventually find and kill you. Game over.",
            options: [
                Option(
                text: "Try Again",
                nextChapter: 0
                ),
            ]
        ),
        Chapter(
            id: 7,
            title: "The Final Battle", image: "GameOver4",
            text: "You use the first aid spray and continue your investigation. Eventually, you discover the source of the outbreak and face the final boss. Can you defeat it?",
            options: [
                Option(
                    text: "Fight the final boss",
                    nextChapter: 11
                ),
                Option(
                    text: "Escape and call for help",
                    nextChapter: 12
                )
            ]
        ),
        Chapter(
            id: 8,
            title: "Game Over", image: "GameOver4",
            text: "You save the ammunition, but you eventually run out and the zombies overwhelm you. Game over.",
            options: [
                Option(
                text: "Try Again",
                nextChapter: 0
                ),
            ]
        ),
        Chapter(
            id: 9,
            title: "The End?", image: "GameOver4",
            text: "You fight the Tyrant, but it seems unstoppable. Just when all seems lost, a familiar face appears and helps you defeat it. Congratulations, you've beaten the game!",
            options: [
                Option(
                text: "Try Again",
                nextChapter: 0
                ),
            ]
        ),
        Chapter(
            id: 10,
            title: "Game Over", image: "GameOver4",
            text: "You try to run away, but the Tyrant catches up to you and kills you. Game over.",
            options: [
                Option(
                text: "Try Again",
                nextChapter: 0
                ),
            ]
        ),
        Chapter(
            id: 11,
            title: "The True End", image: "GameOver4",
            text: "You fight the final boss and emerge victorious. You call for backup and help arrives to clean up the mess. Congratulations, you've beaten the game!",
            options: [
                Option(
                text: "Try Again",
                nextChapter: 0
                ),
            ]
        ),
        Chapter(
            id: 12,
            title: "The Bad End", image: "GameOver4",
            text: "You try to escape, but the final boss catches up to you and kills you. The outbreak continues unchecked and the world is doomed. Game over.",
            options: [
                Option(
                text: "Try Again",
                nextChapter: 0
                ),
            ]
        )
    ]
    
    mutating func selectOption(_ option: Option) {
        currentChapter = option.nextChapter
    }
}

struct Chapter {
    let id: Int
    let title: String
    let image: String
    let text: String
    let options: [Option]
}

struct Option {
    let id = UUID()
    let text: String
    let nextChapter: Int
}
