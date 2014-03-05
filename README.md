TKBPopoverContext
=================

 TKBPopoverContext is a stack-based manager of UIPopoverController instances. It presents popover and pushes it to the stack, and pops it when it is dismissed. Poped UIPopoverController instance will be dealloced to prevent it from leaking. When inconsistency in stack occurs, it dismisses all the popovers being presented.
