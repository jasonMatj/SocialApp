//
//  SCPostDetailViewController.m
//  SocialApp
//
//  Created by matianju on 8/24/17.
//  Copyright © 2017 TianjuMa. All rights reserved.
//

#import "SCPostDetailViewController.h"
#import "SCPost.h"

@interface SCPostDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextView *postView;
@property (strong, nonatomic) SCPost *post;

@end

@implementation SCPostDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    if (self.postView) {
        self.postView.text = self.post.message;
    }
}

- (void)setupUI
{
    self.title = NSLocalizedString(@"Detail", nil);
}

- (void)viewDidLayoutSubviews {
    [self.postView setContentOffset:CGPointZero animated:NO];
}

- (void)loadDetailViewWithPost:(SCPost *)post
{
    self.post = post;
}

@end
