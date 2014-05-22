//
//  Animal.h
//  EduwildionBaby
//
//  Created by 51310-06 창원대학교 on 10. 10. 31..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>




@interface Animal : UIViewController {

	
	AVAudioPlayer *farmbt;
	AVAudioPlayer *wildbt;
}

- (IBAction)Gotofarm;
- (IBAction)Gotowild;


@end
