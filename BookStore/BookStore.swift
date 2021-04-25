//
//  BookStore.swift
//  BookStore
//
//  Created by user190386 on 3/5/21.
//

import Foundation

class BookStore {
    var bookList: [Book] = []
    
    init() {
        var newBook = Book()
        newBook.title = "A Game of Thrones"
        newBook.author = "George R.R. Martin"
        newBook.description = """
            The first volume in Martin's first fantasy saga, A Song of Ice and Fire, combines intrigue, action, romance, and mystery in a family saga. The family is the Starks of Winterfell, a society in crisis due to climatic change that has created decades-long seasons, and a society almost without magic but with human perversity abundant and active.

            """
        newBook.image = "GameOfThrones"
        bookList.append(newBook)
        
        
        newBook = Book()
        newBook.title = "A Clash of Kings"
        newBook.author = "George R.R. Martin"
        newBook.description = """
            A Song of Ice and FIre: Book Two
            """
        newBook.image = "IceAndFire"
        bookList.append(newBook)
        
        
        newBook = Book()
        newBook.title = "Chainsaw Man"
        newBook.author = "Tatsuki Fujimoto"
        newBook.description = """
            When his father died, Denji was stuck with a huge debt and no way to pay it back. Thanks to the help of a Devil dog he saved named Pochita, though, Denji is able to scrape by as a Devil Hunter working for the Yakuza. When the mob betrays Denji and he's killed by a Devil, Pochita sacrifices himself to revive his former master. Now Denji has been reborn as some kind of weird Devil-Human hybrid. He is now Chainsaw Man!
            """
        newBook.image = "ChainsawMan"
        
        bookList.append(newBook)
        
        
        newBook = Book()
        newBook.title = "Firepunch"
        newBook.author = "Tatsuki Fujimoto"
        newBook.description = """
            Agni and Luna—blessed orphans with regenerative powers—are making the best of their situation within a small society of elders; their affection for each other serves as a distraction from the uninhabitable climate. Nevertheless, what little serenity they have is stolen away when army commander Doma passes through and incinerates the village they are seeking refuge in—Agni's beloved sister included. Doma's flames do not extinguish until they have reduced their target to ash, and due to Agni's remarkable regeneration, he remains ablaze and in constant, excruciating pain.
            """
        newBook.image = "FirePunch"
        bookList.append(newBook)

        
        newBook = Book()
        newBook.title = "Attack on Titan"
        newBook.author = "Hajime Isayama"
        newBook.description = """
            "That day, the human race remembered the terror of being dominated by them, and the shame of being held captive in a birdcage..." — Over 100 years ago, a natural predator of humanity appeared: the Titans, giant humanoid but mindless monsters whose sole purpose of existence seemed to be to devour humans. There was an insurmountable gap in power between them and mankind, and as a result, humanity was rapidly exterminated to the brink of extinction. The survivors responded by constructing three concentric walls: Wall Maria, Wall Rose and Wall Sina, which graced them with a century of peace. However, one day a Colossal Titan far larger than any other seen before breached the outer wall, allowing the smaller Titans to invade the human territory and forcing the survivors to retreat to the inner walls. Eren Jaeger, a boy whose mother was eaten during the invasion, vowed to wipe every last Titan off the face of the Earth, and joined the military determined to exact his revenge.
            """
        newBook.image = "AoT"
        bookList.append(newBook)
        
        
        bookList.sort { $0.title < $1.title }
    }
}
