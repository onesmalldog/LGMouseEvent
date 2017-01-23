//
//  LGMouseEvent.m
//  DTENShare
//
//  Created by 东途 on 2016/12/6.
//  Copyright © 2016年 displayten. All rights reserved.
//

#import "LGMouseEvent.h"
//#import <Carbon/Carbon.h>


@implementation LGMouseEvent
+ (void)mouseDoubleClickWithPoint:(CGPoint)point {
    [self mouseTouchWithPoint:point];
    CGEventRef ref = CGEventCreateMouseEvent(NULL, kCGEventLeftMouseDown, point, kCGMouseButtonLeft);
    CGEventSetIntegerValueField(ref, kCGMouseEventClickState, 2);
    
    CGEventPost(kCGSessionEventTap, ref);
    
    CGEventSetType(ref, kCGEventLeftMouseUp);
    CGEventPost(kCGSessionEventTap, ref);
    
//    CGEventSetType(ref, kCGEventLeftMouseDown);
//    CGEventPost(kCGSessionEventTap, ref);
    
//    CGEventSetType(ref, kCGEventLeftMouseUp);
//    CGEventPost(kCGSessionEventTap, ref);
}
+ (void)mouseRightTouchWithPoint:(CGPoint)point {
    
    CGEventRef ref = CGEventCreateMouseEvent(NULL, kCGEventRightMouseDown, point, kCGMouseButtonRight);
    CGEventPost(kCGSessionEventTap, ref);
    
    CGEventSetType(ref, kCGEventRightMouseUp);
    CGEventPost(kCGSessionEventTap, ref);
}
+ (void)mouseTouchWithPoint:(CGPoint)point {
    
    CGEventRef ref = CGEventCreateMouseEvent(NULL, kCGEventLeftMouseDown, point, kCGMouseButtonLeft);
    CGEventSetIntegerValueField(ref, kCGMouseEventClickState, 1);
    CGEventPost(kCGSessionEventTap, ref);
    
    CGEventSetType(ref, kCGEventLeftMouseUp);
    CGEventPost(kCGSessionEventTap, ref);
}
+ (void)mouseTouchDownWithPoint:(CGPoint)point {
    
    CGEventRef ref = CGEventCreateMouseEvent(NULL, kCGEventLeftMouseDown, point, kCGMouseButtonLeft);
    CGEventPost(kCGSessionEventTap, ref);
}
+ (void)mouseTouchUpWithPoint:(CGPoint)point {
    
    CGEventRef ref = CGEventCreateMouseEvent(NULL, kCGEventLeftMouseUp, point, kCGMouseButtonLeft);
    CGEventPost(kCGSessionEventTap, ref);
}

+ (void)mouseDragWithPoint:(CGPoint)point  {
    
    CGEventRef ref = CGEventCreateMouseEvent(NULL, kCGEventLeftMouseDragged, point, kCGMouseButtonLeft);
    CGEventPost(kCGSessionEventTap, ref);
}


@end
