//
//  obstacle.h
//  pocketrocketdev
//
//  Created by Jason on 3/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface obstacle : CCSprite {
	int size;
	float velocity;
}

@property int size;
@property float velocity;

-(id)initWithTexture:(CCTexture2D *)texture rect:(CGRect)rect;
-(void)update:(ccTime)dt;
-(bool)collidesWith:(CCSprite*) obj;

@end
