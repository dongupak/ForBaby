//
//  shadowexam8.m
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 6..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "shadowexam8.h"


@implementation shadowexam8

@synthesize bg;
@synthesize shadowpho;
@synthesize realpho;
@synthesize resolvebt;
@synthesize rightbt;
@synthesize nextpage;
@synthesize object1;
@synthesize object2;
@synthesize object3;
@synthesize object4;
@synthesize object5;
@synthesize object6;
- (void)viewDidLoad {
	
	nextpage.hidden = YES;
	shadowpho.hidden = NO;
	realpho.hidden = YES;
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"resolve" ofType:@"mp3"];
	NSURL *url1 = [NSURL fileURLWithPath:path1];
	resolvesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
	
	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"ok" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	rightsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	
	NSString *path3 = [[NSBundle mainBundle] pathForResource:@"examShadowjust" ofType:@"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath:path3];
	startsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	
	NSString *path4 = [[NSBundle mainBundle] pathForResource:@"cow" ofType:@"mp3"];
	NSURL *url4 = [NSURL fileURLWithPath:path4];
	roarsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
	
	NSString *path5 = [[NSBundle mainBundle] pathForResource:@"pressPhoto" ofType:@"mp3"];
	NSURL *url5 = [NSURL fileURLWithPath:path5];
	pressPhoto = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
	
	[startsn play];
	
	self.navigationItem.title = @"그림자 놀이 8";
	
	[super viewDidLoad];
}
- (IBAction)wrong:(id)sender{
	[resolvesn play];
	[startsn stop];
	
}
- (IBAction)right:(id)sender{
	nextpage.hidden = NO;
	shadowpho.hidden = YES;
	realpho.hidden = NO;
	
	[pressPhoto play];
	[startsn stop];
	object1.hidden = YES;
	object2.hidden = YES;
	object3.hidden = YES;
	object4.hidden = YES;
	object5.hidden = YES;
	object6.hidden = YES;
	
}
- (IBAction)shoadow:(id)sender{
	[roarsn play];
	
	
}
- (IBAction)real:(id)sender{
	shadowexam9 *nextexam = [[shadowexam9 alloc] init];
	[self.view addSubview:nextexam.view]; 
	[self.navigationController pushViewController:nextexam animated:YES];
	[nextexam release];
	[pressPhoto stop];
	
	
}




- (void)dealloc {
	[bg release];
	[shadowpho release];
	[realpho release];
	[resolvebt release];
	[rightbt release]; 
	[nextpage release];
	[object1 release];
	[object2 release];
	[object3 release];
	[object4 release];
	[object5 release];
	[object6 release];
    [super dealloc];
}


@end
