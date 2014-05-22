//
//  EducationBabyAppDelegate.h
//  EducationBaby
//
//  Created by 51310-06 창원대학교 on 10. 10. 31..
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@class EducationBabyViewController;

@interface EducationBabyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EducationBabyViewController *viewController;
	IBOutlet UITabBarController *rootController;
	UIButton *backImg;
	UIButton *backIcon;
	AVAudioPlayer *player;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EducationBabyViewController *viewController;
@property (nonatomic, retain) UITabBarController *rootController;



@end

