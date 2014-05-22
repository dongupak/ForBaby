//
//  farm.h
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 5..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface farm : UIViewController {

	UIImageView *bg;
	UIButton *birdbt;
	UIButton *dogbt;
	UIButton *rabbitbt;
	UIButton *cowbt;
	UIButton *duckbt;
	UIButton *chickbt;
	UIButton *catbt;
	
	AVAudioPlayer *birdsn;
	AVAudioPlayer *dogsn;
	AVAudioPlayer *rabbitsn;
	AVAudioPlayer *cowsn;
	AVAudioPlayer *ducksn;
	AVAudioPlayer *chicksn;
	AVAudioPlayer *catsn;
	
	NSArray * audios;
	NSArray * btns;
	NSTimer * rTimer;
	int	rFlog;
	
}




@property (nonatomic, retain) IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIButton *birdbt;
@property (nonatomic, retain) IBOutlet UIButton *dogbt;
@property (nonatomic, retain) IBOutlet UIButton *rabbitbt;
@property (nonatomic, retain) IBOutlet UIButton *cowbt;
@property (nonatomic, retain) IBOutlet UIButton *duckbt;
@property (nonatomic, retain) IBOutlet UIButton *chickbt;
@property (nonatomic, retain) IBOutlet UIButton *catbt;

-(void)rotation:(id)sender;
-(void)dontTouch:(UIButton*)sender;
-(IBAction)allClickEvent:(id)sender;


@end