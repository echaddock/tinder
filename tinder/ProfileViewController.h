//
//  ProfileViewController.h
//  tinder
//
//  Created by Liz Chaddock on 9/18/15.
//  Copyright © 2015 Liz Chaddock. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController <UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (strong, nonatomic) UIImage *profileImage;

@end
