//
//  exam.m
//  EducationBaby
//
//  Created by LeeGiChul on 10. 11. 6..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "exam.h"


@implementation exam

- (void)viewDidLoad {
    [super viewDidLoad];
	self.navigationItem.title = @"문제를 선택 하여 주세요";
}


- (IBAction)Gotoshadow{
	shadowexam1 *exam1 = [[shadowexam1 alloc] init]; 
	[self.view addSubview:exam1.view]; 
	[self.navigationController pushViewController:exam1 animated:YES];
	[exam1 release];
}
- (IBAction)Gotonumber{
	numberexam1 *exam2 = [[numberexam1 alloc] init];
    [self.view addSubview:exam2.view]; 
	[self.navigationController pushViewController:exam2 animated:YES];
	[exam2 release];
}
- (IBAction)Gotowho{
	whoexam1 *exam3 = [[whoexam1 alloc] init];
    [self.view addSubview:exam3.view]; 
	[self.navigationController pushViewController:exam3 animated:YES];
	[exam3 release];
}
- (IBAction)Gotowhere{
	whereexam1 *exam4 = [[whereexam1 alloc] init];
	[self.view addSubview:exam4.view]; 
	[self.navigationController pushViewController:exam4 animated:YES];
	[exam4 release];
}

- (IBAction)Gotowhere1{
	whereexam7 *exam5 = [[whereexam7 alloc] init];
	[self.view addSubview:exam5.view]; 
	[self.navigationController pushViewController:exam5 animated:YES];
	[exam5 release];
}
- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
