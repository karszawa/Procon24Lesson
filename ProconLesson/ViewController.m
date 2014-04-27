//
//  ViewController.m
//  ProconLesson
//
//  Created by Cubic on 2013/10/09.
//  Copyright (c) 2013年 Cubic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

- (void) makeImageView:(NSString *)path cgrect:(CGRect)cgrect tag:(int)tag
{
    UIImageView * image = [[UIImageView alloc] init];
    image.frame = cgrect;
    image.tag = tag;
    image.image = [UIImage imageNamed:path];
    [self.view addSubview:image];
}

- (IBAction)setRandomDices:(id)sender
{
    for(int y = 0; y < 6; y++) {
        for(int x = 0; x < 9; x++) {
            NSString *fileName = [NSString stringWithFormat : @"%d.png", rand() % 8 + 1];
            [self makeImageView:fileName cgrect:CGRectMake(62+100*x, 25+100*y, 100, 100) tag:(y*10+x)];
        }
    }
}

- (IBAction)pushStartButton:(id)sender
{
    tBegin = [NSDate date];
 
    if([timer isValid]) [timer invalidate];
    timer = [NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector:@selector(onTimer:) userInfo:_timerLabel repeats:YES];
}

- (IBAction)pushStopButton:(id)sender
{
    [timer invalidate];
}

- (void)onTimer:(NSTimer*)timer
{
    NSDate *now = [NSDate date];
    float interval = [now timeIntervalSinceDate:tBegin];
    int min = (int)(interval) / 60;
    int sec = (int)(interval) % 60;
    int unp = (int)(interval * 100) % 100;
    
    _timerLabel.text = [NSString stringWithFormat:@"%d:%02d:%02d", min, sec, unp];
}

@end

