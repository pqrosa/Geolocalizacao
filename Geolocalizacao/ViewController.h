//
//  ViewController.h
//  Geolocalizacao
//
//  Created by Sonia Ribeiro on 13/04/13.
//  Copyright (c) 2013 iLearn Educação e Informática Ltda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *latitudeLabel;
@property (strong, nonatomic) IBOutlet UILabel *longitudeLabel;

- (IBAction)tocouBotao:(UIButton *)sender;
- (IBAction)botaoMapa:(id)sender;

@end
