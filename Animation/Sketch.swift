import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var positionX : Int
    var positionY : Int
    var deltaY : Int
    var deltaX : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        positionX = Int.random(in: 0...500)
        positionY = Int.random(in: 0...500)
        
        //set starting change value
        deltaY = 1
        deltaX = 1
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        positionX -= deltaX
        positionY -= deltaY
        print(positionY)
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: positionX, y: positionY), width: 50, height: 50)
        
        //make ball "bounce back" when it touches the borders
        if positionX == 0 || positionX == 500 {
            deltaX = -deltaX
        }
        
        if positionY == 0 || positionY == 500 {
            deltaY = -deltaY
        }
    }
    
}
