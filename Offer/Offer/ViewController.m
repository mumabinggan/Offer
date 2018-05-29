//
//  ViewController.m
//  Offer
//
//  Created by muma on 2018/5/28.
//  Copyright © 2018年 muma. All rights reserved.
//

#import "ViewController.h"

struct ListNode {
    int mKey;
    struct ListNode *mNext;
};

@interface BinaryTreeNode : NSObject

@property (nonatomic, assign) int mKey;
@property (nonatomic, strong) BinaryTreeNode *mLeft;
@property (nonatomic, strong) BinaryTreeNode *mRight;

@end

@implementation BinaryTreeNode

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[self findDulElemFromArray];

//    [self findDulElemFromArrayUnChangeArrOrder];

//    [self findElemFromTwoDimensions];

//    [self replaceSpaceWithString];

//    [self replaceSpaceWithString];

//    [self reversalPrintLink];

//    [self createLinkWithPreAndMidOrder];

    [self Construct];
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
        }
        else if (findItem < temp) {
            x--;
        }
    }
    if (has) {
        NSLog(@"这个数字编号是x=%d, y=%d", x, y);
    }
    else {
        NSLog(@"没有这个数字");
    }
}

//剑指 Offer 第二版 面试题5
- (void)replaceSpaceWithString {
    char str1[] = "We are happy.";
    NSLog(@"===%ld", sizeof(str1)/sizeof(char));
    char str[100] = "We are happy.";
    int total = sizeof(str)/sizeof(char);
    int spaceCount = 0;
    int oldLength = 0;
    for (int num = 0; num < total; ++num) {
        oldLength++;
        if (str[num] == '\0') {
            break;
        }
        if (str[num] == ' ') {
            spaceCount++;
        }
    }
    int newLength = oldLength + spaceCount*2;
    if (newLength >= total) {
        return;
    }
    
    for (int num = oldLength; num >= 0; --num) {
        if (str[num] != ' ') {
            str[num + spaceCount*2] = str[num];
        }
        else {
            str[num + spaceCount*2] = '2';
            str[num + spaceCount*2 - 1] = '0';
            str[num + spaceCount*2 - 2] = '%';
            spaceCount--;
        }
    }
    NSLog(@"---");
}

//剑指 Offer 第二版 面试题6
- (void)reversalPrintLink {
    struct ListNode header;
    header.mKey = 100;
    struct ListNode node0;
    header.mNext = &node0;
    node0.mKey = 0;
    struct ListNode node1;
    node1.mKey = 1;
    node0.mNext = &node1;
    struct ListNode node2;
    node2.mKey = 2;
    node1.mNext = &node2;
    struct ListNode node3;
    node3.mKey = 3;
    node2.mNext = &node3;
    struct ListNode node4;
    node4.mKey = 4;
    node3.mNext = &node4;
    node4.mNext = NULL;
    
    [self reversalPrintLinkCore:(header.mNext)];
}

- (void)reversalPrintLinkCore:(struct ListNode *)header {
    if (header == NULL) {
        return;
    }
    if (header->mNext != NULL) {
        [self reversalPrintLinkCore:header->mNext];
    }
    NSLog(@"====value====%d", header->mKey);
}

//剑指 Offer 第二版 面试题7 （有问题）
- (void)createLinkWithPreAndMidOrder {
    int preOrder[] = {1, 2, 4, 7, 3, 5, 6, 8};
    int midOrder[] = {4, 7, 2, 1, 5, 3, 8, 6};
    [self createLinkWithPreAndMidOrderCore:preOrder preStart:0 preEnd:sizeof(preOrder)/sizeof(int) midOrder:midOrder midStart:0 midEnd:sizeof(midOrder)/sizeof(int) position:0];
}

- (void)createLinkWithPreAndMidOrderCore:(int *)preOrder preStart:(int)preStart preEnd:(int)preEnd midOrder:(int *)midOrder midStart:(int)midStart midEnd:(int)midEnd position:(int)position {
    int currentRootMidIndex = midStart;
    for (; currentRootMidIndex <= midEnd; ++currentRootMidIndex) {
        if (preOrder[preStart] == midOrder[currentRootMidIndex]) {
            NSLog(@"-----node-----%d--%d", midOrder[currentRootMidIndex], position);
            break;
        }
    }
    int leftLength = currentRootMidIndex - preStart;
    int leftPreorderEnd = preStart + leftLength;
    if (leftLength >= 0) {
        [self createLinkWithPreAndMidOrderCore:preOrder preStart:preStart+1 preEnd:leftPreorderEnd midOrder:midOrder midStart:midStart midEnd:currentRootMidIndex-1 position:1];
    }
    if (leftLength < preEnd - preStart) {
        [self createLinkWithPreAndMidOrderCore:preOrder preStart:leftPreorderEnd+1 preEnd:preEnd midOrder:midOrder midStart:currentRootMidIndex+1 midEnd:midEnd  position:2];
    }
}

//剑指 Offer 第二版 面试题7 （原版）
- (BinaryTreeNode *)Construct {
    int preOrder[] = {1, 2, 4, 7, 3, 5, 6, 8};
    int midOrder[] = {4, 7, 2, 1, 5, 3, 8, 6};
    BinaryTreeNode *node = [self ConstructCore:preOrder preStart:0 preEnd:7 midOrder:midOrder midStart:0 midEnd:7];
    return node;;
}

- (BinaryTreeNode *)ConstructCore:(int *)preOrder preStart:(int)preStart preEnd:(int)preEnd midOrder:(int *)midOrder midStart:(int)midStart midEnd:(int)midEnd {
    int rootValue = preOrder[preStart];
    BinaryTreeNode *node = [BinaryTreeNode new];
    node.mLeft = nil;
    node.mRight = nil;
    node.mKey = rootValue;
    int currentRootMidIndex = midStart;
    for (; currentRootMidIndex <= midEnd; ++currentRootMidIndex) {
        if (preOrder[preStart] == midOrder[currentRootMidIndex]) {
            break;
        }
    }
    
    int leftLength = currentRootMidIndex - midStart;
    if (leftLength > 0) {
        node.mLeft = [self ConstructCore:preOrder preStart:preStart+1 preEnd:preStart+leftLength midOrder:midOrder midStart:midStart midEnd:currentRootMidIndex-1];
    }
    if (midEnd > currentRootMidIndex) {
        node.mRight = [self ConstructCore:preOrder preStart:preStart+leftLength+1 preEnd:preEnd midOrder:midOrder midStart:currentRootMidIndex+1 midEnd:midEnd];
    }
    return node;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
