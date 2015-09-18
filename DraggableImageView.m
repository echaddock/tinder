//
//  DraggableImageView.m
//  tinder
//
//  Created by Liz Chaddock on 9/18/15.
//  Copyright © 2015 Liz Chaddock. All rights reserved.
//

#import "DraggableImageView.h"

@interface DraggableImageView ()
@property CGPoint cardInitialCenter;
@property (strong, nonatomic) IBOutlet UIImageView *contentView;

@end

@implementation DraggableImageView

- (IBAction)dragged:(UIPanGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateBegan) {
        _cardInitialCenter = sender.view.center;
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        CGPoint translation = [sender translationInView:self.superview];
        sender.view.center = CGPointMake(translation.x + _cardInitialCenter.x, translation.y + _cardInitialCenter.y);
    }
    
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupSubviews];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubviews];
    }
    return self;
}

- (void) setupSubviews {
    [self addGestureRecognizer:[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(dragged:)]];
}

@end
