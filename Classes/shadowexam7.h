//
//  shadowexam7.h
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 6..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>>
#import "shadowexam8.h"

@interface shadowexam7 : UIViewController {

	
	UIImageView *bg;
	UIButton *shadowpho;
	UIButton *realpho;
	UIButton *resolvebt;
	UIButton *rightbt;
	UIButton *object1;
	UIButton *object2;
	UIButton *object3;
	UIButton *object4;
	UIButton *object5;
	UIButton *object6;
	UILabel *nextpage;
	
	AVAudioPlayer *resolvesn;
	AVAudioPlayer *rightsn;
	AVAudioPlayer *startsn;
	AVAudioPlayer *roarsn;
	AVAudioPlayer *pressPhoto;
	
}


@property (nonatomic, retain) IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIButton *shadowpho;
@property (nonatomic, retain) IBOutlet UIButton *realpho;
@property (nonatomic, retain) IBOutlet UIButton *resolvebt;
@property (nonatomic, retain) IBOutlet UIButton *rightbt;
@property (nonatomic, retain) IBOutlet UILabel *nextpage;
@property (nonatomic, retain) IBOutlet UIButton *object1;
@property (nonatomic, retain) IBOutlet UIButton *object2;
@property (nonatomic, retain) IBOutlet UIButton *object3;
@property (nonatomic, retain) IBOutlet UIButton *object4;
@property (nonatomic, retain) IBOutlet UIButton *object5;
@property (nonatomic, retain) IBOutlet UIButton *object6;
- (IBAction)wrong:(id)sender;
- (IBAction)wrong:(id)sender;
- (IBAction)right:(id)sender;
- (IBAction)shoadow:(id)sender;
- (IBAction)real:(id)sender;

@end