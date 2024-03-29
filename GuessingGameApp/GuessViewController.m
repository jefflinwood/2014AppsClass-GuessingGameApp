//
//  GuessViewController.m
//  GuessingGameApp
//
//  Created by Jeffrey Linwood on 10/14/14.
//  Copyright (c) 2014 Jeff Linwood. All rights reserved.
//

#import "GuessViewController.h"

#import "AnswerViewController.h"

@interface GuessViewController ()
@property (weak, nonatomic) IBOutlet UITextField *yourNumberTextField;

@end

@implementation GuessViewController

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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    AnswerViewController *answerViewController = [segue destinationViewController];
    NSString *numberToGuessText = self.yourNumberTextField.text;
    int numberToGuess = [numberToGuessText intValue];
    answerViewController.numberToGuess = numberToGuess;
}


@end
