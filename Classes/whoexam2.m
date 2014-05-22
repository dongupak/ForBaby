//
//  whoexam2.m
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 6..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "whoexam2.h"


@implementation whoexam2


@synthesize answer1;
@synthesize answer2;
@synthesize answer3;
@synthesize object1;
@synthesize object2;
@synthesize object3;
@synthesize object4;
@synthesize object5;
@synthesize object6;
@synthesize bg;




- (void)viewDidLoad {
	
	
	
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"resolve" ofType:@"mp3"];
	NSURL *url1 = [NSURL fileURLWithPath:path1];
	resolvesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
	
	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"whoTiger" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	whoTiger = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	

	
	self.navigationItem.title = @"두번째 마당";
	
	[super viewDidLoad];
}


- (IBAction)resolve:(id)sender{
	[resolvesn play];
	
}

- (IBAction)right:(id)sender{
	[whoTiger play];
	whoexam3 *nextexam = [[whoexam3 alloc] init];
	[self.navigationController pushViewController:nextexam animated:YES];
	[nextexam release];
	object1.hidden = YES;
	object2.hidden = YES;
	object3.hidden = YES;
	object4.hidden = YES;
	object5.hidden = YES;
	object6.hidden = YES;
	
}


- (void)dealloc {
	
	[answer1 release];
	[answer2 release];
	[answer3 release];
	[object1 release];
	[object2 release];
	[object3 release];
	[object4 release];
	[object5 release];
	[object6 release];
	[bg release];
    [super dealloc];
}


@end
