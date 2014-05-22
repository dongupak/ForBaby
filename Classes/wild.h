//
//  wild.h
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 5..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface wild : UIViewController {

	UIImageView *bg;
	
	UIButton *birdbt;
	UIButton *korallabt;
	UIButton *camelaonbt;
	UIButton *rhinocerosbt;
	UIButton *elephantbt;
	UIButton *tigerbt;
	UIButton *lionbt;
	UIButton *hippobt;
	
	AVAudioPlayer *birdsn;
	AVAudioPlayer *korallasn;
	AVAudioPlayer *camelaonsn;
	AVAudioPlayer *rhinocerossn;
	AVAudioPlayer *elephantsn;
	AVAudioPlayer *tigersn;
	AVAudioPlayer *lionsn;
	AVAudioPlayer *hipposn;

	NSArray * audios;
	NSArray * btns;
	NSTimer * rTimer;
	int	rFlog;
}

//-(EducationBabyAppDelegate *)appDelegate;

@property (nonatomic, retain) IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIButton *birdbt;
@property (nonatomic, retain) IBOutlet UIButton *korallabt;
@property (nonatomic, retain) IBOutlet UIButton *camelaonbt;
@property (nonatomic, retain) IBOutlet UIButton *rhinocerosbt;
@property (nonatomic, retain) IBOutlet UIButton *elephantbt;
@property (nonatomic, retain) IBOutlet UIButton *tigerbt;
@property (nonatomic, retain) IBOutlet UIButton *lionbt;
@property (nonatomic, retain) IBOutlet UIButton *hippobt;

-(IBAction)allClickEvent:(id)sender;
-(void)rotation:(id)sender;
-(void)dontTouch:(UIButton*)sender;


@end