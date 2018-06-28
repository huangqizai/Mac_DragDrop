//
//  DragDropImageView.h
//  kinema_Mac
//
//  Created by huangqizai on 2018/6/4.
//  Copyright © 2018年 FYCK. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@protocol DragDropViewDelegate;

@interface DragDropImageView : NSImageView
@property (assign) IBOutlet id<DragDropViewDelegate> delegate;
@end

@protocol DragDropViewDelegate <NSObject>
-(void)dragDropViewFileList:(NSArray*)fileList;
@end
