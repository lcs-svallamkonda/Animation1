import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var offset : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        offset = 250
        
        //make shapes have no border
        canvas.drawShapesWithBorders = false
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        offset += 1
        
        // Draw a red ellipse in the middle of the canvas
        canvas.fillColor = .red
        canvas.drawEllipse(at: Point(x: offset, y: offset), width: 50, height: 50)
        
    }
    
}
