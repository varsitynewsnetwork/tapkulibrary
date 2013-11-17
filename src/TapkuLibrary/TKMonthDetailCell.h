//
//  MonthDetailCell.h
//  Demo
//
//  Created by Giovanni on 5/21/13.
//
//

#import <UIKit/UIKit.h>

@interface TKMonthDetailCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *timeLabel;
@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *noEventsLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end

