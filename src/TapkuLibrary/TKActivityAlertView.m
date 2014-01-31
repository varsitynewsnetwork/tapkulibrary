//
//  TKActivityAlertView.m
//  TapkuLibrary
//
//  Created by Giovanni on 1/31/14.
//
//
/*
 
 tapku || https://github.com/devinross/tapkulibrary
 
 Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without
 restriction, including without limitation the rights to use,
 copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following
 conditions:
 
 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 OTHER DEALINGS IN THE SOFTWARE.
 
 */

#import "TKActivityAlertView.h"
#import "UIView+TKCategory.h"
#import "TKGlobal.h"

@interface TKActivityAlertView ()

@end

@implementation TKActivityAlertView

- (id) initWithActivityTitle:(NSString*)txt style:(UIActivityIndicatorViewStyle)style{
	if(!(self=[super init])) return nil;
	self.label.text = txt;
    self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:style];
	return self;
}

- (void) loadView{
	[super loadView];
	[self.alertView addSubview:self.activityIndicator];
	[self.alertView addSubview:self.label];
	self.alertView.frame = CGRectMake(0, 0, CGRectGetWidth(self.alertView.frame), CGRectGetMaxY(self.activityIndicator.frame) + 14);
    [_activityIndicator startAnimating];
}

#pragma mark Properties
- (UIActivityIndicatorView *) activityIndicator{
	_activityIndicator.frame = CGRectMakeWithSize(37, 42, _activityIndicator.frame.size);
    [_activityIndicator setCenter:CGPointMake((self.alertView.frame.size.width/2 ) - (_activityIndicator.frame.size.width/2), 42)];
    return _activityIndicator;
}
- (UILabel*) label{
	if(_label) return _label;
	
	_label = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, 245, 25)];
	_label.textAlignment = NSTextAlignmentCenter;
	_label.backgroundColor = [UIColor clearColor];
	_label.textColor = [UIColor blackColor];
	_label.font = [UIFont boldSystemFontOfSize:16];
	return _label;
}

- (void)start
{
    [_activityIndicator startAnimating];
}

- (void)stop
{
    [_activityIndicator stopAnimating];
}

@end
