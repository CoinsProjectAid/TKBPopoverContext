//
//  TKBSampleContentViewController.m
//  UIPopoverContextSample
//
//  Created by Yusuke Iwama on 2/28/14.
//  Copyright (c) 2014 University of Tsukuba. All rights reserved.
//

#import "TKBSampleContentViewController.h"
#import "TKBPopoverContext.h"

@interface TKBSampleContentViewController ()

@property (weak, nonatomic) IBOutlet UIButton *morePopoverButton;

@end

@implementation TKBSampleContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)presentPopover:(id)sender {
    TKBPopoverContext *popoverContext = [TKBPopoverContext sharedPopoverContext];
    [popoverContext presentPopoverWithContentViewController:[[TKBSampleContentViewController alloc] initWithNibName:@"TKBSampleContentViewController" bundle:[NSBundle mainBundle]]
                                                   fromRect:_morePopoverButton.frame
                                                     inView:self.view
                                   permittedArrowDirections:UIPopoverArrowDirectionAny
                                                   animated:YES];
}

- (IBAction)dismissSelf:(id)sender {
    TKBPopoverContext *popoverContext = [TKBPopoverContext sharedPopoverContext];
    [popoverContext dismissPopoverAnimated:YES];
}

- (IBAction)dismissAll:(id)sender {
    TKBPopoverContext *popoverContext = [TKBPopoverContext sharedPopoverContext];
    [popoverContext dismissAllPopoversAnimated:YES];
}



@end
