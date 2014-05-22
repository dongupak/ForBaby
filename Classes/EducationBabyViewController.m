//
//  EducationBabyViewController.m
//  EducationBaby
//
//  Created by 51310-06 창원대학교 on 10. 10. 31..
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "EducationBabyViewController.h"

@implementation EducationBabyViewController


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	NSString *path = [[NSBundle mainBundle] pathForResource:@"player" ofType:@"mp3"];
	NSURL *url = [NSURL fileURLWithPath:path];
	NSError *error = [[NSError alloc] init];
	player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
	
	[player play];
	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
