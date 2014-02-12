//
//  TKTextLabelsCell.m
//  Created by Giovanni Maggini on 12/02/14
//
/*
 
 tapku || http://github.com/devinross/tapkulibrary
 
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
#import "TKTextLabelsCell.h"

@implementation TKTextLabelsCell


- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
	if(!(self=[super initWithStyle:style reuseIdentifier:reuseIdentifier])) return nil;
    
	self.textLabel.backgroundColor = [UIColor clearColor];
    _field1 = [[UILabel alloc] initWithFrame:CGRectZero];
    _field1.font = [UIFont systemFontOfSize:17.0];
	_field1.backgroundColor = [UIColor clearColor];
	_field1.highlightedTextColor = [UIColor whiteColor];
    _field1.textColor = [UIColor blackColor];
    _field1.adjustsFontSizeToFitWidth = YES;
    _field1.baselineAdjustment = UIBaselineAdjustmentNone;

	[self.contentView addSubview:_field1];
    
    _field2 = [[UILabel alloc] initWithFrame:CGRectZero];
    _field2.font = [UIFont systemFontOfSize:17.0];
	_field2.backgroundColor = [UIColor clearColor];
	_field2.highlightedTextColor = [UIColor whiteColor];
    _field2.textColor = [UIColor lightGrayColor];
    _field2.textAlignment = NSTextAlignmentRight;
    _field2.adjustsFontSizeToFitWidth = YES;
	[self.contentView addSubview:_field2];
	
    return self;
}
- (id) initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
	return [self initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
}

- (void) layoutSubviews {
    [super layoutSubviews];
    
    CGRect r1 = CGRectInset(self.contentView.bounds, 8, 8);
	r1.size = CGSizeMake(80,27);
	_field1.frame = r1;
    
	
	CGRect r2 = CGRectInset(self.contentView.bounds, 8, 8);
	r2.origin.x += self.field1.frame.size.width + 6;
	r2.size.width -= self.field1.frame.size.width + 6;
	_field2.frame = r2;
	
}

@end