import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var y : Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 1
        y = 0
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 0.5
        y = pow((1/8 * (x - 250)), 2)
        y = -(y - 500)
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
        
    }
    
}
