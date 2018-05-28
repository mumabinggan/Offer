//
//  ViewController.m
//  Offer
//
//  Created by muma on 2018/5/28.
//  Copyright © 2018年 muma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[self findDulElemFromArray];

//    [self findDulElemFromArrayUnChangeArrOrder];

    [self findElemFromTwoDimensions];
}

//剑指 Offer 第二版 面试题3
- (void)findDulElemFromArray {
//    int arr[] = {2, 3, 1, 0, 2, 5, 3};
    int arr[] = {0, 1, 2, 3, 4, 5};
    int totalNum = sizeof(arr)/sizeof(int);
    int sameValue = -1;
    int num = 0;
    for (; num < totalNum;) {
        if (arr[num] == num) {
            ++num;
            continue;
        }
        else {
            if (arr[num] == arr[arr[num]]) {
                sameValue = arr[num];
                break;
            }
            else {
                int temp = arr[arr[num]];
                arr[arr[num]] = arr[num];
                arr[num] = temp;
            }
        }
    }
    NSLog(@"===same value===%d", sameValue);
}

//剑指 Offer 第二版 面试题3  题目二
- (void)findDulElemFromArrayUnChangeArrOrder {
    int arr[] = {2, 4, 4, 4, 4, 5, 4, 3, 2, 6, 7};
    int length = sizeof(arr)/sizeof(int);
    int start = 1;
    int end = length - 1;
    while (start != end) {
        int mid = (start + end)/2;
        int num = [self numberOfContain:arr length:length start:start end:mid];
        if (num > mid - start + 1) {
            end = mid;
        }
        else {
            start = mid + 1;
        }
    }
    NSLog(@"==start==%d", start);
}

- (int)numberOfContain:(int *)arr length:(int)length start:(int)start end:(int)end {
    int count = 0;
    for (int num = 0; num < length; ++num) {
        if (arr[num] <= end && arr[num] >= start) {
            count++;
        }
    }
    return count;
}

//剑指 Offer 第二版 面试题4
- (void)findElemFromTwoDimensions {
#define row 4
#define column 4
    int arr[row][column] = {{1, 2, 8, 9}, {2, 4, 9, 12}, {4, 7, 10, 13}, {6, 8, 11, 15}};
    int findItem = 7;
    int x = column - 1;
    int y = 0;
    BOOL has = NO;
    while (y < row || x > 0) {
        int temp = arr[y][x];
        if (findItem == temp) {
            has = YES;
            break;
        }
        else if (findItem > temp) {
            y++;
            continue;
        }
        else if (findItem < temp) {
            x--;
            continue;
        }
    }
    if (has) {
        NSLog(@"这个数字编号是x=%d, y=%d", x, y);
    }
    else {
        NSLog(@"没有这个数字");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
