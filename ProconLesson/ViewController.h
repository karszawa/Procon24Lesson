//
//  ViewController.h
//  ProconLesson
//
//  Created by Cubic on 2013/10/09.
//  Copyright (c) 2013年 Cubic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSDate *tBegin;
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

- (void) makeImageView:(NSString *)path cgrect:(CGRect)cgrect tag:(int)tag;
- (IBAction)setRandomDices:(id)sender;
- (IBAction)pushStartButton:(id)sender;
- (IBAction)pushStopButton:(id)sender;
- (void) onTimer;

@end

