//
//  wild.m
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 5..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "wild.h"


@implementation wild

@synthesize bg;
@synthesize birdbt;
@synthesize korallabt;
@synthesize camelaonbt;
@synthesize rhinocerosbt;
@synthesize elephantbt;
@synthesize tigerbt;
@synthesize lionbt;
@synthesize hippobt;

- (void)viewDidLoad {
	
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"bird" ofType:@"mp3"];
	NSURL *url1 = [NSURL fileURLWithPath:path1];
	birdsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
	
	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"koralla" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	korallasn = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	
	NSString *path3 = [[NSBundle mainBundle] pathForResource:@"camelaon" ofType:@"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath:path3];
	camelaonsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	
	NSString *path4 = [[NSBundle mainBundle] pathForResource:@"rhinoceros" ofType:@"mp3"];
	NSURL *url4 = [NSURL fileURLWithPath:path4];
	rhinocerossn = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
	
	NSString *path5 = [[NSBundle mainBundle] pathForResource:@"elephant" ofType:@"mp3"];
	NSURL *url5 = [NSURL fileURLWithPath:path5];
	elephantsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
	
	NSString *path6 = [[NSBundle mainBundle] pathForResource:@"tiger" ofType:@"mp3"];
	NSURL *url6 = [NSURL fileURLWithPath:path6];
	tigersn = [[AVAudioPlayer alloc] initWithContentsOfURL:url6 error:nil];
	
	NSString *path7 = [[NSBundle mainBundle] pathForResource:@"lion" ofType:@"mp3"];
	NSURL *url7 = [NSURL fileURLWithPath:path7];
	lionsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url7 error:nil];
	
	NSString *path8 = [[NSBundle mainBundle] pathForResource:@"hippo" ofType:@"mp3"];
	NSURL *url8 = [NSURL fileURLWithPath:path8];
	hipposn = [[AVAudioPlayer alloc] initWithContentsOfURL:url8 error:nil];
	
	
	audios = [[NSArray alloc] initWithObjects: birdsn,korallasn,camelaonsn
			  ,rhinocerossn,elephantsn,tigersn,lionsn,hipposn,nil];
	btns = [[NSArray alloc] initWithObjects:birdbt,korallabt,camelaonbt,rhinocerosbt,elephantbt
			,tigerbt,lionbt,hippobt,nil];
	self.navigationItem.title = @"야생동물";

	[super viewDidLoad];
}


-(IBAction)allClickEvent:(id)sender{
	AVAudioPlayer *tempSound = [audios objectAtIndex: [btns indexOfObject:sender]];
	[self rotation:sender];
	[tempSound play];
	
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



- (void)dealloc {
	[birdbt release];
	[korallabt release];
	[camelaonbt release];
	[rhinocerosbt release];
	[elephantbt release];
	[tigerbt release];
	[lionbt release];
	[hippobt release];
    [super dealloc];
}


@end
