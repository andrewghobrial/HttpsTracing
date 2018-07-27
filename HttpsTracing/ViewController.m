//
//  ViewController.m
//  HttpsTracing
//
//  Created by Andrew Ghobrial on 7/25/18.
//  Copyright © 2018 Andrew Ghobrial. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)hmm:(id)sender {
    NSLog(@"what's up andrew");
    NSURL *url = [NSURL URLWithString: @"https://example.com/"];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration: [NSURLSessionConfiguration ephemeralSessionConfiguration]];
    NSURLSessionDataTask *dataTask = [defaultSession dataTaskWithURL: url
                                                    completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                                if(error == nil)
                                                                {
//                                                                    NSString *string = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
//                                                                    NSLog(@"Data = %@",string);
                                                                    NSLog(@"Data = %ld", [(NSHTTPURLResponse*) response statusCode]);
                                                                }
    
                                                        }
                                            ];
    [dataTask  resume];
    NSLog(@"%@",[NSThread callStackSymbols]);
    }

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
