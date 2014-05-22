//
//  numberexam7.h
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 6..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "numberexam8.h"


@interface numberexam7 : UIViewController {

	UIButton *object1;
	UIButton *object2;
	UIButton *object3;
	UIButton *object4;
	UIButton *object5;
	UIButton *object6;
	UIButton *object7;
	UIButton *object8;
	UIButton *object9;
	UIButton *object10;
	UIImageView *bg;
	UIButton *objects1;
	UIButton *objects2;
	UIButton *objects3;
	UIButton *objects4;
	UIButton *objects5;
	UIButton *objects6;
	UIButton *objects7;
	UIButton *objects8;
	UIButton *objects9;
	UIButton *objects10;
	UIButton *result;
	AVAudioPlayer *resolvesn;
	AVAudioPlayer *rightsn;
	AVAudioPlayer *ownsn;
	AVAudioPlayer *twosn;
	AVAudioPlayer *threesn;
	AVAudioPlayer *foursn;
	AVAudioPlayer *fivesn;
	AVAudioPlayer *sixsn;
	AVAudioPlayer *sevensn;
	AVAudioPlayer *eightsn;
	AVAudioPlayer *ninesn;
	AVAudioPlayer *tensn;
	AVAudioPlayer *pressnumber;
	AVAudioPlayer *examnumber;
}
@property (nonatomic, retain) IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIButton *object1;
@property (nonatomic, retain) IBOutlet UIButton *object2;
@property (nonatomic, retain) IBOutlet UIButton *object3;
@property (nonatomic, retain) IBOutlet UIButton *object4;
@property (nonatomic, retain) IBOutlet UIButton *object5;
@property (nonatomic, retain) IBOutlet UIButton *object6;
@property (nonatomic, retain) IBOutlet UIButton *object7;
@property (nonatomic, retain) IBOutlet UIButton *object8;
@property (nonatomic, retain) IBOutlet UIButton *object9;
@property (nonatomic, retain) IBOutlet UIButton *object10;
@property (nonatomic, retain) IBOutlet UIButton *objects1;
@property (nonatomic, retain) IBOutlet UIButton *objects2;
@property (nonatomic, retain) IBOutlet UIButton *objects3;
@property (nonatomic, retain) IBOutlet UIButton *objects4;
@property (nonatomic, retain) IBOutlet UIButton *objects5;
@property (nonatomic, retain) IBOutlet UIButton *objects6;
@property (nonatomic, retain) IBOutlet UIButton *objects7;
@property (nonatomic, retain) IBOutlet UIButton *objects8;
@property (nonatomic, retain) IBOutlet UIButton *objects9;
@property (nonatomic, retain) IBOutlet UIButton *objects10;
@property (nonatomic, retain) IBOutlet UIButton *result;
- (IBAction)wrong:(id)sender;
- (IBAction)right:(id)sender;
- (IBAction)nextpage:(id)sender;

- (IBAction)hidden1:(id)sender;
- (IBAction)hidden2:(id)sender;
- (IBAction)hidden3:(id)sender;
- (IBAction)hidden4:(id)sender;
- (IBAction)hidden5:(id)sender;
- (IBAction)hidden6:(id)sender;
- (IBAction)hidden7:(id)sender;
- (IBAction)hidden8:(id)sender;
- (IBAction)hidden9:(id)sender;
- (IBAction)hidden10:(id)sender;


@end