//
//  page0VC.h
//  News
//
//  Created by Kwangchiu on 2019/6/12.
//  Copyright © 2019年 Kwangchiu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface page0VC : UIViewController

- (IBAction)goTotestViewController:(id)sender;


struct NewsItem{
    long i;
    UITableViewCell *cell;
};
@end

NS_ASSUME_NONNULL_END
