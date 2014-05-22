//
//  numberexam4.m
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 6..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "numberexam4.h"


@implementation numberexam4

@synthesize bg;
@synthesize object1;
@synthesize object2;
@synthesize object3;
@synthesize object4;
@synthesize object5;
@synthesize object6;
@synthesize object7;
@synthesize object8;
@synthesize object9;
@synthesize object10;
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
int b= 0;

- (void)viewDidLoad {
	result.hidden = YES;
	
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"resolve" ofType:@"mp3"];
	NSURL *url1 = [NSURL fileURLWithPath:path1];
	resolvesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
	
	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"ok" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	rightsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	
	NSString *path3 = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath:path3];
	ownsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	
	NSString *path4 = [[NSBundle mainBundle] pathForResource:@"2" ofType:@"mp3"];
	NSURL *url4 = [NSURL fileURLWithPath:path4];
	twosn = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
	
	NSString *path5 = [[NSBundle mainBundle] pathForResource:@"3" ofType:@"mp3"];
	NSURL *url5 = [NSURL fileURLWithPath:path5];
	threesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
	
	NSString *path6 = [[NSBundle mainBundle] pathForResource:@"result4" ofType:@"mp3"];
	NSURL *url6 = [NSURL fileURLWithPath:path6];
	foursn = [[AVAudioPlayer alloc] initWithContentsOfURL:url6 error:nil];
	
	NSString *path7 = [[NSBundle mainBundle] pathForResource:@"5" ofType:@"mp3"];
	NSURL *url7 = [NSURL fileURLWithPath:path7];
	fivesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url7 error:nil];
	
	NSString *path8 = [[NSBundle mainBundle] pathForResource:@"6" ofType:@"mp3"];
	NSURL *url8 = [NSURL fileURLWithPath:path8];
	sixsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url8 error:nil];
	
	NSString *path9 = [[NSBundle mainBundle] pathForResource:@"7" ofType:@"mp3"];
	NSURL *url9 = [NSURL fileURLWithPath:path9];
	sevensn = [[AVAudioPlayer alloc] initWithContentsOfURL:url9 error:nil];
	
	NSString *path10 = [[NSBundle mainBundle] pathForResource:@"8" ofType:@"mp3"];
	NSURL *url10 = [NSURL fileURLWithPath:path10];
	eightsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url10 error:nil];
	
	NSString *path11 = [[NSBundle mainBundle] pathForResource:@"9" ofType:@"mp3"];
	NSURL *url11 = [NSURL fileURLWithPath:path11];
	ninesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url11 error:nil];
	
	NSString *path12 = [[NSBundle mainBundle] pathForResource:@"10" ofType:@"mp3"];
	NSURL *url12 = [NSURL fileURLWithPath:path12];
	tensn = [[AVAudioPlayer alloc] initWithContentsOfURL:url12 error:nil];
	
	NSString *path13 = [[NSBundle mainBundle] pathForResource:@"pressnumber" ofType:@"mp3"];
	NSURL *url13 = [NSURL fileURLWithPath:path13];
	pressnumber = [[AVAudioPlayer alloc] initWithContentsOfURL:url13 error:nil];
	
	NSString *path14 = [[NSBundle mainBundle] pathForResource:@"examnumber" ofType:@"mp3"];
	NSURL *url14 = [NSURL fileURLWithPath:path14];
	examnumber = [[AVAudioPlayer alloc] initWithContentsOfURL:url14 error:nil];
	
	//	[startsn play];
	
	self.navigationItem.title = @"네번째 마당";
	
	[super viewDidLoad];
}
- (void)soundPlay {
	if ( b==0 ) {
		[ownsn play];
	} 
	else if ( b == 1) {
		[twosn play];
		
	}
	else if ( b == 2) {
		[threesn play];
		
	}
	else if ( b == 3) {
		[foursn play];
		
	}
	else if ( b == 4) {
		[fivesn play];
		
	}
	else if ( b = 5) {
		[sixsn play];
		
	}
	else if ( b = 6) {
		[sevensn play];
		
	}
	else if ( b = 7) {
		[eightsn play];
		
	}
	else if ( b = 8) {
		[ninesn play];
		
	}
	else if ( b = 9){
		[tensn play];
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
	result.hidden = NO;
	object1.hidden = YES;
	object2.hidden = YES;
	object3.hidden = YES;
	object4.hidden = YES;
	object5.hidden = YES;
	object6.hidden = YES;
	object7.hidden = YES;
	object8.hidden = YES;
	object9.hidden = YES;
	object10.hidden = YES;
}

- (IBAction)nextpage:(id)sender{
	numberexam5 *nextexam = [[numberexam5 alloc] init];
	[self.navigationController pushViewController:nextexam animated:YES];
	[nextexam release];
	[examnumber play];
}



- (IBAction)hidden1:(id)sender{
	object1.hidden = YES;
	
	[self soundPlay];
	b = b+1;
	
}
- (IBAction)hidden2:(id)sender
{
	object2.hidden = YES;
	[self soundPlay];
	b = b+1;
}
- (IBAction)hidden3:(id)sender{
	object3.hidden = YES;
	[self soundPlay];
	b = b+1;
}
- (IBAction)hidden4:(id)sender{
	
	object4.hidden = YES;
	[self soundPlay];
	b = b+1;
}
- (IBAction)hidden5:(id)sender{
	object5.hidden = YES;
	[self soundPlay];
	b = b+1;
}

- (IBAction)hidden6:(id)sender{
	object6.hidden = YES;
	
	[self soundPlay];
	b = b+1;
	
}
- (IBAction)hidden7:(id)sender
{
	object7.hidden = YES;
	[self soundPlay];
	b = b+1;
}
- (IBAction)hidden8:(id)sender{
	object8.hidden = YES;
	[self soundPlay];
	b = b+1;
}
- (IBAction)hidden9:(id)sender{
	
	object9.hidden = YES;
	[self soundPlay];
	b = b+1;
}
- (IBAction)hidden10:(id)sender{
	object10.hidden = YES;
	[self soundPlay];
	b = b+1;
}


- (void)dealloc {
	[bg release];
	[object1 release];
	[object2 release];
	[object3 release];
	[object4 release];
	[object5 release];
	[object6 release];
	[object7 release];
	[object8 release];
	[object9 release];
	[object10 release];
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