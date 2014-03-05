//
//  TKBViewController.m
//  TKBPopoverContext
//
//  Created by Yusuke IWAMA on 3/4/14.
//  Copyright (c) 2014 University of Tsukuba. All rights reserved.
//

#import "TKBViewController.h"
#import "TKBPopoverContext.h"
#import "TKBSampleContentViewController.h"

@interface TKBViewController ()

@property (weak, nonatomic) IBOutlet UIButton *popoverButton;

@end

@implementation TKBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)presentPopover:(id)sender {
    TKBPopoverContext *popoverContext = [TKBPopoverContext sharedPopoverContext];
    [popoverContext presentPopoverWithContentViewController:[[TKBSampleContentViewController alloc] initWithNibName:@"TKBSampleContentViewController" bundle:[NSBundle mainBundle]]
                                                   fromRect:_popoverButton.frame
                                                     inView:self.view
                                   permittedArrowDirections:UIPopoverArrowDirectionAny
                                                   animated:YES];

}

@end
