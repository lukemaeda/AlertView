//
//  ViewController.m
//  AlertView
//
//  Created by kunren10 on 2014/03/04.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
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

#pragma mark - Action Method

// [通知（ボタン１つ）]ボタン押す
- (IBAction)proc01:(id)sender{
    
    // アラートビューの生成、設定
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"通知"
                                                 message:@"処理が終了しました。\nOKを押してください。"
                                                delegate:self
                                       cancelButtonTitle:nil
                                       otherButtonTitles:@"OK", nil];
    // 設定
    av.tag = 10;
    
    // 表示
    [av show];
}

// [確認（ボタン２つ）]ボタン押す
- (IBAction)proc02:(id)sender{
    
    // アラートビューの生成、設定
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"確認"
                                                 message:@"実行しますか？"
                                                delegate:self
                                       cancelButtonTitle:@"キャンセル"
                                       otherButtonTitles:@"OK", nil];
    // 設定
    av.tag = 20;
    
    // 表示
    [av show];
}

// [選択（ボタンたくさん）]ボタン押す
- (IBAction)proc03:(id)sender{
    
    // アラートビューの生成、設定
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"選択"
                                                 message:@"選択してください。"
                                                delegate:self
                                       cancelButtonTitle:@"キャンセル"
                                       otherButtonTitles:@"男",@"女",@"その他", nil];
    // 設定
    av.tag = 30;

    // 表示
    [av show];
}

#pragma mark - UIAlertViewDelegate Method
// アラートビュー　ボタン押した時
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    //NSString *str = [NSString stringWithFormat:@"ボタン番号：%d", buttonIndex];
    NSLog(@"タグ番号：%ld", (long)alertView.tag);
    NSLog(@"ボタン番号：%ld", (long)buttonIndex);
    
    NSString *str = [NSString stringWithFormat:@"タグ番号：%ld\nボタン番号：%ld,", (long)alertView.tag,  (long)buttonIndex];
    
    // アラートビューの生成、設定
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@""
                                                 message:str
                                                delegate:nil
                                       cancelButtonTitle:@"キャンセル"
                                       otherButtonTitles:@"OK", nil];
    
    // delegate:selfの場合は連続表示になる。
    // delegate:nilの場合は連続表示はしない。delegateを使用しているから。
    
    // 表示
    [av show];
}

@end
