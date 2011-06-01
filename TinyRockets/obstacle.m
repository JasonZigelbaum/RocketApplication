//
//  obstacle.m
//  pocketrocketdev
//
//  Created by Jason on 3/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "obstacle.h"


@implementation obstacle
@synthesize size, velocity;

-(id)initWithTexture:(CCTexture2D *)texture rect:(CGRect)rect
{
	if((self == [super initWithTexture:texture rect:rect]))
	{
		[self scheduleUpdate];
    }
	return self;
}
		
-(void)update:(ccTime)dt{
    
}

- (bool)collidesWith:(CCSprite *)obj
{
	// Create two rectangles with CGRectMake, using each sprite's x/y position and width/height
	CGRect ownRect = CGRectMake(self.position.x - (self.contentSize.width / 2), self.position.y - (self.contentSize.height / 2), self.contentSize.width, self.contentSize.height);
	//I think I changed this to be a triangle and I subtracted the width of the base I think (for the ship) but double-check it.
	CGRect otherRect = CGRectMake(obj.position.x - ((obj.contentSize.width / 2) - 5), obj.position.y - ((obj.contentSize.height / 2) - 5), obj.contentSize.height/2,  obj.contentSize.height/2);

	// Feed the results into CGRectIntersectsRect() which tells if the rectangles intersect (obviously)
	return CGRectIntersectsRect(ownRect, otherRect);	
}

@end
