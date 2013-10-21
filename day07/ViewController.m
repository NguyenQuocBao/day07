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
    
    //tach tu dua vao mang
    NSArray *array = [strFileContent componentsSeparatedByString:@" "];
    NSMutableArray *mutable = [NSMutableArray arrayWithArray:array];
    
    
    
    
    
    //remove cac tu vo van ra khoi mang
    NSArray *removelist=@[@"an",@"a",@"the"]; //danh sach tu khong quan trong
    
    for (int i=0;i<[removelist count];i++){
      [mutable removeObject: removelist[i]];
    }
    
    
    
    
    // thong ke so lan xuat hien cua cac tu quan trong
    NSArray *specialword=@[@"Syria",@"Arab",@"American"]; //danh sach tu quan trong
    
    
    
    for (int k=0;k<[specialword count];k++){
        [self findSpecilaWordInAnArray:mutable andWord:specialword[k]];
    }
    
    
    
    
    
    
}


-(void) findSpecilaWordInAnArray:(NSMutableArray *)array andWord:(NSString *)word_v{
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
