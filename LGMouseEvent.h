//
//  LGMouseEvent.h
//  DTENShare
//
//  Created by 东途 on 2016/12/6.
//  Copyright © 2016年 displayten. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    LGMouseEventModeIncreasing = 1,
    LGMouseEventModeDecreasing = -1,
} LGMouseEventMode;
@interface LGMouseEvent : NSObject
+ (void)mouseTouchWithPoint:(CGPoint)point;
+ (void)mouseTouchDownWithPoint:(CGPoint)point;
+ (void)mouseTouchUpWithPoint:(CGPoint)point;
+ (void)mouseDragWithPoint:(CGPoint)point;

+ (void)mouseDoubleClickWithPoint:(CGPoint)point;

+ (void)mouseRightTouchWithPoint:(CGPoint)point;
@end
