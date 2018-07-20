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

+ (BinaryTreeNode *)createValue:(int)value left:(BinaryTreeNode *)left right:(BinaryTreeNode *)right;

@end

@implementation BinaryTreeNode

- (id)init {
    self = [super init];
    if (self) {
        _mLeft = nil;
        _mRight = nil;
    }
    return self;
}

+ (BinaryTreeNode *)createValue:(int)value {
    return [self createValue:value left:nil right:nil];
}

+ (BinaryTreeNode *)createValue:(int)value left:(BinaryTreeNode *)left right:(BinaryTreeNode *)right {
    BinaryTreeNode *node = [[BinaryTreeNode alloc] init];
    node.mKey = value;
    node.mLeft = left;
    node.mRight = right;
    return node;
}

@end

@interface BinaryTreeHaveParentNode : NSObject

@property (nonatomic, assign) int mKey;
@property (nonatomic, strong) BinaryTreeHaveParentNode *mLeft;
@property (nonatomic, strong) BinaryTreeHaveParentNode *mRight;
@property (nonatomic, strong) BinaryTreeHaveParentNode *mParent;

@end

@implementation BinaryTreeHaveParentNode

@end

@interface MinStack : NSObject

@end

@interface MinStack ()

@property (nonatomic, strong) NSMutableArray *stackMArray;
@property (nonatomic, strong) NSMutableArray *minMArray;

@end

@implementation MinStack

- (NSMutableArray *)stackMArray {
    if (!_stackMArray) {
        _stackMArray = [NSMutableArray new];
    }
    return _stackMArray;
}

- (NSMutableArray *)minMArray {
    if (!_minMArray) {
        _minMArray = [NSMutableArray new];
    }
    return _minMArray;
}

- (NSInteger)min {
    NSNumber *intValue = self.minMArray.lastObject;
    return intValue.integerValue;
}

- (void)push:(NSInteger)item {
    [self.stackMArray addObject:@(item)];
    NSNumber *intValue = self.minMArray.lastObject;
    NSNumber *addValue = nil;
    if (intValue) {
        if (item < intValue.integerValue) {
            addValue = @(item);
        }
        else {
            addValue = intValue;
        }
    }
    else {
        addValue = @(item);
    }
    [self.minMArray addObject:addValue];
}

- (void)pop {
    [self.stackMArray removeLastObject];
    [self.minMArray removeLastObject];
}

@end

@interface Queue : NSObject
{
    int inArr[10];
    int inLength;
    int outArr[10];
    int outLength;
}

- (void)push:(int)value;

- (void)pop;

@end

@implementation Queue

- (id)init {
    self = [super init];
    if (self) {
        [self reset];
    }
    return self;
}

- (void)reset {
    int total = sizeof(inArr)/sizeof(int);
    memset(inArr, '\0', total);
    inLength = 0;
    memset(outArr, '\0', total);
    outLength = 0;
}

- (void)push:(int)value {
    int total = sizeof(inArr)/sizeof(int);
    int num = 0;
    for (; num < total - 1; ++num) {
        if (inArr[num] == '\0') {
            inArr[num] = value;
            inArr[num+1] = '\0';
            inLength++;
            break;
        }
    }
}

- (void)pop {
    if (outArr[0] == '\0') {
        for (int num = inLength-1, time = 0; num >= 0; --num, ++time) {
            outArr[time] = inArr[num];
            inArr[num] = '\0';
        }
        outLength = inLength;
        inLength = 0;
    }
    outLength--;
    outArr[outLength-1] = '\0';
}

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

//    [self Construct];
    
//    [self testQueue];

//    int result = [self fabonacci:3];
//    NSLog(@"==result==%d", result);
//    result = [self fabonacciOptimization:3];
//    NSLog(@"==result==%d", result);

//    [self SortAges];

//    int min = [self findMinRotateArray];
//    NSLog(@"====min====%d", min);

//    BOOL hasPath = [self hasPath];
//    NSLog(@"====hasPath====%d", hasPath);

//    int max = [self maxAfterCutDynamic:8];
//    NSLog(@"==max==%d", max);
    
//    int max = [self maxAfterCutDynamicOptimization:8];
//    NSLog(@"==MAX==%d", max);
//    int max = [self maxAfterCutGreedy:8];
//    NSLog(@"==max==%d", max);

//    int max = [self maxAfterCutGreedyOptimization:8];
//    NSLog(@"==MAX==%d", max);
    
//    int count = [self countOfOneInInt:9];
//    NSLog(@"==count==%d", count);

//    double total = [self Power:1.1 exponent:-3];
//    NSLog(@"===total===%f", total);

//    double total = [self PowerOptimization:1.1 exponent:-3];
//    NSLog(@"===total===%f", total);

//    [self printMaxInt];
    
//    [self printMaxInt:3];

//    [self deleteNode];

//    [self deleteDuplicateNode];

//    BOOL isNumeric = [self isNumeric:"-1.3e2"];
//    NSLog(@"==isNumeric==%d", isNumeric);

//    [self moveForwardOdd];

//    __weak id weakSelf = self;
//    [self moveForwardOddWithBlock:^BOOL(int n) {
//        return [weakSelf isEven:n];
//    }];

//    int value = [self findKFromLast];
//    NSLog(@"==value==%d", value);
    
//    int value = [self findIntersectionFromLink];
//    NSLog(@"=====value:%d==", value);

//    [self mergeTwoLink];

//    [self checkSubBinaryTree];

//    [self mirrorBinaryTree];

//    [self symmetryBinaryTree];

//    [self printMatrixInClockwise];

//    [self printMinStackWithO1];
    
//    BOOL check = [self checkRightPop];
//    if (check) {
//        NSLog(@"是正确弹出序列");
//    }
//    else {
//        NSLog(@"不是正确弹出序列");
//    }

    [self printBinaryTreeInLevel];
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

//剑指 Offer 第二版 面试题7
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

//剑指 Offer 第二版 面试题8
- (BinaryTreeHaveParentNode *)getNextNode:(BinaryTreeHaveParentNode *)pNode {
    if (pNode == nil) {
        return nil;
    }
    if (pNode.mRight == nil) {
        BinaryTreeHaveParentNode *parentNode = pNode.mParent;
        if (parentNode.mLeft == pNode) {
            return pNode.mParent;
        }
        else {
            while (parentNode != nil) {
                if (parentNode == parentNode.mParent.mLeft) {
                    return parentNode;
                }
                parentNode = parentNode.mParent;
            }
            return pNode.mParent;
        }
    }
    else {
        BinaryTreeHaveParentNode *tempNode = pNode.mRight;
        while (tempNode.mLeft != nil || tempNode.mRight != nil) {
            BinaryTreeHaveParentNode *left = tempNode.mLeft;
            if (left) {
                return left;
            }
            else {
                tempNode = tempNode.mRight;
            }
        }
        return pNode.mRight;
    }
}

//剑指 Offer 第二版 面试题9
- (void)testQueue {
    Queue *queue = [[Queue alloc] init];
    [queue push:1];
    [queue push:2];
    [queue push:3];
    [queue push:4];
    [queue push:5];
    [queue pop];
    [queue push:6];
    [queue push:7];
    [queue push:8];
    [queue push:9];
    [queue pop];
    NSLog(@"----");
}

//剑指 Offer 第二版 面试题10
- (int)fabonacci:(int)n {
    if (n == 0) {
        return 0;
    }
    else if (n == 1) {
        return 1;
    }
    else {
        return [self fabonacci:n-1] + [self fabonacci:n-2];
    }
}

//剑指 Offer 第二版 面试题10 优化
- (int)fabonacciOptimization:(int)n {
    if (n == 0) {
        return 0;
    }
    else if (n == 1) {
        return 1;
    }
    int one = 0;
    int two = 1;
    int num = 2;
    int temp = 0;
    while (num <= n) {
        temp = one + two;
        one = two;
        two = temp;
        num++;
    }
    return temp;
}

//剑指 Offer 第二版 查找（时间复杂度为 O(n)，用空间换时间）
- (void)SortAges {
    int ages[10000];
    int length = sizeof(ages)/sizeof(int);
    for (int num = 0; num < length-2; ++num) {
        ages[num]  = arc4random() % 99;
    }
    
    const int timesOfAgesLength = 99;
    int timesOfAges[timesOfAgesLength + 1];
    for (int num = 0; num < timesOfAgesLength; ++num) {
        timesOfAges[num] = 0;
    }
    
    for (int num = 0; num < length-1; ++num) {
        ++timesOfAges[ages[num]];
    }
    
    int index = 0;
    for (int num = 0; num < timesOfAgesLength; ++num) {
        for (int n = 0; n < timesOfAges[num]; ++n) {
            ages[index++] = num;
            NSLog(@"----current----%d, %d", num, n);
        }
    }
    NSLog(@"----");
}

//剑指 Offer 第二版 面试题11
- (int)findMinRotateArray {
    int rotateArr[] = {4, 5, 6, 7, 8, 9, 1, 2, 3};
//    int rotateArr[] = {2, 0, 2, 2,2, 2,2, 2,2, 2};
    int start = 0;
    int end = sizeof(rotateArr)/sizeof(int) - 1;
    while (end != start + 1) {
        int mid = (start + end)/2;

        if ((rotateArr[mid] == rotateArr[start]) && (rotateArr[start] == rotateArr[end])) {
            return [self minInOrder:rotateArr start:start end:end];
        }

        if (rotateArr[mid] <= rotateArr[end]) {
            end = mid;
            continue;
        }
        if (rotateArr[mid] >= rotateArr[start]) {
            start = mid;
            continue;
        }
    }
    return rotateArr[end];
}

- (int)minInOrder:(int *)arr start:(int)start end:(int)end {
    int result = arr[start];
    for (int num = start + 1; num < end + 1; ++num) {
        if (result > arr[num]) {
            result = arr[num];
        }
    }
    return result;
}

//剑指 Offer 第二版 面试题12
- (BOOL)hasPath {
    char *matrix = "abtgcfcsjdeh";
    BOOL visited[] = {NO, NO, NO, NO, NO, NO, NO, NO,NO, NO, NO, NO};
//    char *str = "bfce";
    char *str = "abfb";

    int strLength = 0;
    int rows = 3;
    int columns = 4;
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < columns; ++j) {
            if ([self hasPathCore:matrix rows:rows cols:columns curRow:i curCol:j str:str strLength:strLength visited:visited]) {
                return YES;
            }
        }
    }
    return NO;
}


- (BOOL)hasPathCore:(char *)matrix rows:(int)rows cols:(int)cols curRow:(int)curRow curCol:(int)curCol str:(char*)str strLength:(int)strLength visited:(BOOL*)visited {
    
    if (str[strLength] == '\0') {
        return YES;
    }
    
    int curIndex = curRow * cols + curCol;
    BOOL hasPath = NO;
    if (str[strLength] == matrix[curIndex] &&
        !visited[curIndex] &&
        curRow >= 0 &&
        curCol >= 0 &&
        curRow < rows &&
        curCol < cols) {
        
        strLength++;
        visited[curIndex] = YES;
        
        BOOL leftHasPath = [self hasPathCore:matrix rows:rows cols:cols curRow:curRow curCol:curCol-1 str:str strLength:strLength visited:visited];
        BOOL rightHasPath = [self hasPathCore:matrix rows:rows cols:cols curRow:curRow curCol:curCol+1 str:str strLength:strLength visited:visited];
        BOOL topHasPath = [self hasPathCore:matrix rows:rows cols:cols curRow:curRow-1 curCol:curCol str:str strLength:strLength visited:visited];
        BOOL bottomHasPath = [self hasPathCore:matrix rows:rows cols:cols curRow:curRow+1 curCol:curCol str:str strLength:strLength visited:visited];
        
        hasPath = leftHasPath || rightHasPath || topHasPath || bottomHasPath;
        if (!hasPath) {
            strLength--;
            visited[curIndex] = NO;
        }
    }
    return hasPath;
}

//剑指 Offer 第二版 面试题13
- (void)arriveHowMany:(int)max rows:(int)rows cols:(int)cols {
    if (max < 0 || rows <= 0 || cols <= 0) {
        return;
    }
    
    BOOL visited[rows * cols];
    
    int count = [self arriveHowMany:max rows:rows cols:cols curRow:0 curCol:0 visited:visited];
    
    NSLog(@"===count===%d", count);
}

- (int)arriveHowMany:(int)max rows:(int)rows cols:(int)cols curRow:(int)curRow curCol:(int)curCol visited:(BOOL *)visited {
    int count = 0;
    int curIndex = curRow * cols + curCol;
    if (curRow >= 0 && curRow < rows && curCol >= 0 && curCol < cols && !visited[curIndex]) {
        if ([self digitTotal:curCol] + [self digitTotal:curRow] > max) {
            return 0;
        }
        
        visited[curIndex] = YES;
        
        int leftCount = [self arriveHowMany:max rows:rows cols:cols-1 curRow:curRow curCol:curCol visited:visited];
        int rightCount = [self arriveHowMany:max rows:rows cols:cols+1 curRow:curRow curCol:curCol visited:visited];
        BOOL topCount = [self arriveHowMany:max rows:rows-1 cols:cols curRow:curRow curCol:curCol visited:visited];
        BOOL bottomCount = [self arriveHowMany:max rows:rows+1 cols:cols curRow:curRow curCol:curCol visited:visited];
        
        count = 1 + leftCount || rightCount || topCount || bottomCount;
    }
    
    return count;
}

- (int)digitTotal:(int)digit {
    int total = 0;
    while (digit) {
        total += digit%10;
        digit /= 10;
    }
    return total;
}

//剑指 Offer 第二版 面试题14 动态规划
- (int)maxAfterCutDynamic:(int)length {
    int value = 0;
    int max = 0;
    if (length <= 3) {
        if (length < 2) {
            value = 0;
        }
        if (length == 2) {
            value = 1;
        }
        if (length == 3) {
            value = 2;
        }
    }
    else {
        for (int num = 1; num <= length/2; ++num) {
            int start = 0;
            int end = 0;
            int startIndex = num;
            int endIndex = length - startIndex;
            if (startIndex == 1) {
                start = 1;
            }
            else if (startIndex == 2) {
                start = 2;
            }
            else if (startIndex == 3) {
                start = 3;
            }
            else {
                start = [self maxAfterCutDynamic:startIndex];
            }
            if (endIndex == 1) {
                end = 1;
            }
            else if (endIndex == 2) {
                end = 2;
            }
            else if (endIndex == 3) {
                end = 3;
            }
            else {
                end = [self maxAfterCutDynamic:endIndex];
            }
            value = start * end;
            NSLog(@"===value===%d", value);
            if (max < value) {
                max = value;
            }
        }
    }
    return max;
}

//剑指 Offer 第二版 面试题14 动态规划（优化）
- (int)maxAfterCutDynamicOptimization:(int)length {
    if (length < 2) {
        return 0;
    }
    else if (length == 2) {
        return 1;
    }
    else if (length == 3) {
        return 2;
    }
    int production[length + 1];
    production[0] = 0;
    production[1] = 1;
    production[2] = 2;
    production[3] = 3;
    
    int max = 0;
    for (int i = 4; i <= length; ++i) {
        max = 0;
        for (int j = 1; j <= i/2; ++j) {
            int value = production[j] * production[i - j];
            if (max < value) {
                max = value;
            }
        }
        production[i] = max;
    }
    max = production[length];
    return max;
}

//剑指 Offer 第二版 面试题14 贪婪算法
- (int)maxAfterCutGreedy:(int)length {
    int value = 1;
    while (length >= 5) {
        length -= 3;
        value *= 3;
    }
    
    if (length == 2) {
        value *= 2;
    }
    else if (length == 3) {
        value *= 2;
    }
    else if (length == 4) {
        value *= 4;
    }
    return value;
}

//剑指 Offer 第二版 面试题14 贪婪算法(优化)
- (int)maxAfterCutGreedyOptimization:(int)length {
    if (length < 2) {
        return 0;
    }
    if (length == 2) {
        return 1;
    }
    if (length == 3) {
        return 2;
    }
    
    int timesOf3 = length/3;
    if (length - timesOf3 * 3 == 1) {
        timesOf3--;
    }
    
    int timesOf2 = (length - timesOf3 * 3)/2;
    
    return (int)(pow(3, timesOf3)) * (int)(pow(2, timesOf2));
}

//剑指 Offer 第二版 面试题15
- (int)countOfOneInInt:(int)number {
    int count = 0;
    unsigned int flag = 1;
    while (flag) {
        if (number & flag) {
            count++;
        }
        flag <<= 1;
    }
    return count;
}

//剑指 Offer 第二版 面试题16
- (double)Power:(double)base exponent:(int)exponent {
    if (base - 0.0 < 0.000001) {
        return 0;
    }
    double total = 1;
    int desExponent = exponent;
    if (exponent < 0) {
        desExponent = -exponent;
    }
    while (desExponent--) {
        total *= base;
    }
    if (exponent < 0) {
        total = 1.0/total;
    }
    return total;
}

//剑指 Offer 第二版 面试题16 优化
- (double)PowerOptimization:(double)base exponent:(int)exponent {
    if (base - 0.0 < 0.000001) {
        return 0;
    }
    double total = 1;
    int desExponent = exponent;
    if (exponent < 0) {
        desExponent = -exponent;
    }
    
    total = [self PowerOptimizationFromBook:base exponent:desExponent];

    if (exponent < 0) {
        total = 1.0/total;
    }
    return total;
}

//剑指 Offer 第二版 面试题16 优化
- (double)PowerOptimizationFromBook:(double)base exponent:(unsigned int)exponent {
    if (exponent == 0) {
        return 1;
    }
    if (exponent == 1) {
        return base;
    }
    
    double total = [self PowerOptimizationFromBook:base exponent:exponent>>1];
    total *= total;
    if ((exponent & 0x1) == 1) {
        total *= base;
    }
    return total;
}

//剑指 Offer 第二版 面试题17
- (void)printMaxInt:(int)n {
    int total = 9;
    while (--n) {
        total *= 10;
        total += 9;
    }
    for (int num = 0; num <= total; ++num) {
        NSLog(@"==total==%d", num);
    }
}

//剑指 Offer 第二版 面试题17 优化
- (void)printMaxIntOptimization:(int)n {
    
}

//剑指 Offer 第二版 面试题18
- (void)deleteNode {
    struct ListNode *header;
    struct ListNode node0;
    header = &node0;
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
    
    struct ListNode *deleteNode = &node0;
    
    if (deleteNode == NULL) {
        return;
    }
    if (header->mNext == deleteNode) {
        header = deleteNode->mNext;
    }
    else if (deleteNode->mNext == NULL) {
        struct ListNode *tempNode = header;
        while (tempNode->mNext != deleteNode) {
            tempNode = tempNode->mNext;
        }
        tempNode->mNext = NULL;
    }
    else {
        struct ListNode *tempNode = deleteNode->mNext->mNext;
        deleteNode->mKey = deleteNode->mNext->mKey;
        deleteNode->mNext = tempNode;
    }
    NSLog(@"----");
}

//剑指 Offer 第二版 面试题18 题目二
- (void)deleteDuplicateNode
 {
    struct ListNode *header;
    struct ListNode node0;
    header = &node0;
    node0.mKey = 0;
    struct ListNode node1;
    node1.mKey = 0;
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
    
    struct ListNode *startNode = NULL;
    struct ListNode *tempNode = header;
     if (tempNode == NULL) {
         return;
     }
     
     BOOL found = NO;
     while (tempNode != NULL) {
         if (tempNode->mNext != NULL) {
             if (tempNode->mKey != tempNode->mNext->mKey) {
                 if (found) {
                     if (startNode == NULL) {
                         header = tempNode->mNext;
                         startNode = header;
                     }
                     else {
                         startNode->mNext = tempNode->mNext;
                     }
                     found = NO;
                 }
                 else {
                     startNode = tempNode;
                 }
             }
             else {
                 found = YES;
             }
         }
         else {
             if (found) {
                 startNode->mNext = NULL;
             }
         }
         tempNode = tempNode->mNext;
     }
    NSLog(@"----");
}

//剑指 Offer 第二版 面试题20
//数字格式可以用 A[.[B]][e|EC]或.B[e|EC]
- (BOOL)isNumeric:(char *)str {
    if (str == NULL) {
        return NO;
    }
    BOOL numeric = [self scanInteger:&str];
    if (*str == '.') {
        ++str;
        numeric = [self scanUnsignedInteger:&str] || numeric;
    }
    
    if (*str == 'e' || *str == 'E') {
        ++str;
        numeric = numeric && [self scanInteger:&str];
    }
    
    return numeric && *str == '\0';
}

- (BOOL)scanInteger:(char **)str {
    if (**str == '+' || **str == '-') {
        ++(*str);
    }
    return [self scanUnsignedInteger:str];
}

- (BOOL)scanUnsignedInteger:(char **)str {
    const char* before = *str;
    while (**str >= '0' && **str <= '9' && **str != '\0') {
        ++(*str);
    }
    return *str > before;
}

//剑指 Offer 第二版 面试题21
- (void)moveForwardOdd {
    int arr[] = {3, 22, 12, 32, 333, 22, 44, 53, 64};
    int startIndex = 0;
    int endIndex = sizeof(arr)/sizeof(int);
    while (startIndex != endIndex) {
        if ((arr[startIndex] & 0x1) == 0) {
            if ((arr[endIndex] & 0x1) == 0) {
                endIndex--;
            }
            else {
                int temp = arr[startIndex];
                arr[startIndex] = arr[endIndex];
                arr[endIndex] = temp;
                startIndex++;
                endIndex--;
            }
        }
        else {
            ++startIndex;
        }
    }
    NSLog(@"-----");
}

//剑指 Offer 第二版 面试题21 优化
- (void)moveForwardOddWithBlock:(BOOL (^)(int))func {
    int arr[] = {3, 22, 12, 32, 333, 22, 44, 53, 64};
    int startIndex = 0;
    int endIndex = sizeof(arr)/sizeof(int);
    while (startIndex != endIndex) {
        if (func(arr[startIndex]) == 0) {
            if (func(arr[endIndex]) == 0) {
                endIndex--;
            }
            else {
                int temp = arr[startIndex];
                arr[startIndex] = arr[endIndex];
                arr[endIndex] = temp;
                startIndex++;
                endIndex--;
            }
        }
        else {
            ++startIndex;
        }
    }
    NSLog(@"-----");
}

- (BOOL)isEven:(int)n {
    return (n & 0x1);
}

//剑指 Offer 第二版 面试题22
- (int)findKFromLast {
    struct ListNode *header;
    struct ListNode node0;
    header = &node0;
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
    struct ListNode node5;
    node5.mKey = 5;
    node4.mNext = &node5;
    struct ListNode node6;
    node6.mKey = 6;
    node5.mNext = &node6;
    struct ListNode node7;
    node7.mKey = 7;
    node6.mNext = &node7;
    struct ListNode node8;
    node8.mKey = 8;
    node7.mNext = &node8;
    node8.mNext = NULL;
    
    return [self findKFromLastCore:header kIndex:4];
}

- (int)findKFromLastCore:(struct ListNode *)header kIndex:(int)kIndex {
    if (header == NULL) {
        return INT_MIN;
    }
    struct ListNode * startNode = NULL;
    struct ListNode * endNode = header;
    int count = 0;
    while (endNode != NULL) {
        count++;
        endNode = endNode->mNext;
        if (count > kIndex) {
            if (startNode == NULL) {
                startNode = header;
            }
            startNode = startNode->mNext;
        }
    }
    if (startNode == NULL) {
        return INT_MIN;
    }
    return startNode->mKey;
}

//剑指 Offer 第二版 面试题23
- (int)findIntersectionFromLink {
    struct ListNode *header;
    struct ListNode node0;
    header = &node0;
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
    struct ListNode node5;
    node5.mKey = 5;
    node4.mNext = &node5;
    struct ListNode node6;
    node6.mKey = 6;
    node5.mNext = &node6;
    struct ListNode node7;
    node7.mKey = 7;
    node6.mNext = &node7;
    struct ListNode node8;
    node8.mKey = 8;
    node7.mNext = &node8;
    node8.mNext = &node6;
    
    return [self findIntersectionFromLinkCore:header];
}

- (int)findIntersectionFromLinkCore:(struct ListNode *)header {
    if (header == NULL) {
        return INT_MIN;
    }
    struct ListNode *slowPtr = header;
    struct ListNode *fastPtr = header;
    while (1) {
        struct ListNode *temp = fastPtr->mNext;
        if (temp == NULL) {
            return INT_MIN;
        }
        if ((temp = temp->mNext) == NULL) {
            return INT_MIN;
        }
        fastPtr = temp;
        slowPtr = slowPtr->mNext;
        if (fastPtr == slowPtr) {
            break;
        }
    }
    
    int k = 0;
    struct ListNode *tempNode = slowPtr;
    while (slowPtr->mNext != tempNode) {
        slowPtr = slowPtr->mNext;
        k++;
    }
    
    slowPtr = header;
    fastPtr = header;
    while (k--) {
        slowPtr = slowPtr->mNext;
    }
    while (slowPtr->mNext != fastPtr) {
        slowPtr = slowPtr->mNext;
        fastPtr = fastPtr->mNext;
    }
    NSLog(@"=====%d===", fastPtr->mKey);
    return fastPtr->mKey;
}

//剑指 Offer 第二版 面试题24
- (void)reverseLink {
    struct ListNode *header;
    struct ListNode node0;
    header = &node0;
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
    struct ListNode node5;
    node5.mKey = 5;
    node4.mNext = &node5;
    struct ListNode node6;
    node6.mKey = 6;
    node5.mNext = &node6;
    struct ListNode node7;
    node7.mKey = 7;
    node6.mNext = &node7;
    struct ListNode node8;
    node8.mKey = 8;
    node7.mNext = &node8;
    node8.mNext = NULL;
    
    struct ListNode *node = [self reverseLinkCore:header];
    NSLog(@"===%d===", node->mKey);
}

- (struct ListNode *)reverseLinkCore:(struct ListNode *)header {
    struct ListNode *tempA = header;
    struct ListNode *tempB = header;
    struct ListNode *tempC = header->mNext;
    while (tempC != NULL) {
        tempB = tempC;
        tempC = tempB->mNext;
        tempB->mNext = tempA;
        tempA = tempB;
    }
    header->mNext = NULL;
    return tempA;
}

//剑指 Offer 第二版 面试题25
- (void)mergeTwoLink {
    struct ListNode *aList;
    struct ListNode node0;
    aList = &node0;
    node0.mKey = 0;
    struct ListNode node2;
    node2.mKey = 2;
    node0.mNext = &node2;
    struct ListNode node4;
    node4.mKey = 4;
    node2.mNext = &node4;
    struct ListNode node6;
    node6.mKey = 6;
    node4.mNext = &node6;
    struct ListNode node8;
    node8.mKey = 8;
    node6.mNext = &node8;
    node8.mNext = NULL;
    
    struct ListNode *bList;
    struct ListNode node1;
    bList = &node1;
    node1.mKey = 1;
    struct ListNode node3;
    node3.mKey = 3;
    node1.mNext = &node3;
    struct ListNode node5;
    node5.mKey = 5;
    node3.mNext = &node5;
    struct ListNode node7;
    node7.mKey = 7;
    node5.mNext = &node7;
    node7.mNext = NULL;
    
    struct ListNode *list = [self mergeTwoLinkCore:aList two:bList];
    NSLog(@"====");
}

- (struct ListNode *)mergeTwoLinkCore:(struct ListNode *)aList two:(struct ListNode *)bList {
    struct ListNode *tempA = aList;
    struct ListNode *tempB = bList;
    struct ListNode *mergeList = NULL;
    struct ListNode *lastNode = mergeList;
    while (tempA != NULL && tempB != NULL) {
        struct ListNode *tempNode;
        if (tempA->mKey > tempB->mKey) {
            tempNode = tempB;
            tempB = tempB->mNext;
        }
        else {
            tempNode = tempA;
            tempA = tempA->mNext;
        }
        if (lastNode == NULL) {
            lastNode = tempNode;
        }
        else {
            lastNode->mNext = tempNode;
            lastNode = lastNode->mNext;
        }
        if (mergeList == NULL) {
            mergeList = lastNode;
        }
    }
    
    if (tempA != NULL) {
        lastNode->mNext = tempA;
    }
    if (tempB != NULL) {
        lastNode->mNext = tempB;
    }
    return mergeList;
}

//剑指 Offer 第二版 面试题26
- (void)checkSubBinaryTree {
    //创建父树
    BinaryTreeNode *parentTree = [[BinaryTreeNode alloc] init];
    parentTree.mKey = 8;
    
    BinaryTreeNode *tempNode1 = [[BinaryTreeNode alloc] init];
    tempNode1.mKey = 8;
    parentTree.mLeft = tempNode1;
    
    BinaryTreeNode *tempNode2 = [[BinaryTreeNode alloc] init];
    tempNode2.mKey = 7;
    parentTree.mRight = tempNode2;
    
    BinaryTreeNode *tempNode3 = [[BinaryTreeNode alloc] init];
    tempNode3.mKey = 9;
    tempNode1.mLeft = tempNode3;
    
    BinaryTreeNode *tempNode4 = [[BinaryTreeNode alloc] init];
    tempNode4.mKey = 2;
    tempNode1.mRight = tempNode4;
    
    BinaryTreeNode *tempNode5 = [[BinaryTreeNode alloc] init];
    tempNode5.mKey = 4;
    tempNode4.mLeft = tempNode5;
    
    BinaryTreeNode *tempNode6 = [[BinaryTreeNode alloc] init];
    tempNode6.mKey = 7;
    tempNode4.mRight = tempNode6;
    
    //创建子树
    BinaryTreeNode *subTree = [[BinaryTreeNode alloc] init];
    subTree.mKey = 8;

    BinaryTreeNode *tempNode21 = [[BinaryTreeNode alloc] init];
    tempNode21.mKey = 9;
    subTree.mLeft = tempNode21;
    
    BinaryTreeNode *tempNode22 = [[BinaryTreeNode alloc] init];
    tempNode22.mKey = 2;
    subTree.mRight = tempNode22;
    
    BOOL result = [self checkSubBinaryTreeCore:parentTree subTree:subTree];
    if (result) {
        NSLog(@"包含");
    }
    else {
        NSLog(@"不包含");
    }
}

- (BOOL)checkSubBinaryTreeCore:(BinaryTreeNode *)parentTree subTree:(BinaryTreeNode *)subTree {
    if (parentTree == nil) {
        return NO;
    }
    BOOL contain = [self comparisonSubBinaryTreeCore:parentTree subTree:subTree];
    if (contain) {
        NSLog(@"找到...");
        contain = YES;
        return contain;
    }
    NSLog(@"=====%d====", parentTree.mKey);
    contain = [self checkSubBinaryTreeCore:parentTree.mLeft subTree:subTree];
    if (contain) {
        contain = [self checkSubBinaryTreeCore:parentTree.mRight subTree:subTree];
    }
    return contain;
}

- (BOOL)comparisonSubBinaryTreeCore:(BinaryTreeNode *)parentTree subTree:(BinaryTreeNode *)subTree {
    BOOL contain = YES;
    if (subTree == nil) {
        contain = YES;
        return contain;
    }
    
    if (parentTree == nil && subTree != nil) {
        contain = NO;
        return contain;
    }
    
    if (parentTree.mKey == subTree.mKey) {
        contain = YES;
        contain = [self comparisonSubBinaryTreeCore:parentTree.mLeft subTree:parentTree.mLeft];
        if (contain) {
            contain = [self comparisonSubBinaryTreeCore:parentTree.mRight subTree:parentTree.mRight];
        }
    }
    else {
        contain = NO;
    }
    return contain;
}

//剑指 Offer 第二版 面试题27
- (void)mirrorBinaryTree {
    BinaryTreeNode *parentTree = [[BinaryTreeNode alloc] init];
    parentTree.mKey = 8;
    
    BinaryTreeNode *tempNode1 = [[BinaryTreeNode alloc] init];
    tempNode1.mKey = 6;
    parentTree.mLeft = tempNode1;
    
    BinaryTreeNode *tempNode2 = [[BinaryTreeNode alloc] init];
    tempNode2.mKey = 10;
    parentTree.mRight = tempNode2;
    
    BinaryTreeNode *tempNode3 = [[BinaryTreeNode alloc] init];
    tempNode3.mKey = 5;
    tempNode1.mLeft = tempNode3;
    
    BinaryTreeNode *tempNode4 = [[BinaryTreeNode alloc] init];
    tempNode4.mKey = 7;
    tempNode1.mRight = tempNode4;
    
    BinaryTreeNode *tempNode5 = [[BinaryTreeNode alloc] init];
    tempNode5.mKey = 9;
    tempNode2.mLeft = tempNode5;
    
    BinaryTreeNode *tempNode6 = [[BinaryTreeNode alloc] init];
    tempNode6.mKey = 11;
    tempNode2.mRight = tempNode6;
    
    [self mirrorBinaryTreeCore:parentTree];
    NSLog(@"===");
}

- (void)mirrorBinaryTreeCore:(BinaryTreeNode *)originTree {
    if (originTree == nil) {
        return;
    }
    
    BinaryTreeNode *temp = originTree.mLeft;
    originTree.mLeft = originTree.mRight;
    originTree.mRight = temp;
    
    [self mirrorBinaryTreeCore:originTree.mLeft];
    [self mirrorBinaryTreeCore:originTree.mRight];
}

//剑指 Offer 第二版 面试题28
- (void)symmetryBinaryTree {
    BinaryTreeNode *parentTree = [[BinaryTreeNode alloc] init];
    parentTree.mKey = 8;
    
    BinaryTreeNode *tempNode1 = [[BinaryTreeNode alloc] init];
    tempNode1.mKey = 6;
    parentTree.mLeft = tempNode1;
    
    BinaryTreeNode *tempNode2 = [[BinaryTreeNode alloc] init];
    tempNode2.mKey = 10;
    parentTree.mRight = tempNode2;
    
    BinaryTreeNode *tempNode3 = [[BinaryTreeNode alloc] init];
    tempNode3.mKey = 5;
    tempNode1.mLeft = tempNode3;
    
    BinaryTreeNode *tempNode4 = [[BinaryTreeNode alloc] init];
    tempNode4.mKey = 7;
    tempNode1.mRight = tempNode4;
    
    BinaryTreeNode *tempNode5 = [[BinaryTreeNode alloc] init];
    tempNode5.mKey = 9;
    tempNode2.mLeft = tempNode5;
    
    BinaryTreeNode *tempNode6 = [[BinaryTreeNode alloc] init];
    tempNode6.mKey = 11;
    tempNode2.mRight = tempNode6;
    
    BOOL result = [self symmetryBinaryTreeCore:parentTree secondTree:parentTree];
    if (result) {
        NSLog(@"相等...");
    }
    else {
        NSLog(@"不相等...");
    }
}

- (BOOL)symmetryBinaryTreeCore:(BinaryTreeNode *)firstTree secondTree:(BinaryTreeNode *)secondTree {
    if (firstTree == nil && secondTree == nil) {
        return YES;
    }
    
    if (firstTree == nil && secondTree != nil) {
        return NO;
    }
    
    if (firstTree != nil && secondTree == nil) {
        return NO;
    }
    
    if (firstTree.mKey != secondTree.mKey) {
        return NO;
    }
    
    return [self symmetryBinaryTreeCore:firstTree.mLeft secondTree:secondTree.mRight] &&
    [self symmetryBinaryTreeCore:firstTree.mRight secondTree:secondTree.mLeft];
}

//剑指 Offer 第二版 面试题29
- (void)printMatrixInClockwise {
    static const int kNum = 4;
    static const int kColumn = 4;
    int arr[kNum][kColumn] = {
        {1, 2, 3, 4},
        {5, 6, 7, 8},
        {9, 10, 11, 12},
        {13, 14, 15, 16}
    };
    [self printMatrixInClockwiseCore:NULL beginX:0 beginY:0 width:kNum height:kColumn];
}

- (void)printMatrixInClockwiseCore:(int *)tempArr beginX:(int)beginX beginY:(int)beginY width:(int)width height:(int)height {
    static const int kNum = 4;
    static const int kColumn = 4;
    int arr[kNum][kColumn] = {
        {1, 2, 3, 4},
        {5, 6, 7, 8},
        {9, 10, 11, 12},
        {13, 14, 15, 16}
    };
    if (width <= 0 || height <= 0 || beginY < 0 || beginX < 0) {
        return;
    }
    
    int result = 0;
    int num = 0;
    for (num = beginX; num < beginX + width; num++) {
        NSLog(@"%d", arr[beginY][num]);
    }
    result = num-1;
    if (height > 1) {
        for (num = beginY+1; num < beginY + height; ++num) {
            NSLog(@"%d", arr[num][result]);
        }
        result = num-1;
        if (width > 1) {
            for (num = result-1; num >= beginX; num--) {
                NSLog(@"%d", arr[result][num]);
            }
            result = num+1;
        }
        
        if (width > 2) {
            for (num = beginY+height-2; num >= beginY+1; num--) {
                NSLog(@"%d", arr[num][beginX]);
            }
            result = num+1;
        }
    }
    
    [self printMatrixInClockwiseCore:tempArr beginX:beginX+1 beginY:beginY+1 width:width-2 height:height-2];
    
}

//剑指 Offer 第二版 面试题30
- (void)printMinStackWithO1 {
    MinStack *minStack = [[MinStack alloc] init];
    [minStack push:1];
    [minStack push:4];
    [minStack push:3];
    NSLog(@"min = %ld", [minStack min]);
}

//剑指 Offer 第二版 面试题31
- (BOOL)checkRightPop {
    NSArray<NSNumber *> *inArray = @[@1, @2, @3, @4, @5];
    NSArray<NSNumber *> *outArray = @[@4, @5, @3, @2, @1];
    outArray = @[@4, @3, @5, @1, @2];
    int curIndex = 0;
    NSMutableArray<NSNumber *> *tempMArray = [NSMutableArray new];
    int num = 0;
    for (num = 0; num < inArray.count; ++num) {
        [tempMArray addObject:inArray[num]];
        while (1) {
            NSNumber *lastValue = tempMArray.lastObject;
            if (lastValue == nil) {
                break;
            }
            if (outArray.count <= curIndex) {
                break;
            }
            NSNumber *outValue = outArray[curIndex];
            if (outValue.integerValue == lastValue.integerValue) {
                [tempMArray removeLastObject];
                curIndex++;
            }
            else {
                break;
            }
        }
        if (outArray.count == curIndex) {
            break;
        }
    }
    if (num+1 == inArray.count && curIndex == outArray.count) {
        return YES;
    }
    return NO;
}

//剑指 Offer 第二版 面试题32
- (void)printBinaryTreeInLevel {
    BinaryTreeNode *parentTree = [[BinaryTreeNode alloc] init];
    parentTree.mKey = 8;
    
    BinaryTreeNode *tempNode1 = [[BinaryTreeNode alloc] init];
    tempNode1.mKey = 6;
    parentTree.mLeft = tempNode1;
    
    BinaryTreeNode *tempNode2 = [[BinaryTreeNode alloc] init];
    tempNode2.mKey = 10;
    parentTree.mRight = tempNode2;
    
    BinaryTreeNode *tempNode3 = [[BinaryTreeNode alloc] init];
    tempNode3.mKey = 5;
    tempNode1.mLeft = tempNode3;
    
    BinaryTreeNode *tempNode4 = [[BinaryTreeNode alloc] init];
    tempNode4.mKey = 7;
    tempNode1.mRight = tempNode4;
    
    BinaryTreeNode *tempNode5 = [[BinaryTreeNode alloc] init];
    tempNode5.mKey = 9;
    tempNode2.mLeft = tempNode5;
    
    BinaryTreeNode *tempNode6 = [[BinaryTreeNode alloc] init];
    tempNode6.mKey = 11;
    tempNode2.mRight = tempNode6;
    
    [self printBinaryTreeInLevelCore:parentTree];
}

- (void)printBinaryTreeInLevelCore:(BinaryTreeNode *)tree {
    NSMutableArray<BinaryTreeNode *> *array = [NSMutableArray array];
    if (array.count == 0) {
        [array addObject:tree];
    }
    NSInteger index = 0;
    while (1) {
        if (array.count > index) {
            BinaryTreeNode *item = array[index];
            if (item.mLeft) {
                [array addObject:item.mLeft];
            }
            if (item.mRight) {
                [array addObject:item.mRight];
            }
        }
        else {
            break;
        }
        index++;
    }
    for (BinaryTreeNode *item in array) {
        NSLog(@"%d", item.mKey);
    }
}

//剑指 Offer 第二版 面试题32 题目二
- (void)printBinaryTreeInLevelWithFormat {
    BinaryTreeNode *parentTree = [[BinaryTreeNode alloc] init];
    parentTree.mKey = 8;
    
    BinaryTreeNode *tempNode1 = [[BinaryTreeNode alloc] init];
    tempNode1.mKey = 6;
    parentTree.mLeft = tempNode1;
    
    BinaryTreeNode *tempNode2 = [[BinaryTreeNode alloc] init];
    tempNode2.mKey = 10;
    parentTree.mRight = tempNode2;
    
    BinaryTreeNode *tempNode3 = [[BinaryTreeNode alloc] init];
    tempNode3.mKey = 5;
    tempNode1.mLeft = tempNode3;
    
    BinaryTreeNode *tempNode4 = [[BinaryTreeNode alloc] init];
    tempNode4.mKey = 7;
    tempNode1.mRight = tempNode4;
    
    BinaryTreeNode *tempNode5 = [[BinaryTreeNode alloc] init];
    tempNode5.mKey = 9;
    tempNode2.mLeft = tempNode5;
    
    BinaryTreeNode *tempNode6 = [[BinaryTreeNode alloc] init];
    tempNode6.mKey = 11;
    tempNode2.mRight = tempNode6;
    
    [self printBinaryTreeInLevelCore:parentTree];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
