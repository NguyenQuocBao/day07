//
//  ViewController.m
//  day07
//
//  Created by Nguyen Bao on 10/20/13.
//  Copyright (c) 2013 Nguyen Quoc Bao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
- (IBAction)btnDemo:(UIButton *)sender {
    
    NSError *error;
    NSString *strFileContent = [NSString stringWithContentsOfFile:[[NSBundle mainBundle]
                                                                   pathForResource: @"putin" ofType: @"txt"] encoding:NSUTF8StringEncoding error:&error];
    
    
    NSArray *yourArray = [strFileContent componentsSeparatedByString:@" "];

    [self findSpecilaWordInAnArray:yourArray andWord:@"Syria"];
    [self findSpecilaWordInAnArray:yourArray andWord:@"Arab"];
    [self findSpecilaWordInAnArray:yourArray andWord:@"Putin"];
    [self findSpecilaWordInAnArray:yourArray andWord:@"American"];
    
    
    
    
    
}


-(void) findSpecilaWordInAnArray:(NSArray *)array andWord:(NSString *)word_v{
    int count = 0;
    for (NSString *word in array) {
        if ([word hasPrefix:word_v]) {
            count++;
           // NSLog(@"%dth match: %@", count, word);
        }
    }
    
    NSLog(@"%@=%d", word_v, count);


}


@end
