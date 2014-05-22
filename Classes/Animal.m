//
//  Animal.m
//  EduwildionBaby
//
//  Created by 51310-06 창원대학교 on 10. 10. 31..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Animal.h"
#import "farm.h"
#import "wild.h"

@implementation Animal 
- (void)viewDidLoad {
    [super viewDidLoad];
	
	NSString *path1 = [[NSBundle mainBundle] pathForResource:@"farmbt" ofType:@"mp3"];
	NSURL *url1 = [NSURL fileURLWithPath:path1];
	farmbt = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
	
	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"wildbt" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	wildbt = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];

	
}
- (IBAction)Gotofarm{
	farm *farmview = [[farm alloc] init];
	[self.view addSubview:farmview.view]; 
	[self.navigationController pushViewController:farmview animated:YES];
	[farmbt play];
	[farmview release];


}
- (IBAction)Gotowild{
	wild *wildview = [[wild alloc] init];
	[self.view addSubview:wildview.view]; 
	[self.navigationController pushViewController:wildview animated:YES];
	[wildbt play];
	[wildview release];
}

- (void)viewDidUnload {
    [super viewDidUnload];

}


- (void)dealloc {
    [super dealloc];
}

@end
