//
//  ViewController.m
//  13-HomeWork-UIView-Animations
//
//  Created by Slava on 08.04.17.
//  Copyright © 2017 Slava. All rights reserved.
//


/*
 
 //
 //  ViewController.m
 //  13-HomeWork-UIView-Animations
 //
 //  Created by Slava on 08.04.17.
 //  Copyright © 2017 Slava. All rights reserved.
 //
 
 #import "ViewController.h"
 
 @interface ViewController ()
 // schoolboy
 @property (strong, nonatomic) NSMutableArray *arrayWithSquare;
 @property (weak, nonatomic) UIView *testViewOne;
 @property (weak, nonatomic) UIView *testViewTwo;
 @property (weak, nonatomic) UIView *testViewThree;
 @property (weak, nonatomic) UIView *testViewFour;
 //@property (weak, nonatomic) IBOutlet UITextView *textOne;
 //@property (weak, nonatomic) IBOutlet UITextView *textTwo;
 //@property (weak, nonatomic) IBOutlet UITextView *textThree;
 //@property (weak, nonatomic) IBOutlet UITextView *textFour;
 // student
 @property (strong, nonatomic) NSMutableArray *arrayStud;
 @property (weak, nonatomic) UIView *studViewOne;
 @property (weak, nonatomic) UIView *studViewTwo;
 @property (weak, nonatomic) UIView *studViewThree;
 @property (weak, nonatomic) UIView *studViewFour;
 
 @end
 
 @implementation ViewController
 
 - (void)viewDidLoad {
 [super viewDidLoad];
 self.arrayWithSquare = [NSMutableArray new];
 CGRect createSquare = CGRectMake(0, 50, 10, 10);
 for (int i = 0; i < 4; i++) {
 UIView *square = [[UIView alloc] initWithFrame:createSquare];
 square.backgroundColor = [self randomColor];
 [self.arrayWithSquare addObject:square];
 [self.view addSubview:square];
 createSquare.origin.y += 120;
 }
 //    for (UIView *squareInArray in self.arrayWithSquare) {
 //        self.testView = squareInArray;
 //    }
 self.testViewOne = [self.arrayWithSquare objectAtIndex:0];
 self.testViewTwo = [self.arrayWithSquare objectAtIndex:1];
 self.testViewThree = [self.arrayWithSquare objectAtIndex:2];
 self.testViewFour = [self.arrayWithSquare objectAtIndex:3];
 
 
 self.arrayStud = [NSMutableArray new];
 CGRect studRect = CGRectMake(0, 0, 100, 100);
 for (int i = 0; i < 4; i++) {
 UIView *studView = [[UIView alloc] initWithFrame:studRect];
 studView.backgroundColor = [UIColor redColor];
 [self.arrayStud addObject:studView];
 }
 self.studViewOne = [self.arrayWithSquare objectAtIndex:0];
 self.studViewTwo = [self.arrayWithSquare objectAtIndex:1];
 self.studViewThree = [self.arrayWithSquare objectAtIndex:2];
 self.studViewFour = [self.arrayWithSquare objectAtIndex:3];
 
 
 }
 
 - (void) moveView:(UIView *) viewOne moveViewTwo:(UIView *) viewTwo moveViewTree:(UIView *) viewThree moveViewFour:(UIView *) viewFour{
 [UIView animateWithDuration:4
 delay:0
 options:UIViewAnimationOptionCurveLinear
 animations:^{
 viewOne.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testViewOne.frame) / 2, 100);
 viewOne.backgroundColor = [self randomColor];
 }
 completion:^(BOOL finished) {
 NSLog(@"animation is ended");
 //                         self.textOne.text = @"I finished";
 }];
 [UIView animateWithDuration:4
 delay:0
 options:UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionAutoreverse
 animations:^{
 viewTwo.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testViewTwo.frame) / 2, 220);
 viewTwo.backgroundColor = [self randomColor];
 }
 completion:^(BOOL finished) {
 NSLog(@"animation is ended");
 //                         self.textTwo.text = @"I finished";
 }];
 [UIView animateWithDuration:4
 delay:0
 options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
 animations:^{
 viewThree.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testViewThree.frame) / 2, 340);
 viewThree.backgroundColor = [self randomColor];
 }
 completion:^(BOOL finished) {
 NSLog(@"animation is ended");
 //                         self.textThree.text = @"I finished";
 }];
 [UIView animateWithDuration:4
 delay:0
 options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat
 animations:^{
 viewFour.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testViewFour.frame) / 2, 460);
 viewFour.backgroundColor = [self randomColor];
 }
 completion:^(BOOL finished) {
 NSLog(@"animation is ended");
 //                         self.textFour.text = @"I finished";
 }];
 }
 
 - (void) viewDidAppear:(BOOL)animated {
 [super viewDidAppear:animated];
 [self moveView:self.testViewOne moveViewTwo:self.testViewTwo moveViewTree:self.testViewThree moveViewFour:self.testViewFour];
 [self moveView:self.studViewOne moveViewTwo:self.studViewTwo moveViewTree:self.studViewThree moveViewFour:self.studViewFour];
 }
 
 - (UIColor *) randomColor {
 CGFloat r = (float)(arc4random() % 256) / 255;
 CGFloat g = (float)(arc4random() % 256) / 255;
 CGFloat b = (float)(arc4random() % 256) / 255;
 UIColor *color = [UIColor colorWithRed:r
 green:g
 blue:b
 alpha:1];
 return color;
 }
 
 - (void)didReceiveMemoryWarning {
 [super didReceiveMemoryWarning];
 // Dispose of any resources that can be recreated.
 }
 
 
 @end

 
 */


#import "ViewController.h"

@interface ViewController ()
// student
@property (strong, nonatomic) NSMutableArray *arrayRect;  // массив с точками

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
#pragma mark - Stud LVL
    self.arrayRect = [NSMutableArray new];
    CGRect rect = self.view.bounds;
    [self createRect:[UIColor redColor] withX:0 withY:0];
    [self createRect:[UIColor yellowColor] withX:0 withY:CGRectGetHeight(rect) - 100];
    [self createRect:[UIColor blueColor] withX:CGRectGetWidth(rect) - 100 withY:CGRectGetHeight(rect) - 100];
    [self createRect:[UIColor magentaColor] withX:CGRectGetWidth(rect) - 100 withY:0];
    
    for (UIView *view in self.arrayRect) {
        [self moveView:view];
    }
    
}

- (UIView *) createRect:(UIColor *) color withX:(CGFloat) x withY:(CGFloat) y {
    CGRect rect = CGRectMake(x, y, 100, 100);
    UIView *testView = [[UIView alloc] initWithFrame:rect];
    testView.backgroundColor = color;
    [self.arrayRect addObject:testView];
    [self.view addSubview:testView];
    return testView;
}
                                                                          
- (void) moveView:(UIView *) view {
    CGFloat x = CGRectGetMinX(view.frame);
    CGFloat y = CGRectGetMinY(view.frame);
    if (x == 0 && y == 0) {
        y = CGRectGetHeight(self.view.bounds) - 100;
    } else if (x == 0 && y == CGRectGetHeight(self.view.bounds) - 100) {
        x = CGRectGetWidth(self.view.bounds) - 100;
    } else if (x == CGRectGetWidth(self.view.bounds) - 100 && y == CGRectGetHeight(self.view.bounds) - 100) {
        y = 0;
    } else if (x == CGRectGetWidth(self.view.bounds) - 100 && y == 0) {
        x = 0;
    }
    
    UIColor *color = [UIColor new];
    for (int i = 0; i < self.arrayRect.count; i++) {
        if ([view isEqual:[self.arrayRect objectAtIndex:i]]) {
            if (i < self.arrayRect.count - 1) {
                color = [[self.arrayRect objectAtIndex:i + 1] backgroundColor];
            } else {
                color = [UIColor blackColor];
            }
        }
    }
    
    [UIView animateWithDuration:4
                          delay:0
                        options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat
                     animations:^{
                         view.center = CGPointMake (x + 50, y + 50);
                         view.backgroundColor = color;
                     }
                     completion:^(BOOL finished) {
                         NSLog(@"animation is ended");
                     }];
}

- (UIColor *) randomColor {
    CGFloat r = (float)(arc4random() % 256) / 255;
    CGFloat g = (float)(arc4random() % 256) / 255;
    CGFloat b = (float)(arc4random() % 256) / 255;
    UIColor *color = [UIColor colorWithRed:r
                                     green:g
                                      blue:b
                                     alpha:1];
    return color;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
