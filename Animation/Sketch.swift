import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // AN offset from a starting point
    var offset : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        offset = 250
        
       //get rid of borders
        canvas.drawShapesWithBorders = false
        
       
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
       
        
        // Draw the ellipses that move right
        
        // Change position
        offset += 1
        
        //change colour
        canvas.fillColor = Color.green
        canvas.drawEllipse(at: Point(x: offset, y: 250), width: 50, height: 50)
        
        //change colour
        canvas.fillColor = Color.purple
        canvas.drawEllipse(at: Point(x: offset, y: 450), width: 50, height: 50)
       
        //change colour
        canvas.fillColor = Color.black
        canvas.drawEllipse(at: Point(x: offset, y: 50), width: 50, height: 50)
        
        //draw the ellipses that move left
        
//        // Change position
//         x -= 1
         
         //change colour
         canvas.fillColor = Color.orange
         canvas.drawEllipse(at: Point(x: offset, y: 350), width: 50, height: 50)
         
         //change colour
         canvas.fillColor = Color.blue
         canvas.drawEllipse(at: Point(x: offset, y: 150), width: 50, height: 50)
        
        
    }
    
    
}
