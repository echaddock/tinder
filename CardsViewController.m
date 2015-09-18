//
//  CardsViewController.m
//  tinder
//
//  Created by Liz Chaddock on 9/18/15.
//  Copyright © 2015 Liz Chaddock. All rights reserved.
//

#import "CardsViewController.h"
#import "ProfileViewController.h"

@interface CardsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *draggableImage;

@end

@implementation CardsViewController
- (IBAction)tappedImage:(UITapGestureRecognizer *)sender {
    ProfileViewController *vc = [[ProfileViewController alloc] init];
    UIImageView *imageView = (UIImageView *)sender.view;
    vc.profileImage = imageView.image;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
