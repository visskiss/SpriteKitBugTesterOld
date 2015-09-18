# SpriteKitBugTester
There is an iOS 9 bug in Sprite Kit.  

When you add a node inside a block, the parent is nil and touches are no longer transferred to parent nodes.  

This is extremely annoying.  Say you want to remove a node, add it to a different parent, and then later, 
you would like to add remove it from the new parent and add to the old parent.  You would put this later
action in a block.  But it won't work in iOS nine.  

This will detect that bug.

It will not fix that bug, but you can at least know when it is present and work around it.


Instructions:

This is an unmodified "New Sprite Kit Game".  You add the SpriteKitBugTester swift class to your project 
and make sure you have a "launch image" and a blank.png image.  If you don't have these, it won't particularly 
matter, but you will get a notice and a big red X will temporarily flash while the test is carried out.

The only file I modified in the "new sprite kit game" is GameViewController to make the test present the actual game scene as a completion block.

Enjoy.
