//
//  GameScene.swift
//  SceneEditorCookBook
//
//  Created by Randall Clayborn on 5/14/16.
//  Copyright (c) 2016 claybear39. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var EndlessBackgroundLabel: SKLabelNode?
    var platformsAndCollectablesLabel: SKLabelNode?
    var SpawningEnemiesLabel: SKLabelNode?
    var ParallaxLabel: SKLabelNode?
    var HighScoreDisplayLabel: SKLabelNode?
    var AnimatedCharacterLabel: SKLabelNode?
    
    override func didMoveToView(view: SKView) {
        
        EndlessBackgroundLabel = self.childNodeWithName("EndlessBackgroundLabel") as? SKLabelNode!
        platformsAndCollectablesLabel = self.childNodeWithName("PlatformsAndCollectablesLabel") as? SKLabelNode!
        SpawningEnemiesLabel = self.childNodeWithName("SpawningEnemiesLabel") as? SKLabelNode!
        ParallaxLabel = self.childNodeWithName("ParallaxLabel") as? SKLabelNode!
        HighScoreDisplayLabel = self.childNodeWithName("HighScoreDisplayLabel") as? SKLabelNode!
        AnimatedCharacterLabel = self.childNodeWithName("AnimatedCharacterLabel") as? SKLabelNode!
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch: UITouch = touches.first!
        let touchLocation = touch.locationInNode(self)
        
        if(CGRectContainsPoint(EndlessBackgroundLabel!.frame, touchLocation)){
            EndlessBackgroundLabel?.fontColor = SKColor.blackColor()
            // print("EndlessBackgroundScene")
            let transition = SKTransition.revealWithDirection(SKTransitionDirection.Down, duration: 1.0)
            let scene = EndlessBackgroundScene(fileNamed: "EndlessBackgroundScene")
            scene!.scaleMode = SKSceneScaleMode.AspectFill
            view?.presentScene(scene!, transition: transition)
            
        }
        
        if(CGRectContainsPoint(platformsAndCollectablesLabel!.frame, touchLocation)){
            platformsAndCollectablesLabel?.fontColor = SKColor.blackColor()
            // print("PlatformsAndCollectablesScene")
            let transition = SKTransition.revealWithDirection(SKTransitionDirection.Down, duration: 1.0)
            let scene = PlatformsAndCollectablesScene(fileNamed: "PlatformsAndCollectablesScene")
            scene!.scaleMode = SKSceneScaleMode.AspectFill
            view?.presentScene(scene!, transition: transition)
            
        }
        
        if(CGRectContainsPoint(SpawningEnemiesLabel!.frame, touchLocation)){
            SpawningEnemiesLabel?.fontColor = SKColor.blackColor()
            print("Spawning Enemies")
            let transition = SKTransition.revealWithDirection(SKTransitionDirection.Down, duration: 1.0)
            let scene = SpawningEnemies(fileNamed: "SpawningEnemies")
            scene!.scaleMode = SKSceneScaleMode.AspectFill
            view?.presentScene(scene!, transition: transition)
            
        }
        
        if(CGRectContainsPoint(ParallaxLabel!.frame, touchLocation)){
            ParallaxLabel?.fontColor = SKColor.blackColor()
            print("Spawning Enemies")
            let transition = SKTransition.revealWithDirection(SKTransitionDirection.Down, duration: 1.0)
            let scene = Parallax(fileNamed: "Parallax")
            scene!.scaleMode = SKSceneScaleMode.AspectFill
            view?.presentScene(scene!, transition: transition)
            
        }
        
        if(CGRectContainsPoint(HighScoreDisplayLabel!.frame, touchLocation)){
            HighScoreDisplayLabel?.fontColor = SKColor.blackColor()
            print("High Score Display")
            let transition = SKTransition.revealWithDirection(SKTransitionDirection.Down, duration: 1.0)
            let scene = HighScoreDisplay(fileNamed: "HighScoreDisplay")
            scene!.scaleMode = SKSceneScaleMode.AspectFill
            view?.presentScene(scene!, transition: transition)
            
        }
        
        if(CGRectContainsPoint(AnimatedCharacterLabel!.frame, touchLocation)){
            AnimatedCharacterLabel?.fontColor = SKColor.blackColor()
            print("High Score Display")
            let transition = SKTransition.revealWithDirection(SKTransitionDirection.Down, duration: 1.0)
            let scene = AnimatedCharacter(fileNamed: "AnimatedCharacter")
            scene!.scaleMode = SKSceneScaleMode.AspectFill
            view?.presentScene(scene!, transition: transition)
        }
        
    }
}
