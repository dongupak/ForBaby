//
//  farm.m
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 5..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "farm.h"


@implementation farm

@synthesize bg;
@synthesize birdbt;
@synthesize dogbt;
@synthesize rabbitbt;
@synthesize cowbt;
@synthesize duckbt;
@synthesize chickbt;
@synthesize catbt;
//@synthesize hippobt;

- (void)viewDidLoad {
	
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"bird1" ofType:@"mp3"];
	NSURL *url1 = [NSURL fileURLWithPath:path1];
	birdsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
	
	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"dog" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	dogsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	
	NSString *path3 = [[NSBundle mainBundle] pathForResource:@"rabbit" ofType:@"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath:path3];
	rabbitsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	
	NSString *path4 = [[NSBundle mainBundle] pathForResource:@"cow" ofType:@"mp3"];
	NSURL *url4 = [NSURL fileURLWithPath:path4];
	cowsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
	
	NSString *path5 = [[NSBundle mainBundle] pathForResource:@"duck" ofType:@"mp3"];
	NSURL *url5 = [NSURL fileURLWithPath:path5];
	ducksn = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
	
	NSString *path6 = [[NSBundle mainBundle] pathForResource:@"chick1" ofType:@"mp3"];
	NSURL *url6 = [NSURL fileURLWithPath:path6];
	chicksn = [[AVAudioPlayer alloc] initWithContentsOfURL:url6 error:nil];
	
	NSString *path7 = [[NSBundle mainBundle] pathForResource:@"cat" ofType:@"mp3"];
	NSURL *url7 = [NSURL fileURLWithPath:path7];
	catsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url7 error:nil];
	
	audios = [[NSArray alloc] initWithObjects: birdsn,dogsn,rabbitsn
			  ,cowsn,ducksn,chicksn,catsn,nil];
	btns = [[NSArray alloc] initWithObjects:birdbt,dogbt,rabbitbt,cowbt,duckbt
			,chickbt,catbt,nil];
	
	self.navigationItem.title = @"농장동물";
	
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



- (void)dealloc {
	[birdbt release];
	[dogbt release];
	[rabbitbt release];
	[cowbt release];
	[duckbt release];
	[chickbt release];
	[catbt release];
    [super dealloc];
}


@end