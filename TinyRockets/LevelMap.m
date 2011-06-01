//
//  LevelMap.m
//  pocketrocketdev
//
//  Created by Jason on 3/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LevelMap.h"
#import "planet.h"
#import "obstacle.h"
#import "GameConfig.h"

@implementation LevelMap
@synthesize planets, obstacles;

-(id)init
{
	if ((self = [super init])) 
	{
		planets = [[NSMutableArray alloc] init];
		obstacles = [[NSMutableArray alloc] init];
	}
	return self;
}

- (void) createObstacleAt:(CGPoint)position withSize:(int)size
{
    
	NSString *imageFile;
	switch (size) 
	{
		case Large:
			imageFile = @"obstacle_large.png";
			break;
		case Medium:
			imageFile = @"obstacle_medium.png";
			break;
		case Small:
			imageFile = @"obstacle_small.png";
			break;
	}
	
	obstacle *a = [obstacle spriteWithFile:imageFile];
	
	a.size = size;
	a.position = position;
	
	[self.obstacles addObject:a];

}

- (void) createPlanetAt:(CGPoint)position withSize:(int)size
{
    
	NSString *imageFile;
	switch (size) 
	{
		case Large:
			imageFile = @"planet_large.png";
			break;
		case Medium:
			imageFile = @"planet_medium.png";
			break;
		case Small:
			imageFile = @"planet_small.png";
			break;
	}
	
	planet *p = [planet spriteWithFile:imageFile];
	
	p.size = size;
	p.position = position;
	
	[self.planets addObject:p];
    
}


- (void) dealloc
{
	[obstacles release];
	[planets release];
	[super dealloc];
}

@end
