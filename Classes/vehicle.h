//
//  vehicle.h
//  EducationBaby
//
//  Created by 51310-06 창원대학교 on 10. 10. 31..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>>

@interface vehicle : UIViewController {
	
	UIImageView *bg;
	UIButton *airplanebt;
	UIButton *helicopterbt;
	UIButton *motorcyclebt;
	UIButton *ambulancebt;
	UIButton *carbt;
	UIButton *busbt;
	UIButton *fireEnginebt;
	UIButton *bulldozerbt;
	UIButton *truckbt;
	
	AVAudioPlayer *airplanesn;
	AVAudioPlayer *helicoptersn;
	AVAudioPlayer *motorcyclesn;
	AVAudioPlayer *ambulancesn;
	AVAudioPlayer *carsn;
	AVAudioPlayer *bussn;
	AVAudioPlayer *fireEnginesn;
	AVAudioPlayer *bulldozersn;
	AVAudioPlayer *trucksn;
	AVAudioPlayer *vehiclestart;
	
	NSArray * audios;
	NSArray * btns;
	NSTimer * rTimer;
	int	rFlog;
}



@property (nonatomic, retain) IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIButton *airplanebt;
@property (nonatomic, retain) IBOutlet UIButton *helicopterbt;
@property (nonatomic, retain) IBOutlet UIButton *motorcyclebt;
@property (nonatomic, retain) IBOutlet UIButton *ambulancebt;
@property (nonatomic, retain) IBOutlet UIButton *carbt;
@property (nonatomic, retain) IBOutlet UIButton *busbt;
@property (nonatomic, retain) IBOutlet UIButton *fireEnginebt;
@property (nonatomic, retain) IBOutlet UIButton *bulldozerbt;
@property (nonatomic, retain) IBOutlet UIButton *truckbt;


-(void)rotation:(id)sender;
-(void)dontTouch:(UIButton*)sender;
-(IBAction)allClickEvent:(id)sender;
@end