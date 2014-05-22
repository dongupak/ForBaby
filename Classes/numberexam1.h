//
//  numberexam1.h
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 6..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "numberexam2.h"

@interface numberexam1 : UIViewController {
	
//	UIButton *cheakbt;
	UIButton *object1;


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
	UIImageView *bg;
	
	AVAudioPlayer *resolvesn;
	AVAudioPlayer *rightsn;
	AVAudioPlayer *examnumber;
	AVAudioPlayer *ownsn;
	AVAudioPlayer *pressnumber;

	
	
}
@property (nonatomic, retain) IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIButton *object1;

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


@end