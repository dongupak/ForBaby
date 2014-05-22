//
//  whoexam1.h
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 6..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "whoexam2.h"

@interface whoexam1 : UIViewController {

	UIButton *answer1;
	UIButton *answer2;
	UIButton *answer3;
	UIImageView *bg;
	UIButton *object1;
	UIButton *object2;
	UIButton *object3;
	UIButton *object4;
	UIButton *object5;
	UIButton *object6;
	
	AVAudioPlayer *resolvesn;
	AVAudioPlayer *whichTruck;
	AVAudioPlayer *whoDog;
	
	
}
@property (nonatomic , retain )IBOutlet UIButton *answer1;
@property (nonatomic , retain )IBOutlet UIButton *answer2;
@property (nonatomic , retain )IBOutlet UIButton *answer3;
@property (nonatomic , retain )IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIButton *object1;
@property (nonatomic, retain) IBOutlet UIButton *object2;
@property (nonatomic, retain) IBOutlet UIButton *object3;
@property (nonatomic, retain) IBOutlet UIButton *object4;
@property (nonatomic, retain) IBOutlet UIButton *object5;
@property (nonatomic, retain) IBOutlet UIButton *object6;

- (IBAction)resolve:(id)sender;
- (IBAction)right:(id)sender;


@end
