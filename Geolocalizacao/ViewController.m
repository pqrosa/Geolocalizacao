//
//  ViewController.m
//  Geolocalizacao
//
//  Created by Sonia Ribeiro on 13/04/13.
//  Copyright (c) 2013 iLearn Educação e Informática Ltda. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()

@property (nonatomic, strong) CLLocationManager *locationManager;

@end

@implementation ViewController

@synthesize locationManager;
@synthesize latitudeLabel;
@synthesize longitudeLabel;

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
    
    if (!self.locationManager) {
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
    }
}

- (void)viewDidUnload
{
    [self setLatitudeLabel:nil];
    [self setLongitudeLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Eventos

- (IBAction)tocouBotao:(UIButton *)sender {
    [self.locationManager startUpdatingLocation];
}

- (IBAction)botaoMapa:(id)sender {
    WebViewController *wvc = [[WebViewController alloc] init];
    [self.view addSubview:wvc.view];
}

#pragma mark - CLLocationMaganer Delegate

- (void)locationManager:(CLLocationManager *)manager 
    didUpdateToLocation:(CLLocation *)newLocation 
           fromLocation:(CLLocation *)oldLocation
{
    //NSLog(@">>>>>>>>>> Achou!");
    self.latitudeLabel.text = [NSString stringWithFormat:@"%.5f", newLocation.coordinate.latitude];
    self.longitudeLabel.text = [NSString stringWithFormat:@"%.5f", newLocation.coordinate.longitude];
}

#pragma mark - Privados



@end
