//
//  AppDelegate.h
//  DragDropImageView
//
//  Created by huangqizai on 2018/6/28.
//  Copyright © 2018年 FYCK. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DragDropImageView.h"

@interface AppDelegate : NSObject <NSApplicationDelegate,DragDropViewDelegate>

@property (nonatomic, strong) DragDropImageView *drapDropImageView;

@end

