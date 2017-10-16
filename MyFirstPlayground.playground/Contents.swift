class Player: CustomStringConvertible {
    var name: String
    var lives: Int
    var bonus: Int
    
    var description: String {
        return "Player \(self.name) has a score of \(self.score) and \(self.lives) remaining."
    }
    
    
    var score: Int {
        return (lives * 100) + (bonus * 1000)
    }
    
    init (name: String) {
        self.name = name
        self.lives = 5
        self.bonus = 0
    }
}

let p1 = Player(name: "George")
let p2 = Player(name: "Micky")



print(p1)
print(p2)


class Movie {
    var title: String?
    
    init (title: String?) {
        self.title = title
    }
    
    func getMovieTitle() -> String {
        if let title = title {
            return title
        }
        return "no title"
    }
}

var movie = Movie(title: "Star Wars")
print("Movie called \(movie.getMovieTitle())")
