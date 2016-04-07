//
//  Dog.h
//  ObjectiveC
//
//  Created by HackerU on 07/04/2016.
//  Copyright © 2016 Ofer Raviv. All rights reserved.
//

#ifndef Dog_h
#define Dog_h

#import <Foundation/Foundation.h>

@interface Dog:NSObject

-(void)bark;
-(void)setAge:(int)age;
-(void)setWeight:(double)weight;
-(void)setName:(NSString*)n;

-(int)age;
-(double)weight;

@end


#endif /* Dog_h */
