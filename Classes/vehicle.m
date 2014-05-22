//
//  vehicle.m
//  EducationBaby
//
//  Created by 51310-06 창원대학교 on 10. 10. 31..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "vehicle.h"


@implementation vehicle

@synthesize bg;
@synthesize airplanebt;
@synthesize helicopterbt;
@synthesize motorcyclebt;
@synthesize ambulancebt;
@synthesize carbt;
@synthesize busbt;
@synthesize fireEnginebt;
@synthesize bulldozerbt;
@synthesize truckbt;

- (void)viewDidLoad {
	
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"airplane" ofType:@"mp3"];
	NSURL *url1 = [NSURL fileURLWithPath:path1];
	airplanesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
	
	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"helicopter" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	helicoptersn = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	
	NSString *path3 = [[NSBundle mainBundle] pathForResource:@"motorcycle" ofType:@"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath:path3];
	motorcyclesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	
	NSString *path4 = [[NSBundle mainBundle] pathForResource:@"ambulance" ofType:@"mp3"];
	NSURL *url4 = [NSURL fileURLWithPath:path4];
	ambulancesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
	
	NSString *path5 = [[NSBundle mainBundle] pathForResource:@"car" ofType:@"mp3"];
	NSURL *url5 = [NSURL fileURLWithPath:path5];
	carsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
	
	NSString *path6 = [[NSBundle mainBundle] pathForResource:@"bus" ofType:@"mp3"];
	NSURL *url6 = [NSURL fileURLWithPath:path6];
	bussn = [[AVAudioPlayer alloc] initWithContentsOfURL:url6 error:nil];
	
	NSString *path7 = [[NSBundle mainBundle] pathForResource:@"fireEngine" ofType:@"mp3"];
	NSURL *url7 = [NSURL fileURLWithPath:path7];
	fireEnginesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url7 error:nil];
	
	NSString *path8 = [[NSBundle mainBundle] pathForResource:@"bulldozer" ofType:@"mp3"];
	NSURL *url8 = [NSURL fileURLWithPath:path8];
	bulldozersn = [[AVAudioPlayer alloc] initWithContentsOfURL:url8 error:nil];
	
	NSString *path9 = [[NSBundle mainBundle] pathForResource:@"truck" ofType:@"mp3"];
	NSURL *url9 = [NSURL fileURLWithPath:path9];
	trucksn = [[AVAudioPlayer alloc] initWithContentsOfURL:url9 error:nil];
	
	NSString *path10 = [[NSBundle mainBundle] pathForResource:@"vehiclestart" ofType:@"mp3"];
	NSURL *url10 = [NSURL fileURLWithPath:path10];
	vehiclestart = [[AVAudioPlayer alloc] initWithContentsOfURL:url10 error:nil];
	[vehiclestart play];
	
	audios = [[NSArray alloc] initWithObjects: airplanesn,helicoptersn,motorcyclesn
			  ,ambulancesn,carsn,bussn,fireEnginesn,bulldozersn,trucksn, nil];
	btns = [[NSArray alloc] initWithObjects:airplanebt,helicopterbt,motorcyclebt,ambulancebt,carbt
			,busbt,fireEnginebt,bulldozerbt,truckbt,nil];
	
	self.navigationItem.title = @"탈것";
	[super viewDidLoad];
}
-(void)rotation:(id)sender{
	
	UIButton* temp = sender;
	NSLog(@"c%d",[(UIButton*)sender tag]);
	int i =	[temp tag];
	if( i== 0){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDuration:1];
		[temp setTransform:CGAffineTransformRotate(temp.transform, 20.0f)];
		[UIView commitAnimations];
		[(UIButton*)temp setTag:1];
		[self performSelector:@selector(rotation:) 
				   withObject:sender 
				   afterDelay:1];
		[self dontTouch:(UIButton*)sender];
	}else if(i==1){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDuration:1];
		[temp setTransform:CGAffineTransformRotate(temp.transform, -40.0f)];
		[UIView commitAnimations];
		[(UIButton*)temp setTag:2];
		
		[self performSelector:@selector(rotation:) 
				   withObject:sender 
				   afterDelay:1];
		
		
	}else{
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDuration:1];
		[temp setTransform:CGAffineTransformRotate(temp.transform, 20.0f)];
		
		[UIView commitAnimations];
		[temp setTag:0];
		[[(UIButton*)sender titleLabel] setText:@"0"];
		[self performSelector:@selector(dontTouch:) 
				   withObject:sender 
				   afterDelay:1];
	}		
	NSLog(@"d%d",[(UIButton*)sender tag]);
	
}
-(void)dontTouch:(UIButton*)sender{
	if(sender.enabled){
		[sender setEnabled:NO];
	}else {
		[sender setEnabled:YES];
	}
	
}
-(IBAction)allClickEvent:(id)sender{
	AVAudioPlayer *tempSound = [audios objectAtIndex: [btns indexOfObject:sender]];
	[self rotation:sender];
	[tempSound play];
	
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc {
	[airplanebt release];
	[helicopterbt release];
	[motorcyclebt release];
	[ambulancebt release];
	[carbt release];
	[busbt release];
	[fireEnginebt release];
	[bulldozerbt release];
	[truckbt release];
    [super dealloc];
}


@end