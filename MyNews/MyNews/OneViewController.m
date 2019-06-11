//
//  OneViewController.m
//  MyNews
//
//  Created by Kwangchiu on 2019/6/11.
//  Copyright © 2019年 Kwangchiu. All rights reserved.
//


#import "OneViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface OneViewController ()

/* 播放器 */
@property (nonatomic, strong) MPMoviePlayerController *player;
- (IBAction)play;

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (MPMoviePlayerController *)player
{
    if (_player == nil) {
        NSURL *url = [NSURL URLWithString:@"http://c.m.163.com/nc/video/home/0-20.html"];
        
        _player = [[MPMoviePlayerController alloc] initWithContentURL:url];
        
        // 设置控制器View所在的位置
        _player.view.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width * 9 / 16);
        
        // 设置播放器的控制模式
        _player.controlStyle = MPMovieControlStyleFullscreen;
        
        [self.view addSubview:self.player.view];
    }
    return _player;
}

- (IBAction)play {
    [self.player play];
}

@end
