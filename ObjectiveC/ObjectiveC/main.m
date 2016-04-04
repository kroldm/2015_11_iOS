//
//  main.m
//  ObjectiveC
//
//  Created by HackerU on 04/04/2016.
//  Copyright © 2016 Ofer Raviv. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog:NSObject

-(void)bark;
-(void)setAge:(int)age;
-(void)setWeight:(double)weight;

-(int)age;
-(double)weight;

@end

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



int main(int argc, const char * argv[]) {
    @autoreleasepool {

        int sum;
        sum=50;
        NSLog(@"Hello, World! %i",sum);
        
        Dog *d;
        d = [Dog alloc];
        d = [d init];
        [d setName:@"snoopy"];
        [d bark];
        [d setWeight:12.12];
        [d setAge:30];
        NSLog(@"age is %i",[d age]);
        
        Dog *d1 = [[Dog alloc] init];
        
        int x1=100;
        float x2=100.3;
        double x3=1.3e+14;
        char x4='t';
        NSLog(@"%i %f %e %g %c",x1,x2,x3,x3,x4);
        long int x5;
        long long int x6;
        short int x7;
        unsigned int x8;
    }
    return 0;
}
