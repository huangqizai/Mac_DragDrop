//
//  AppDelegate.m
//  DragDropImageView
//
//  Created by huangqizai on 2018/6/28.
//  Copyright © 2018年 FYCK. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

    NSApplication *app = [NSApplication sharedApplication];
     NSWindow *window = app.mainWindow;
    window.contentView.layer.backgroundColor = [NSColor whiteColor].CGColor;
    [window setFrame:CGRectMake(100, 100, 470, 494) display:NO];
//    [window setStyleMask:0];
    window.movableByWindowBackground =YES;
    [window center];
    
    
    self.drapDropImageView = [[DragDropImageView alloc] init];
    self.drapDropImageView.layer.backgroundColor = [NSColor orangeColor].CGColor;
    self.drapDropImageView.frame = CGRectMake(0, 0, window.frame.size.width, window.frame.size.height);
    self.drapDropImageView.delegate = self;
    [window.contentView addSubview:self.drapDropImageView];

}

/***
 第五步：实现dragdropview的代理函数，如果有数据返回就会触发这个函数
 ***/
-(void)dragDropViewFileList:(NSArray *)fileList{
    //如果数组不存在或为空直接返回不做处理（这种方法应该被广泛的使用，在进行数据处理前应该现判断是否为空。）
    if(!fileList || [fileList count] <= 0)return;
    //在这里我们将遍历这个数字，输出所有的链接，在后台你将会看到所有接受到的文件地址
    for (int n = 0 ; n < [fileList count] ; n++) {
        NSLog(@">>> %@",[fileList objectAtIndex:n]);
    }
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
