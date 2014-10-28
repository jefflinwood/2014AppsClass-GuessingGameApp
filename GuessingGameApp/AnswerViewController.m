//
//  AnswerViewController.m
//  GuessingGameApp
//
//  Created by Jeffrey Linwood on 10/14/14.
//  Copyright (c) 2014 Jeff Linwood. All rights reserved.
//

#import "AnswerViewController.h"

@interface AnswerViewController ()
@property (weak, nonatomic) IBOutlet UILabel *feedbackLabel;
@property (weak, nonatomic) IBOutlet UITextField *yourGuessTextField;
- (IBAction)guess:(id)sender;

@end

@implementation AnswerViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guess:(id)sender {
    NSString *yourGuessText = self.yourGuessTextField.text;
    int yourGuess = [yourGuessText intValue];
    if (yourGuess == self.numberToGuess) {
        self.feedbackLabel.text = @"You guessed right!";
        self.feedbackLabel.textColor = [UIColor greenColor];
    } else if (yourGuess > self.numberToGuess) {
        self.feedbackLabel.text = @"You guessed too high!";
        self.feedbackLabel.textColor = [UIColor redColor];
    } else {
        //your guess is lower than self.numberToGuess
        self.feedbackLabel.text = @"You guessed too low!";
        self.feedbackLabel.textColor = [UIColor redColor];
    }
 }
@end
