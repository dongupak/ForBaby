//
//  whereexam2.m
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 6..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "whereexam2.h"


@implementation whereexam2
@synthesize answer1;
@synthesize answer2;
@synthesize answer3;
@synthesize answer4;
@synthesize answer5;
@synthesize answer6;
@synthesize image1;
@synthesize image2;
@synthesize image3;
@synthesize bg;
@synthesize object1;
@synthesize object2;
@synthesize object3;
@synthesize object4;
@synthesize object5;
@synthesize object6;

- (void)viewDidLoad {
	
	image2.hidden= YES;
	image3.hidden= YES;
	
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"resolve" ofType:@"mp3"];
	NSURL *url1 = [NSURL fileURLWithPath:path1];
	resolvesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
	
	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"pressPhoto" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	rightsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	
	NSString *path3 = [[NSBundle mainBundle] pathForResource:@"examwhere" ofType:@"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath:path3];
	examwhere = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	NSString *path4 = [[NSBundle mainBundle] pathForResource:@"dog" ofType:@"mp3"];
	NSURL *url4 = [NSURL fileURLWithPath:path4];
	roarsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
	
	
	
	

	[examwhere play];
	self.navigationItem.title = @"두번째 마당";
	
	[super viewDidLoad];
}


- (IBAction)wrong:(id)sender{
	[resolvesn play];
	[examwhere stop];
}

- (IBAction)right:(id)sender{
	[rightsn play];
	[examwhere stop];
	image1.hidden= YES;
	image2.hidden= NO;
	image3.hidden= NO;
	object1.hidden = YES;
	object2.hidden = YES;
	object3.hidden = YES;
	object4.hidden = YES;
	object5.hidden = YES;
	object6.hidden = YES;
	

	
	
}
- (IBAction)next:(id)sender{	
	[roarsn play];
	[rightsn stop];
	whereexam3 *nextexam = [[whereexam3 alloc] init];
	[self.navigationController pushViewController:nextexam animated:YES];
	[nextexam release];
}


- (void)dealloc {
	[answer1 release];
	[answer2 release];
	[answer3 release];
	[answer4 release];
	[answer5 release];
	[answer6 release];
	[image1 release];
	[image2 release];
	[image3 release];
	[bg release]; 
	[object1 release];
	[object2 release];
	[object3 release];
	[object4 release];
	[object5 release];
	[object6 release];
    [super dealloc];
}


@end
