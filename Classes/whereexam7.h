//
//  whereexam7.h
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 6..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "whereexam8.h"

@interface whereexam7 : UIViewController {

	UIButton *answer1;
	UIButton *answer2;
	UIButton *answer3;
	UIButton *answer4;
	UIButton *answer5;
	UIButton *answer6;
	UIButton *object1;
	UIButton *object2;
	UIButton *object3;
	UIButton *object4;
	UIButton *object5;
	UIButton *object6;
	UIImageView *image1;
	UIButton *image2;
	UIImageView *image3;
	
	UIImageView *bg;
	
	AVAudioPlayer *resolvesn;
	AVAudioPlayer *rightsn;
	AVAudioPlayer *examwhere;
	AVAudioPlayer *roarsn;
	
}
@property (nonatomic , retain )IBOutlet UIButton *answer1;
@property (nonatomic , retain )IBOutlet UIButton *answer2;
@property (nonatomic , retain )IBOutlet UIButton *answer3;
@property (nonatomic , retain )IBOutlet UIButton *answer4;
@property (nonatomic , retain )IBOutlet UIButton *answer5;
@property (nonatomic , retain )IBOutlet UIButton *answer6;
@property (nonatomic , retain )IBOutlet UIImageView *image1;
@property (nonatomic , retain )IBOutlet UIButton *image2;
@property (nonatomic , retain )IBOutlet UIImageView *image3;
@property (nonatomic , retain )IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIButton *object1;
@property (nonatomic, retain) IBOutlet UIButton *object2;
@property (nonatomic, retain) IBOutlet UIButton *object3;
@property (nonatomic, retain) IBOutlet UIButton *object4;
@property (nonatomic, retain) IBOutlet UIButton *object5;
@property (nonatomic, retain) IBOutlet UIButton *object6;
- (IBAction)wrong:(id)sender;
- (IBAction)right:(id)sender;
- (IBAction)next:(id)sender;

@end