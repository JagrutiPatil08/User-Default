//
//  ViewController.m
//  JPUserDefault
//
//  Created by Student P_02 on 28/09/16.
//  Copyright © 2016 Jagruti Patil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self fetchData];
}

 
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)fetchData {
    
    NSString *message = [[NSUserDefaults standardUserDefaults]valueForKey:@"message"];
    
    if (message != nil && message.length > 0) {
        self.messageLabe.text = message;
    }
    
}

-(void)save {
    
    self.messageLabe.text = self.inputField.text;
    
    NSUserDefaults *myUserDefault = [NSUserDefaults standardUserDefaults];
    
    [myUserDefault setValue:self.inputField.text forKey:@"message"];
    [myUserDefault synchronize];
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    [self save];
    return YES;
}



@end
