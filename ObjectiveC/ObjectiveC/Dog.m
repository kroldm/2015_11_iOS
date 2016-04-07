//
//  Dog.m
//  ObjectiveC
//
//  Created by HackerU on 07/04/2016.
//  Copyright © 2016 Ofer Raviv. All rights reserved.
//

#import "Dog.h"

@implementation Dog
{
    int age;
    double weight;
    NSString *name;
}
-(void)bark
{
    NSLog(@"waf waf %@",name);
}
-(void)setAge:(int)a
{
    age = a;
}
-(void)setWeight:(double)w
{
    weight = w;
}
-(int)age
{
    return age;
}
-(double)weight
{
    return weight;
}
-(void)setName:(NSString*)n
{
    name = n;
}

@end
