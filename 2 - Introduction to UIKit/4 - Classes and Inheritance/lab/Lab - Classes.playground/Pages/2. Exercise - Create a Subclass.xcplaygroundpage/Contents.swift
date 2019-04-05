/*:
 ## Exercise - Create a Subclass
 
 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. Throughout the exercises, you'll create classes to represent different types of spaceships that can be used in the game. The base class `Spaceship` has been provided for you below.
 */
class Spaceship { //BASE CLASS
    var name: String = ""
    var health = 100
    var position = 0
    
    func moveLeft() { //methods
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
    }
}
/*:
 Define a new class `Fighter` that inherits from `Spaceship`. Add a variable property `weapon` that defaults to an empty string and a variable property `remainingFirePower` that defaults to 5.
 */
class Fighter: Spaceship {
    var weapon = ""
    var remainingFirePower = 5
    
    init(weapon: String, remainingFirePower: Int) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
    }
   
        func fire() {
            if remainingFirePower > 0 {
                remainingFirePower -= 1
            } else {
                print("You have no more fire power.")
            }
    }
           }

/*:
 Create a new instance of `Fighter` called `destroyer`. A `Fighter` will be able to shoot incoming objects to avoid colliding with them. After initialization, set `weapon` to "Laser" and `remainingFirePower` to 10. Note that since `Fighter` inherits from `Spaceship`, it also has properties for `name`, `health`, and `position`, and has methods for `moveLeft()`, `moveRight()`, and `wasHit()` even though you did not specifically add them to the declaration of `Fighter`. Knowing that, set `name` to "Destroyer," print `position`, then call `moveRight()` and print `position` again.
 */
var destroyer = Fighter(weapon: "Laser", remainingFirePower: 3)

destroyer.name = "Destroyer" //since Fighter inherits from Spaceship, it also has prop. for name,health, position..and methods moveLeft(), moveRight()...thus can set name to "Destroyer"

print("\(destroyer.name)'s position is at \(destroyer.position)!") //prints name and position
destroyer.moveRight() //moves position 1 to the right
print("\(destroyer.name)'s position is at \(destroyer.position)!")

destroyer.fire()
destroyer.fire()
destroyer.fire()
destroyer.fire()
destroyer.fire()
destroyer.fire()
print(destroyer.remainingFirePower)

/*:
 Try to print `weapon` on `falcon`. Why doesn't this work? Provide your answer in a comment or a print statement below, and remove any code you added that doesn't compile.
 */
//because falcon is not a property or a method of Fighter or Spaceship

/*:
 Add a method to `fighter` called `fire()`. This should check to see if `remainingFirePower` is greater than 0, and if so, should decrement `remainingFirePower` by one. If `remainingFirePower` is not greater than 0, print "You have no more fire power." Call `fire()` on `destroyer` a few times and print `remainingFirePower` after each method call.
 */



//: [Previous](@previous)  |  page 2 of 4  |  [Next: Exercise - Override Methods and Properties](@next)