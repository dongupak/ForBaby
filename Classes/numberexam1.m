//
//  numberexam1.m
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 6..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "numberexam1.h"


@implementation numberexam1

@synthesize bg;
@synthesize object1;
@synthesize objects1;
@synthesize objects2;
@synthesize objects3;
@synthesize objects4;
@synthesize objects5;
@synthesize objects6;
@synthesize objects7;
@synthesize objects8;
@synthesize objects9;
@synthesize objects10;
@synthesize result;


int ab = 0;

- (void)viewDidLoad {
	
	result.hidden = YES;
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"resolve" ofType:@"mp3"];
	NSURL *url1 = [NSURL fileURLWithPath:path1];
	resolvesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
	
	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"ok" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	rightsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	
	NSString *path3 = [[NSBundle mainBundle] pathForResource:@"result1" ofType:@"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath:path3];
	ownsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	
	NSString *path4 = [[NSBundle mainBundle] pathForResource:@"examnumber" ofType:@"mp3"];
	NSURL *url4 = [NSURL fileURLWithPath:path4];
	examnumber = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];

	NSString *path5 = [[NSBundle mainBundle] pathForResource:@"pressnumber" ofType:@"mp3"];
	NSURL *url5 = [NSURL fileURLWithPath:path5];
	pressnumber = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
	//	[startsn play];
	[examnumber play];
	
	
	self.navigationItem.title = @"첫번째 마당";
	
	[super viewDidLoad];
}
- (void)soundPlay {
	if ( ab==0 ) {
		[ownsn play];
	} 

	
}

- (IBAction)wrong:(id)sender{
	[resolvesn play];
}



- (IBAction)right:(id)sender{
	[pressnumber play];

	objects1.hidden = YES;
	objects2.hidden = YES;
	objects3.hidden = YES;
	objects4.hidden = YES;
	objects5.hidden = YES;
	objects6.hidden = YES;
	objects7.hidden = YES;
	objects8.hidden = YES;
	objects9.hidden = YES;
	objects10.hidden = YES;
	object1.hidden = YES;

	result.hidden = NO;
}
- (IBAction)nextpage:(id)sender{
	numberexam2 *nextexam = [[numberexam2 alloc] init];
	[self.navigationController pushViewController:nextexam animated:YES];
	[nextexam release];
	[examnumber play];
}




- (IBAction)hidden1:(id)sender{
	object1.hidden = YES;
	
	[self soundPlay];
	ab+=1;
	
}


- (void)dealloc {
	[bg release];
	[object1 release];

	[objects1 release];
	[objects2 release];
	[objects3 release];
	[objects4 release];
	[objects5 release];
	[objects6 release];
	[objects7 release];
	[objects8 release];
	[objects9 release];
	[objects10 release];
	[result release];

	
    [super dealloc];
}

@end