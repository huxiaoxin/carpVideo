//
//  AppDelegate+SafeApp.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import "AppDelegate+SafeApp.h"
#import "CarpVideoCatagoryModel.h"
#import "CarpVideoCatagoryDetailModel.h"
#import "carpVideoMessageModel.h"
#import "carpVideoMessageDetailModel.h"
#import "carpVideoAcitytyModel.h"
#import "CarpVideoHomeModels.h"
#import "carpVideoRemneAdviceModel.h"
@implementation AppDelegate (SafeApp)
+(void)AppDelegateConfiguartionsafe{
    [self CarpVieoConfigers];
    [self CarpVideoConfigerCAtagroyMoels];
    [self CarpVideoCatagoryDetailModelConfigs];
    [self CarpViewMessageModelsConfigs];
    [self CarpVideoMessagDetailModelCofnis];
    [self CarpVideoRemenComentConfigurs];
    [self CarpVideoActityConfigs];
}
+(void)CarpVideoRemenComentConfigurs{
    NSMutableArray * tempArr= [NSMutableArray array];
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://pic1.zhimg.com/v2-79d6a12ebabd2e4fbe539b7d539d143d_l.jpg" FilmName:@"关学文" mytime:@"06-18 12:00:21" MyFilmID:0 MyComentID:0 CellHeight:0 myContent:@"千万别带脑袋去，有双眼睛和耳朵就够了。三四十块去消磨时间还是可以看看的。" strarNum:4]];
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://pic3.zhimg.com/v2-d922800ac8b1b2b94a66547a36f55a2c_xll.jpg" FilmName:@"甲子光年" mytime:@"06-18 16:12:21" MyFilmID:0 MyComentID:1 CellHeight:0 myContent:@"我的青春啊~" strarNum:3]];
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://pic1.zhimg.com/v2-c618601628277da8243718cedcf60a9e_xll.jpg" FilmName:@"顾不得" mytime:@"06-22 13:21:51" MyFilmID:1 MyComentID:2 CellHeight:0 myContent:@"只想知道最后有没有成为牺牲自我的伏地魔" strarNum:4]];
    
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://pic4.zhimg.com/v2-34553b9c1e506871df0124cf98ee956a_xll.jpg" FilmName:@"蒸汽凤梨" mytime:@"06-18 10:26:32" MyFilmID:1 MyComentID:3 CellHeight:0 myContent:@"这是一部现实题材的亲情电影，生长在重男轻女的家庭，一个追求独立自我、拼尽全力想挣脱束缚的姐姐，在面对才四五岁的“拖油瓶”弟弟时，展现出内心矛盾与拉扯，自己的未来与亲情的纽带，都十分复杂和深刻。" strarNum:3]];
    
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://pic3.zhimg.com/v2-62de93f10dfe6ddb59386b6871773648_xll.jpg" FilmName:@"DX-3906" mytime:@"06-14 12:15:51" MyFilmID:2 MyComentID:4 CellHeight:0 myContent:@"《指环王2：双塔奇兵》在很好的继承了首部风格的基础上，更为庞大的史诗观，数条线索多线发展的电影格局在导演之手游刃有余，如果说《指环王》的首秀是开篇，终章是特效的盛宴，那么承上启下的《双塔奇兵》则是构筑了最为精彩的剧情。 " strarNum:5]];
    
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://pic1.zhimg.com/v2-825e9d3f0ddfbe5fdb930f1608f29823_xll.jpg" FilmName:@"苏乐爱写作" mytime:@"06-15 16:33:24" MyFilmID:2 MyComentID:5 CellHeight:0 myContent:@"Jackson创造的中土世界以一种近乎真实的存在呈现在大家面前，多线的叙事利用传统蒙太奇的剪辑使每条主线的转换异常顺畅，本集中人物维度进一步丰满，一再被蛊惑心志的Frodo，严重分裂的咕噜，还有伟大的园丁Sam，他如是说There's" strarNum:3]];
    
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://pic4.zhimg.com/v2-f34c24b0db20145e5f40e63b68e3cf4e_xll.jpg" FilmName:@"小糖包" mytime:@"06-21 18:24:11" MyFilmID:3 MyComentID:6 CellHeight:0 myContent:@"柯学已经下马，八百里狙击赤井秀一永远的神！柯学已经不足，全能大百科宫野志保永远的神！柯学已经不足，最强大脑的羽田秀吉永远的神！柯学已经不足，初中身体干翻秀一的玛丽永远的神！" strarNum:3]];
    
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://pic4.zhimg.com/v2-29dbaeef71477a9b5cf9fc3c38048ed4_xll.jpg" FilmName:@"Nancy" mytime:@"06-19 15:26:51" MyFilmID:4 MyComentID:7 CellHeight:0 myContent:@"那就是周显扬导演、杜致朗编剧、王凯、杨祐宁、古天乐、古力娜扎、韩庚等主演的《真三国无双》。" strarNum:4]];
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://pic4.zhimg.com/v2-4daf0a4b4d6e44958b9cf42496fb8e7c_xll.jpg" FilmName:@"阿婧不是阿倩" mytime:@"06-20 10:16:36" MyFilmID:4 MyComentID:8 CellHeight:0 myContent:@"看到周显扬我快笑死了，他拍的黄飞鸿英雄有梦是部无法形容的烂片……里面的台词确实有三国无双的中二风……" strarNum:3]];
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://pic1.zhimg.com/v2-4913281c3644c45ff54e6b0c440cf031_l.jpg?source=1940ef5c" FilmName:@"旧小鸽" mytime:@"06-16 12:24:17" MyFilmID:5 MyComentID:9 CellHeight:0 myContent:@"我觉得这部电影不应该叫《八月未央》，应该叫《小乔与未央》、或者叫《一个资深渣男引发的血案》。本年度最佳雷剧奖非它莫属。" strarNum:5]];
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://pic1.zhimg.com/v2-6d2f78388f2ec7e4e7406e92db700b8c_l.jpg?source=1940ef5c" FilmName:@"表姐电影" mytime:@"06-18 11:25:25" MyFilmID:5 MyComentID:10 CellHeight:0 myContent:@"这烂片我看吐了......朋友们，周末我去看了钟楚曦、罗晋和谭松韵主演的新片《八月未央》。" strarNum:4]];
    
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://img9.doubanio.com/icon/u2012686-4.jpg" FilmName:@"简洁" mytime:@"06-19 12:11:36" MyFilmID:6 MyComentID:11 CellHeight:0 myContent:@"疤面给人一种惊悚的感觉，其实这种可怖、迷幻的具象化，恰恰是梦的特征，因为梦就是跨越时空的，也是超越现实的。" strarNum:3]];
    
    
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://img9.doubanio.com/icon/u142691699-4.jpg" FilmName:@"奥利via" mytime:@"06-22 10:25:31" MyFilmID:6 MyComentID:12 CellHeight:0 myContent:@"这部电影故事内核极其NB，电影想象力拉满，还引入了关于精神分析、心理学、讲了一个关于【梦中取物】的奇幻故事：" strarNum:4]];
    
    
    
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://img9.doubanio.com/icon/up81845264-144.jpg" FilmName:@"闲散人士2021" mytime:@"06-20 12:11:36" MyFilmID:7 MyComentID:13 CellHeight:0 myContent:@"自《大圣归来》之后观众对孙悟空，哪吒等神话人物IP的审美疲劳已经到了一个即将爆发的点，但是其实《西游记之再世妖王》是继《大圣归来》之后，这五年里第二部以西游主题，孙悟空为主角的登上大荧幕的动画电影，也就是说，这些年动画电影并没有太多用西游IP来讲故事的，其他真人电影与网剧倒是有不少用了西游IP，所以才给观众留下了此IP出现如此频繁的印象。" strarNum:5]];
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://img1.doubanio.com/icon/up15688911-8.jpg" FilmName:@"芋泥啵啵不加冰" mytime:@"06-20 16:21:18" MyFilmID:7 MyComentID:14 CellHeight:0 myContent:@"前面孙悟空大闹五庄观的部分，因为前面太过遵守原著，反倒显得孙悟空有点蛮不讲理，作为一部商业电影，我觉得改编不够巧妙" strarNum:4]];
    
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://img9.doubanio.com/icon/up198705611-5.jpg" FilmName:@"不加辣" mytime:@"06-21 15:17:21" MyFilmID:8 MyComentID:15 CellHeight:0 myContent:@"一艘被当时誉为“世上最豪华”的邮轮，泰坦尼克号，于1912年4月10日从英国南安普顿出发驶往美国纽约。所有人都说它“永不沉没”，然而它却永远的沉入在北大西洋冰冷的深海里，1517具亡灵随之而去..." strarNum:3]];
    
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://img9.doubanio.com/icon/up2009497-36.jpg" FilmName:@"王大璋" mytime:@"06-21 17:36:19" MyFilmID:8 MyComentID:16 CellHeight:0 myContent:@"Almost six years ago, my friend Steven Schwankert came to me and suggested that we make a documentary about the Chinese survivors of Titanic. “There were Chinese people on Titanic?!” was my immediate reaction. It’s a sentence I’ve heard a lot in the years since, pretty much every time we have told people about the film we are working on. And it is the fact that no one seemed to know about the Chinese on board the most famous shipwreck of all time that spurred us on to finish what at times seemed like an impossible task." strarNum:4]];
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://img2.doubanio.com/icon/up138581758-1.jpg" FilmName:@"老山" mytime:@"06-21 18:14:21" MyFilmID:9 MyComentID:17 CellHeight:0 myContent:@"故事围绕冰雪世界里一场精彩的雪橇比赛展开，意外的失败发掘出了赛事背后的黑幕，弄虚作假、偷奸耍滑注定遭人唾弃，团结友爱、齐心协作才是正道。影片没有刻意说教，在诙谐幽默的气氛中让人不知不觉接受为人处世的正确态度，孩子的三观教育需要从小培养，建议家长带着小孩子一起来观看。充满正能量的片子还是太少了，这一部弥足珍贵！" strarNum:4]];
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://img2.doubanio.com/icon/up154087440-1.jpg" FilmName:@"虞子酱20" mytime:@"06-24 12:56:21" MyFilmID:13 MyComentID:18 CellHeight:0 myContent:@"空王冠”之后，多米尼克·库克导演和本尼迪克特·康伯巴奇又合作了一部《信使》，不同于此前莎翁作品改编的理查三世、亨利六世等遥远故事，《信使》聚焦的是上个世纪中期的一场危机。" strarNum:5]];
    
    [tempArr addObject:[self CarpVieoRemenComentConfigarWithHeaderImgUrl:@"https://img2.doubanio.com/icon/up188671340-3.jpg" FilmName:@"相机阿飞" mytime:@"06-21 15:21:56" MyFilmID:15 MyComentID:19 CellHeight:0 myContent:@"影片不是在讨论技术问题，而是创造这样情形来探讨人性问题，如果只能用个体的生命来保全群体的安危，那也许我们唯一能接受的就是这种在一同努力后最终不得已的个人牺牲，且必须是个体心甘情愿的付出，这是人性的最低底线，而群体中有没有甘愿牺牲的人，则就是这个群体的命运所在了。" strarNum:5]];
    
    
    
    BOOL filmComentStatus = [[NSUserDefaults standardUserDefaults] boolForKey:@"carpVideoComentadd"];
    if (filmComentStatus == NO) {
        BOOL isSucded =    [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:isSucded forKey:@"carpVideoComentadd"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
}
+(void)CarpVieoConfigers{
    NSMutableArray * tempArr = [NSMutableArray array];
    CarpVideoHomeModels * carpmodelItem = [[CarpVideoHomeModels alloc]init];
    carpmodelItem.carp_starNum = 4;
    carpmodelItem.iswantWatching = YES;
    carpmodelItem.watchingNum = @"3亿";
    carpmodelItem.shangyinNum = 2;
    carpmodelItem.total_Num = 5;
    carpmodelItem.carpVideoImgThub = @"https://img2.doubanio.com/view/photo/m/public/p2641811991.jpg";
    carpmodelItem.carpVideoHomeName = @"招魂3";
    carpmodelItem.carpVideoEngName  =@"he Conjuring: The Devil Made Me Do It";
    carpmodelItem.carpVideoHomeType = @"悬疑 / 惊悚 / 恐怖";
    carpmodelItem.carpVideoHomeArtislist = @"Michael Chaves/Patrick Wilson/Vera Farmiga/Ruairi O'Connor";
    carpmodelItem.carpVideoSourcestar_five =0.6;
    carpmodelItem.carpVieoHomestar_foure =0.4;
    carpmodelItem.carpVideoHomestare_three =0.3;
    carpmodelItem.carpVideoHomeestar_two =0.1;
    carpmodelItem.carpVideoMoviewstar_one =0.3;
    carpmodelItem.carpVideo_isCollected = YES;
    carpmodelItem.carpVideoHome_listArr = @[@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/paODMoGHKMKccel_avatar_uploaded1538632505.51.jpg",@"title":@"Michael Chaves"},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1386481612.26.jpg",@"title":@"Patrick Wilson"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p11871.jpg",@"title":@"Vera Farmiga"},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1557891717.14.jpg",@"title":@"Ruairi O'Connor"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/ptVPy83bhBzAcel_avatar_uploaded1593854802.32.jpg",@"title":@"Sarah Catherine Hook"}];
    carpmodelItem.carpVideoHome_intrduce = @"故事取材自1981年轰动全美的真实谋杀案，凶手亚恩·夏安·约翰逊杀死房东后声称自己是被邪灵附体才会行凶，是美国历史上首个被告以「鬼上身」作抗辩理由的案例，因此称为「恶魔谋杀案」。11岁男孩大卫被邪灵附体，陷入混沌状态，经常看见怪兽恶魔坐在他喜欢的摇椅上，而他身上更出现 离奇伤痕…受惊且束手无策的家人请来沃伦夫妇介入调查，他们发现大卫被43只恶魔缠身，使乖巧的他行为变得异常，例如像野兽般在地上爬行、胡言乱语甚至背诵他没有读过的圣经及《失乐园》章节…沃伦夫妇遂安排神父为大卫驱魔，可惜未见起色，而更诡异的事情接踵而来，大卫姐姐的未婚夫亚恩也开始行为异常，数月后，亚恩更以利刀刺死了房东。华伦夫妇认为亚恩行凶时被恶灵附身，原来大卫进行驱魔时，亚恩也在现场……";
    carpmodelItem.carpVideoHome_soureNums = 23665;
    carpmodelItem.carpVideoHomes_DBNums = 9.1;
    carpmodelItem.caprVideHome_ID = 0;
    carpmodelItem.carpVideoHomes_tagOne= @"动作";
    carpmodelItem.carpVideoHome_tagtwo = @"犯罪";
    carpmodelItem.time = @"2021-05-26";
    carpmodelItem.Top_filmType = 0;
    [tempArr addObject:carpmodelItem];
    
    
    CarpVideoHomeModels * carpmodelItem1 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem1.carp_starNum = 5;
    carpmodelItem1.iswantWatching = NO;
    carpmodelItem1.watchingNum = @"2.42亿";
    carpmodelItem1.shangyinNum = 0;
    carpmodelItem1.total_Num = 3;
    carpmodelItem1.carpVideoImgThub = @"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2521660018.jpg";
    carpmodelItem1.carpVideoHomeName = @"疯了，因为你！";
    carpmodelItem1.carpVideoEngName  =@"You Drive Me Crazy";
    carpmodelItem1.carpVideoHomeType = @"悬疑 / 惊悚";
    carpmodelItem1.carpVideoHomeArtislist = @"郭富城 / 段奕宏 / 张子枫 / 许玮甯 / 荣梓杉 / 王圣迪";
    carpmodelItem1.carpVideoSourcestar_five =0.8;
    carpmodelItem1.carpVieoHomestar_foure =0.3;
    carpmodelItem1.carpVideoHomestare_three =0.5;
    carpmodelItem1.carpVideoHomeestar_two =0.2;
    carpmodelItem1.carpVideoMoviewstar_one =0.1;
    carpmodelItem1.carpVideo_isCollected = NO;
    carpmodelItem1.carpVideoHome_listArr = @[@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1553147335.58.jpg",@"title":@"陈正道"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p29009.jpg",@"title":@"郭富城"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1514470669.12.jpg",@"title":@"段奕宏"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1465826349.1.jpg",@"title":@"张子枫"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1513228749.68.jpg",@"title":@"许玮甯"},@{@"img":@"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1593688210.0.jpg",@"title":@"荣梓杉"}];
    carpmodelItem1.carpVideoHome_intrduce = @"该剧是讲述男女之间的爱情和友情的爱情剧，讲述8年里一直都是朋友的两个男女因为一夜情而发生的感情变化。 李裕英将在剧中饰演男主金来菀8年的女性朋友、法语同声传译韩恩星一角，是一个朝气蓬勃，无法预测她下一秒会做什么的角色。 金善浩饰演金来菀，他是外貌和性格兼具、前途无量的画家，同时也是韩恩星唯一的男性朋友。他具备来者不拒的自由灵魂，某一天他和一直以来完全不把她当女人看待的韩恩星经历了一次突发事件之后，恋爱、创作都不如意了，陷入了低谷并领悟了真爱";
    carpmodelItem1.carpVideoHome_soureNums = 6361;
    carpmodelItem1.carpVideoHomes_DBNums = 6.4;
    carpmodelItem1.caprVideHome_ID = 1;
    carpmodelItem1.carpVideoHomes_tagOne= @"剧情";
    carpmodelItem1.carpVideoHome_tagtwo = @"家庭";
    carpmodelItem1.time = @"2021-05-02(内地)";
    carpmodelItem1.Top_filmType = 0;
    [tempArr addObject:carpmodelItem1];
    
    
    
    CarpVideoHomeModels * carpmodelItem2 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem2.carp_starNum = 4;
    carpmodelItem2.iswantWatching = NO;
    carpmodelItem2.watchingNum = @"3.65亿";
    carpmodelItem2.shangyinNum = 12;
    carpmodelItem2.total_Num = 4;
    carpmodelItem2.carpVideoImgThub = @"https://img2.doubanio.com/view/photo/m/public/p2649579601.jpg";
    carpmodelItem2.carpVideoHomeName = @"老友记重聚特辑 ";
    carpmodelItem2.carpVideoEngName  =@"Friends: The Reunion";
    carpmodelItem2.carpVideoHomeType = @"动作 剧情 冒险";
    carpmodelItem2.carpVideoHomeArtislist = @" 詹妮弗·安妮斯顿 / 柯特妮·考克斯 / 马修·派瑞 / 大卫·休默 / 丽莎·库卓 / 马特·勒布朗 / 瑞茜·威瑟斯彭 / Lady Gaga / 大卫·贝克汉姆 / 贾斯汀·比伯";
    carpmodelItem2.carpVideoSourcestar_five =0.9;
    carpmodelItem2.carpVieoHomestar_foure =0.5;
    carpmodelItem2.carpVideoHomestare_three =0.3;
    carpmodelItem2.carpVideoHomeestar_two =0.2;
    carpmodelItem2.carpVideoMoviewstar_one =0.1;
    carpmodelItem2.carpVideo_isCollected = NO;
    carpmodelItem2.carpVideoHome_listArr = @[@{@"img":@"hhttps://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/pmT33o52pgs8cel_avatar_uploaded1612853691.32.jpg",@"title":@"本·温斯顿"},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1034.jpg",@"title":@"詹妮弗·安妮斯顿"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p46142.jpg",@"title":@"柯特妮·考克斯"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p29547.jpg",@"title":@"马修·派瑞"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p8253.jpg",@"title":@"大卫·休默"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p46141.jpg",@"title":@"丽莎·库卓"}];
    carpmodelItem2.carpVideoHome_intrduce = @"《老友记》主演詹妮弗·安妮斯顿、柯特妮·考克斯、丽莎·库卓、马特·勒布朗、马修·佩里和大卫·施维默回到了这部标志性喜剧的原声舞台--第24号摄影棚，在伯班克的华纳兄弟制片厂为这部深受喜爱的电视剧举行了一场真实的无剧本庆祝活动。";
    carpmodelItem2.carpVideoHome_soureNums = 83192;
    carpmodelItem2.carpVideoHomes_DBNums = 8.9;
    carpmodelItem2.caprVideHome_ID = 2;
    carpmodelItem2.carpVideoHomes_tagOne= @"动作";
    carpmodelItem2.carpVideoHome_tagtwo = @"剧情";
    carpmodelItem2.time = @"2021-05-27(美国)";
    carpmodelItem2.Top_filmType = 0;
    [tempArr addObject:carpmodelItem2];
    
    
    
    CarpVideoHomeModels * carpmodelItem3 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem3.carp_starNum = 3;
    carpmodelItem3.iswantWatching = NO;
    carpmodelItem3.watchingNum = @"2.41亿";
    carpmodelItem3.shangyinNum = 0;
    carpmodelItem3.total_Num = 3;
    carpmodelItem3.carpVideoImgThub = @"https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2655492682.jpg";
    carpmodelItem3.carpVideoHomeName = @"无限 Infinite";
    carpmodelItem3.carpVideoEngName  =@"转世文献";
    carpmodelItem3.carpVideoHomeType = @" 科幻 / 惊悚";
    carpmodelItem3.carpVideoHomeArtislist = @" 马克·沃尔伯格 / 迪伦·奥布莱恩 / 杰森·曼楚克斯 / 鲁伯特·弗兰德 / 索菲·库克森 / 切瓦特·埃加福 / 托比·琼斯 / 沃利斯·戴 / 汤姆·休斯";
    carpmodelItem3.carpVideoSourcestar_five =0.6;
    carpmodelItem3.carpVieoHomestar_foure =0.2;
    carpmodelItem3.carpVideoHomestare_three =0.2;
    carpmodelItem3.carpVideoHomeestar_two =0.1;
    carpmodelItem3.carpVideoMoviewstar_one =0.1;
    carpmodelItem3.carpVideo_isCollected = NO;
    carpmodelItem3.carpVideoHome_listArr = @[@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p4108.jpg",@"title":@"安东尼·福奎阿 "},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1407766093.88.jpg",@"title":@"安马克·沃尔伯格"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p53688.jpg",@"title":@"Dylan O'Brien"},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1570130343.96.jpg",@"title":@"杰森·曼楚克斯"},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1355313910.94.jpg",@"title":@"鲁伯特·弗兰德"},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1425323383.66.jpg",@"title":@"索菲·库克森"}];
    carpmodelItem3.carpVideoHome_intrduce = @"　改编自D. Eric Maikranz所著小说《转世文献》(The Rein carnationist Papers)，聚焦一个被自己前两世的记忆缠绕的男子，引出一群几乎长生不死、几世纪来多次转生的人，被称为“无限/无穷之人”，他们的组织叫“Cognomina”。为了打败想毁灭地球的邪恶力量，他们必须依靠这个精神分裂的男子，而后者先要搞清楚：他常做的奇怪的梦都是前世的记忆。";
    carpmodelItem3.carpVideoHome_soureNums =68317;
    carpmodelItem3.carpVideoHomes_DBNums = 6.4;
    carpmodelItem3.caprVideHome_ID = 3;
    carpmodelItem3.carpVideoHomes_tagOne= @"科幻";
    carpmodelItem3.carpVideoHome_tagtwo = @"惊悚";
    carpmodelItem3.time = @"2021-06-10(美国)";
    carpmodelItem3.Top_filmType = 0;
    [tempArr addObject:carpmodelItem3];
    
    
    
    CarpVideoHomeModels * carpmodelItem4 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem4.carp_starNum = 4;
    carpmodelItem4.iswantWatching = NO;
    carpmodelItem4.watchingNum = @"2.54亿";
    carpmodelItem4.shangyinNum = 0;
    carpmodelItem4.total_Num = 4;
    carpmodelItem4.carpVideoImgThub = @"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2623798236.jpg";
    carpmodelItem4.carpVideoHomeName = @"鬼灭之刃 剧场版 ";
    carpmodelItem4.carpVideoEngName  =@"Demon Slayer -Kimetsu No Yaiba- The Movie: Mugen Train / Kimetsu no Yaiba: Mugen Ressha-Hen";
    carpmodelItem4.carpVideoHomeType = @"动画";
    carpmodelItem4.carpVideoHomeArtislist = @" 花江夏树 / 鬼头明里 / 下野纮 / 松冈祯丞 / 日野聪 / 平川大辅 / 石田彰 / 樱井孝宏 / 小西克幸 / 早见沙织 / 铃村健一 / 关智一";
    carpmodelItem4.carpVideoSourcestar_five =0.5;
    carpmodelItem4.carpVieoHomestar_foure =0.4;
    carpmodelItem4.carpVideoHomestare_three =0.1;
    carpmodelItem4.carpVideoHomeestar_two =0.1;
    carpmodelItem4.carpVideoMoviewstar_one =0.1;
    carpmodelItem4.carpVideo_isCollected = YES;
    carpmodelItem4.carpVideoHome_listArr = @[@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1596443252.88.jpg",@"title":@"外崎春雄 "},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1502065915.06.jpg",@"title":@"花江夏树"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1500952619.29.jpg",@"title":@"鬼头明里"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p10281.jpg",@"title":@"下野纮 "},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p51215.jpg",@"title":@"日野聪 "}];
    carpmodelItem4.carpVideoHome_intrduce = @"该片基于吾峠呼世所著漫画《鬼灭之刃》创作而成，是2019年播出的TV动画的续篇，讲述灶门炭治郎和炼狱杏寿郎与下弦之壹魇梦作战的故事。";
    carpmodelItem4.carpVideoHome_soureNums = 2152;
    carpmodelItem4.carpVideoHomes_DBNums = 6.9;
    carpmodelItem4.caprVideHome_ID = 4;
    carpmodelItem4.carpVideoHomes_tagOne= @"动画";
    carpmodelItem4.carpVideoHome_tagtwo = @"";
    carpmodelItem4.time = @"2021-10-16(日本)";
    carpmodelItem4.Top_filmType = 0;
    [tempArr addObject:carpmodelItem4];
    
    
    CarpVideoHomeModels * carpmodelItem5 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem5.carp_starNum = 3;
    carpmodelItem5.iswantWatching = NO;
    carpmodelItem5.watchingNum = @"2.56亿";
    carpmodelItem5.shangyinNum = 0;
    carpmodelItem5.total_Num = 2;
    carpmodelItem5.carpVideoImgThub = @"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2654531984.jpg";
    carpmodelItem5.carpVideoHomeName = @"鬼吹灯之黄皮子坟 ";
    carpmodelItem5.carpVideoEngName  =@"the tomb of ghost mojin";
    carpmodelItem5.carpVideoHomeType = @"悬疑 / 奇幻";
    carpmodelItem5.carpVideoHomeArtislist = @"周澄奥 / 杨冬麒 / 孙雅丽 / 赵梓冲 / 刘超";
    carpmodelItem5.carpVideoSourcestar_five =0.5;
    carpmodelItem5.carpVieoHomestar_foure =0.4;
    carpmodelItem5.carpVideoHomestare_three =0.1;
    carpmodelItem5.carpVideoHomeestar_two =0.1;
    carpmodelItem5.carpVideoMoviewstar_one =0.1;
    carpmodelItem5.carpVideo_isCollected = NO;
    carpmodelItem5.carpVideoHome_listArr = @[@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1559138108.22.jpg",@"title":@"陈聚力"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1510934329.67.jpg",@"title":@"周澄奥"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1541577098.37.jpg",@"title":@"杨冬麒"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1594667257.02.jpg",@"title":@"孙雅丽"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1542893254.17.jpg",@"title":@"赵梓冲"},@{@"img":@"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1500897022.0.jpg",@"title":@"刘超"}];
    carpmodelItem5.carpVideoHome_intrduce = @"神秘雪山脚下，因触怒黄大仙，女孩突然中邪变异。为救伙伴胡八一误闯千年黄府，异事不绝的地下诡宅竟阴门大开、灯火通明。一探黄仙庙破纸人屠村之谜、二解黄仙吊魂之法、三斩邪灵刺破满堂高坐“诡”戏飘，台上戏子咿呀唱戏，台下看客双目圆睁无痛无绝，带着深积的怨气，向着胡八一几人步步逼近……";
    carpmodelItem5.carpVideoHome_soureNums = 31763;
    carpmodelItem5.carpVideoHomes_DBNums = 6.9;
    carpmodelItem5.caprVideHome_ID = 5;
    carpmodelItem5.carpVideoHomes_tagOne= @":悬疑";
    carpmodelItem5.carpVideoHome_tagtwo = @"奇幻";
    carpmodelItem5.time = @"2021-06-05(内地)";
    carpmodelItem5.Top_filmType = 0;
    [tempArr addObject:carpmodelItem5];
    
    
    CarpVideoHomeModels * carpmodelItem6 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem6.carp_starNum = 4;
    carpmodelItem6.iswantWatching = NO;
    carpmodelItem6.watchingNum = @"1.23亿";
    carpmodelItem6.shangyinNum = 0;
    carpmodelItem6.total_Num = 4;
    carpmodelItem6.carpVideoImgThub = @"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2634797286.jpg";
    carpmodelItem6.carpVideoHomeName = @"兹山鱼谱";
    carpmodelItem6.carpVideoEngName  =@"자산어보";
    carpmodelItem6.carpVideoHomeType = @"剧情 / 历史 / 古装";
    carpmodelItem6.carpVideoHomeArtislist = @"薛景求 / 卞约汉 / 李姃垠 / 敏度希 / 柳承龙";
    carpmodelItem6.carpVideoSourcestar_five =0.6;
    carpmodelItem6.carpVieoHomestar_foure =0.4;
    carpmodelItem6.carpVideoHomestare_three =0.1;
    carpmodelItem6.carpVideoHomeestar_two =0.1;
    carpmodelItem6.carpVideoMoviewstar_one =0.1;
    carpmodelItem6.carpVideo_isCollected = NO;
    carpmodelItem6.carpVideoHome_listArr = @[@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1451911358.49.jpg",@"title":@"李濬益"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1403416347.83.jpg",@"title":@"薛景求"},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1421243703.66.jpg",@"title":@"卞约汉"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p2WuehRBlEiIcel_avatar_uploaded1458916285.83.jpg",@"title":@"李姃垠"},@{@"img":@"https://img2.doubanio.com/view/celebrity/raw/public/p1412444579.71.jpg",@"title":@"敏度希"}];
    carpmodelItem6.carpVideoHome_intrduce = @"纯祖一年，丁若铨（薛景求饰）因受辛酉迫害事件影响被发配到遥远的黑山岛。来到岛上后，丁若铨对这里的海洋生物产生了浓厚的兴趣，并决定写一本关于海洋生物的书籍。他向在这里土生土长、熟识各种海洋生物的青年渔夫昌大（卞耀汉饰）寻求帮助，但最初昌大因丁若铨是戴罪之身而拒绝。后丁若铨了解到昌大在自学识字的过程中常遇到困难，于是提议将各自擅长的知识教授对方，昌大最终同意，两人也在相互碰撞中成为了彼此的良师益友。然而，丁若铨在得知昌大学习的目的是为仕途后大失所望，昌大也明白两人各有志向，亦师亦友的二人决定分道扬镳";
    carpmodelItem6.carpVideoHome_soureNums = 21312;
    carpmodelItem6.carpVideoHomes_DBNums = 5.3;
    carpmodelItem6.caprVideHome_ID = 6;
    carpmodelItem6.carpVideoHomes_tagOne= @"剧情 ";
    carpmodelItem6.carpVideoHome_tagtwo = @"历史";
    carpmodelItem6.time = @"2021-03-01(韩国)";
    carpmodelItem6.Top_filmType = 0;
    [tempArr addObject:carpmodelItem6];
    
    
    CarpVideoHomeModels * carpmodelItem7 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem7.carp_starNum = 3;
    carpmodelItem7.iswantWatching = NO;
    carpmodelItem7.watchingNum = @"2.01亿";
    carpmodelItem7.shangyinNum = 12;
    carpmodelItem7.total_Num = 5;
    carpmodelItem7.carpVideoImgThub = @"https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2654915204.jpg";
    carpmodelItem7.carpVideoHomeName = @"困在时间里的父亲";
    carpmodelItem7.carpVideoEngName  =@"The Father";
    carpmodelItem7.carpVideoHomeType = @"剧情";
    carpmodelItem7.carpVideoHomeArtislist = @" 安东尼·霍普金斯 / 奥利维娅·科尔曼 / 马克·加蒂斯 / 奥莉维亚·威廉姆斯 / 伊莫琴·普茨 / 卢夫斯·塞维尔 / 阿耶莎·达尔克 / 罗曼·泽勒";
    carpmodelItem7.carpVideoSourcestar_five =0.4;
    carpmodelItem7.carpVieoHomestar_foure =0.2;
    carpmodelItem7.carpVideoHomestare_three =0.1;
    carpmodelItem7.carpVideoHomeestar_two =0.1;
    carpmodelItem7.carpVideoMoviewstar_one =0.1;
    carpmodelItem7.carpVideo_isCollected = NO;
    carpmodelItem7.carpVideoHome_listArr = @[@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1601057938.27.jpg",@"title":@"Florian Zeller"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p19182.jpg",@"title":@"Anthony Hopkins"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1513572425.69.jpg",@"title":@"Olivia Colman"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p41033.jpg",@"title":@"Mark Gatiss"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p27401.jpg",@"title":@"Olivia Williams"}];
    carpmodelItem7.carpVideoHome_intrduce = @"影片以重复加碎片式的感官叙事手法，讲述了年迈且身患疾病的安东尼（安东尼·霍普金斯 Anthony Hopkins 饰）正在面临一项艰难的人生选择——是搬到养老院还是接受女儿寻找的新护工。在这个过程中，安东尼发现自己仿佛进入了一场奇怪的时空之旅，错乱的记忆和时间线交织出一段段匪夷所思的故事，而一个个陌生又熟悉的人也让他陷入迷茫。 ";
    carpmodelItem7.carpVideoHome_soureNums = 3128;
    carpmodelItem7.carpVideoHomes_DBNums = 4.2;
    carpmodelItem7.caprVideHome_ID = 7;
    carpmodelItem7.carpVideoHomes_tagOne= @"剧情";
    carpmodelItem7.carpVideoHome_tagtwo = @"亲情";
    carpmodelItem7.time = @"2021-02-26(美国网络)";
    carpmodelItem7.Top_filmType = 0;
    [tempArr addObject:carpmodelItem7];
    
    //
    CarpVideoHomeModels * carpmodelItem8 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem8.carp_starNum = 4;
    carpmodelItem8.iswantWatching = NO;
    carpmodelItem8.watchingNum = @"3.25亿";
    carpmodelItem8.shangyinNum = 453;
    carpmodelItem8.total_Num = 3;
    carpmodelItem8.carpVideoImgThub = @"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2654767767.jpg";
    carpmodelItem8.carpVideoHomeName = @"了不起的老爸";
    carpmodelItem8.carpVideoEngName  =@"On Your Mark";
    carpmodelItem8.carpVideoHomeType = @"剧情 / 喜剧 / 家庭 / 运动";
    carpmodelItem8.carpVideoHomeArtislist = @"周青元";
    carpmodelItem8.carpVideoSourcestar_five =0.2;
    carpmodelItem8.carpVieoHomestar_foure =0.2;
    carpmodelItem8.carpVideoHomestare_three =0.1;
    carpmodelItem8.carpVideoHomeestar_two =0.1;
    carpmodelItem8.carpVideoMoviewstar_one =0.1;
    carpmodelItem8.carpVideo_isCollected = NO;
    carpmodelItem8.carpVideoHome_listArr = @[@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1409666041.82.jpg",@"title":@"周青元 "},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1529569635.66.jpg",@"title":@"王砚辉"},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1555661588.6.jpg",@"title":@"张宥浩"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1554869246.27.jpg",@"title":@"龚蓓苾"},@{@"img":@"https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1517635414.36.jpg",@"title":@"李俊浩"}];
    carpmodelItem8.carpVideoHome_intrduce = @"一个患有先天疾病却怀有“马拉松梦”的少年肖尔东（张宥浩 饰），一个固执逼迫儿子预习“盲人生活”的出租车司机父亲肖大明（王砚辉 饰），互不理解的父子俩，却在一场马拉松比赛中“互换身份”，并肩站在了起跑线上……影片通过对“命运”持有不同态度的一对单亲家庭父子，讲述了一个用爱向阳而生的故事。";
    carpmodelItem8.carpVideoHome_soureNums = 3131;
    carpmodelItem8.carpVideoHomes_DBNums = 3.1;
    carpmodelItem8.caprVideHome_ID = 8;
    carpmodelItem8.carpVideoHomes_tagOne= @"喜剧";
    carpmodelItem8.carpVideoHome_tagtwo = @"家庭";
    carpmodelItem8.time = @"2021-06-18(中国内地)";
    carpmodelItem8.Top_filmType = 0;
    [tempArr addObject:carpmodelItem8];
    
    CarpVideoHomeModels * carpmodelItem9 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem9.carp_starNum = 4;
    carpmodelItem9.iswantWatching = NO;
    carpmodelItem9.watchingNum = @"1.42亿";
    carpmodelItem9.shangyinNum = 120;
    carpmodelItem9.total_Num = 4;
    carpmodelItem9.carpVideoImgThub = @"https://img9.doubanio.com/view/photo/l/public/p2544299266.jpg";
    carpmodelItem9.carpVideoHomeName = @"身在高地";
    carpmodelItem9.carpVideoEngName  =@"活在上城";
    carpmodelItem9.carpVideoHomeType = @"音乐 / 歌舞";
    carpmodelItem9.carpVideoHomeArtislist = @"施万克";
    carpmodelItem9.carpVideoSourcestar_five =0.6;
    carpmodelItem9.carpVieoHomestar_foure =0.4;
    carpmodelItem9.carpVideoHomestare_three =0.3;
    carpmodelItem9.carpVideoHomeestar_two =0.2;
    carpmodelItem9.carpVideoMoviewstar_one =0.1;
    carpmodelItem9.carpVideo_isCollected = NO;
    carpmodelItem9.carpVideoHome_listArr = @[@{@"img":@"https://img9.doubanio.com/view/celebrity/raw/public/p13216.jpg",@"title":@"朱浩伟"},@{@"img":@"https://img9.doubanio.com/view/celebrity/raw/public/p1603078429.15.jpg",@"title":@"安东尼·拉莫斯"},@{@"img":@"https://img2.doubanio.com/view/celebrity/raw/public/p1j7naqqX-Hscel_avatar_uploaded1518456211.41.jpg",@"title":@"梅丽莎·巴雷拉"}];
    carpmodelItem9.carpVideoHome_intrduce = @"讲述在纽约的华盛顿高地，杂货店老板Usnavi在继承了祖母的财产后，将要关掉店铺回到家乡多米尼加共和国过退休生活，对此他百感交集，而拉美裔社区和那里居民的吸引力让他停下来思考。影片围绕Usnavi、一名大学生、一名出租车司机、一位美容院员工和一个渴望更好生活的老妇人展开，随着中产阶级化开始扎根，闷热夏天中，一场停电让个人危机达到前所未有的高度。";
    carpmodelItem9.carpVideoHome_soureNums = 4241;
    carpmodelItem9.carpVideoHomes_DBNums = 5.7;
    carpmodelItem9.caprVideHome_ID = 9;
    carpmodelItem9.carpVideoHomes_tagOne= @"音乐";
    carpmodelItem9.carpVideoHome_tagtwo = @"歌舞";
    carpmodelItem9.time = @"2021-04-30(内地)";
    carpmodelItem9.Top_filmType = 0;
    [tempArr addObject:carpmodelItem9];
    
    
    
    
    
    CarpVideoHomeModels * carpmodelItem10 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem10.carp_starNum = 3;
    carpmodelItem10.iswantWatching = NO;
    carpmodelItem10.watchingNum = @"2.13亿";
    carpmodelItem10.shangyinNum = 43;
    carpmodelItem10.total_Num = 3;
    carpmodelItem10.carpVideoImgThub = @"https://img1.doubanio.com/view/photo/m/public/p2639148697.jpg";
    carpmodelItem10.carpVideoHomeName = @"真人快打";
    carpmodelItem10.carpVideoEngName  =@"Mortal Kombat";
    carpmodelItem10.carpVideoHomeType = @"动作 冒险 奇幻";
    carpmodelItem10.carpVideoHomeArtislist = @"浅野忠信/刘易斯·谭/真田广之";
    carpmodelItem10.carpVideoSourcestar_five =0.7;
    carpmodelItem10.carpVieoHomestar_foure =0.3;
    carpmodelItem10.carpVideoHomestare_three =0.2;
    carpmodelItem10.carpVideoHomeestar_two =0.1;
    carpmodelItem10.carpVideoMoviewstar_one =0.1;
    carpmodelItem10.carpVideo_isCollected = NO;
    carpmodelItem10.carpVideoHome_listArr = @[@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2017/0606/thumb_1_300_410_20170606110256889087.jpg",@"title":@"浅野忠信"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2018/0129/thumb_1_300_410_20180129110448341582.jpg",@"title":@"刘易斯·谭"},@{@"img":@"http://image14.m1905.cn/mdb/uploadfile/2017/0526/thumb_1_300_410_20170526045048720441.jpg",@"title":@"真田广之"}];
    carpmodelItem10.carpVideoHome_intrduce = @"续作延续前一部的风格，讲述在这座加拿大小镇上，开展了一场盛大的雪橇比赛，弗兰基带着他的团队参赛，而索菲亚则担任舵手，除此之外，还有新的成员加入了这场比赛，包括神秘而自负的扎克、以及扎克的运动员表姐查莉....";
    carpmodelItem10.carpVideoHome_soureNums = 2161;
    carpmodelItem10.carpVideoHomes_DBNums = 8.2;
    carpmodelItem10.caprVideHome_ID = 10;
    carpmodelItem10.carpVideoHomes_tagOne= @"动画";
    carpmodelItem10.carpVideoHome_tagtwo = @"喜剧";
    carpmodelItem10.time = @"2021-04-23(美国)";
    carpmodelItem10.Top_filmType = 1;
    [tempArr addObject:carpmodelItem10];
    
    
    CarpVideoHomeModels * carpmodelItem11 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem11.carp_starNum = 3;
    carpmodelItem11.iswantWatching = NO;
    carpmodelItem11.watchingNum = @"1.04亿";
    carpmodelItem11.shangyinNum = 21;
    carpmodelItem11.total_Num = 4;
    carpmodelItem11.carpVideoImgThub = @"https://image11.m1905.cn/mdb/uploadfile/2021/0312/thumb_1_283_390_20210312014243270403.jpg";
    carpmodelItem11.carpVideoHomeName = @"星期一";
    carpmodelItem11.carpVideoEngName  =@"Monday";
    carpmodelItem11.carpVideoHomeType = @"剧情 爱情";
    carpmodelItem11.carpVideoHomeArtislist = @"塞巴斯蒂安·斯坦/范杰利斯·莫里基斯";
    carpmodelItem11.carpVideoSourcestar_five =0.6;
    carpmodelItem11.carpVieoHomestar_foure =0.4;
    carpmodelItem11.carpVideoHomestare_three =0.1;
    carpmodelItem11.carpVideoHomeestar_two =0.2;
    carpmodelItem11.carpVideoMoviewstar_one =0.2;
    carpmodelItem11.carpVideo_isCollected = NO;
    carpmodelItem11.carpVideoHome_listArr = @[@{@"img":@"http://image14.m1905.cn/uploadfile/2013/1228/thumb_1_300_410_20131228110430861269.jpg",@"title":@"塞巴斯蒂安·斯坦"},@{@"img":@"http://image14.m1905.cn/uploadfile/2014/0212/thumb_1_300_410_20140212022053914159.jpg",@"title":@"范杰利斯·莫里基斯"}];
    carpmodelItem11.carpVideoHome_intrduce = @"本片讲述两个自毁倾向的美国人Mickey和Chloe，住在雅典和希腊群岛之间，发展出了海啸般的恋爱，据称是一段“现代人似乎已不再热衷”的“热烈的恋情”，但会让每个人有共鸣。";
    carpmodelItem11.carpVideoHome_soureNums = 3127;
    carpmodelItem11.carpVideoHomes_DBNums = 6.4;
    carpmodelItem11.caprVideHome_ID = 11;
    carpmodelItem11.carpVideoHomes_tagOne= @"剧情";
    carpmodelItem11.carpVideoHome_tagtwo = @"爱情";
    carpmodelItem11.time = @"2021-04-16(美国)";
    carpmodelItem11.Top_filmType = 1;
    [tempArr addObject:carpmodelItem11];
    
    
    CarpVideoHomeModels * carpmodelItem12 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem12.carp_starNum = 3;
    carpmodelItem12.iswantWatching = NO;
    carpmodelItem12.watchingNum = @"0.12亿";
    carpmodelItem12.shangyinNum = 435;
    carpmodelItem12.total_Num = 3;
    carpmodelItem12.carpVideoImgThub = @"https://image11.m1905.cn/mdb/uploadfile/2021/0108/thumb_1_283_390_20210108012525840951.jpg";
    carpmodelItem12.carpVideoHomeName = @"椿之庭";
    carpmodelItem12.carpVideoEngName  =@"椿の庭";
    carpmodelItem12.carpVideoHomeType = @"剧情";
    carpmodelItem12.carpVideoHomeArtislist = @"富司纯子/沈恩京/铃木京香/张震";
    carpmodelItem12.carpVideoSourcestar_five =0.8;
    carpmodelItem12.carpVieoHomestar_foure =0.3;
    carpmodelItem12.carpVideoHomestare_three =0.1;
    carpmodelItem12.carpVideoHomeestar_two =0.5;
    carpmodelItem12.carpVideoMoviewstar_one =0.2;
    carpmodelItem12.carpVideo_isCollected = NO;
    carpmodelItem12.carpVideoHome_listArr = @[@{@"img":@"http://image14.m1905.cn/uploadfile/2011/0728/thumb_1_300_410_20110728111226721.jpg",@"title":@"富司纯子"},@{@"img":@"http://image11.m1905.cn/uploadfile/2014/0228/thumb_1_300_410_20140228111120537824.jpg",@"title":@"沈恩京"},@{@"img":@"http://image11.m1905.cn/uploadfile/2013/0409/thumb_1_300_410_20130409033955284.jpg",@"title":@"铃木京香"},@{@"img":@"http://image14.m1905.cn/mdb/uploadfile/2017/1207/thumb_1_300_410_20171207013956689005.jpg",@"title":@"张震"}];
    carpmodelItem12.carpVideoHome_intrduce = @"奶奶娟子(富司纯子饰)、孙女渚(沈恩京饰)住在山茶花盛开的房屋中，故事讲述了一年中来过这里的人们。铃木京香饰演渚的姑姑，张震扮演不受欢迎的访客黄。";
    carpmodelItem12.carpVideoHome_soureNums = 3127;
    carpmodelItem12.carpVideoHomes_DBNums = 5.7;
    carpmodelItem12.caprVideHome_ID = 12;
    carpmodelItem12.carpVideoHomes_tagOne= @"剧情";
    carpmodelItem12.carpVideoHome_tagtwo = @"";
    carpmodelItem12.time = @"2021-04-09(日本)";
    carpmodelItem12.Top_filmType = 1;
    [tempArr addObject:carpmodelItem12];
    
    
    
    CarpVideoHomeModels * carpmodelItem13 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem13.carp_starNum = 3;
    carpmodelItem13.iswantWatching = NO;
    carpmodelItem13.watchingNum = @"0.16亿";
    carpmodelItem13.shangyinNum = 139;
    carpmodelItem13.total_Num = 4;
    carpmodelItem13.carpVideoImgThub = @"https://img2.doubanio.com/view/photo/l/public/p2633869942.jpg";
    carpmodelItem13.carpVideoHomeName = @"信使";
    carpmodelItem13.carpVideoEngName  =@"The Courier";
    carpmodelItem13.carpVideoHomeType = @"剧情";
    carpmodelItem13.carpVideoHomeArtislist = @"本尼迪克特·康伯巴奇/沈恩京/蕾切尔·布罗斯纳安";
    carpmodelItem13.carpVideoSourcestar_five =0.6;
    carpmodelItem13.carpVieoHomestar_foure =0.4;
    carpmodelItem13.carpVideoHomestare_three =0.2;
    carpmodelItem13.carpVideoHomeestar_two =0.1;
    carpmodelItem13.carpVideoMoviewstar_one =0.2;
    carpmodelItem13.carpVideo_isCollected = NO;
    carpmodelItem13.carpVideoHome_listArr = @[@{@"img":@"http://image11.m1905.cn/uploadfile/2013/1217/thumb_1_300_410_20131217102130438536.jpg",@"title":@"本尼迪克特·康伯巴奇"},@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2017/1020/thumb_1_300_410_20171020091309520668.jpg",@"title":@"蕾切尔·布罗斯纳安"}];
    carpmodelItem13.carpVideoHome_intrduce = @"故事根据格里维尔·韦恩(本尼迪克特饰演)的真实事件改编的。格里维尔·韦恩是一位英国商人，曾在冷战期间帮助美国中央情报局渗透苏联的核项目。韦恩和他的俄罗斯线人奥列格·彭科夫斯基提供了结束古巴导弹危机的关键情报。";
    carpmodelItem13.carpVideoHome_soureNums = 47123;
    carpmodelItem13.carpVideoHomes_DBNums = 6.9;
    carpmodelItem13.caprVideHome_ID = 13;
    carpmodelItem13.carpVideoHomes_tagOne= @"剧情";
    carpmodelItem13.carpVideoHome_tagtwo = @"";
    carpmodelItem13.time = @"2021-03-19(美国)";
    carpmodelItem13.Top_filmType = 1;
    [tempArr addObject:carpmodelItem13];
    
    
    CarpVideoHomeModels * carpmodelItem14 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem14.carp_starNum = 3;
    carpmodelItem14.iswantWatching = NO;
    carpmodelItem14.watchingNum = @"1.25亿";
    carpmodelItem14.shangyinNum = 142;
    carpmodelItem14.total_Num = 5;
    carpmodelItem14.carpVideoImgThub = @"https://img1.doubanio.com/view/photo/l/public/p2632012488.jpg";
    carpmodelItem14.carpVideoHomeName = @"美国之旅2";
    carpmodelItem14.carpVideoEngName  =@"Coming to America 2 ";
    carpmodelItem14.carpVideoHomeType = @"喜剧";
    carpmodelItem14.carpVideoHomeArtislist = @"艾迪·墨菲/詹姆斯·厄尔·琼斯/Jermaine Fowler";
    carpmodelItem14.carpVideoSourcestar_five =0.8;
    carpmodelItem14.carpVieoHomestar_foure =0.4;
    carpmodelItem14.carpVideoHomestare_three =0.4;
    carpmodelItem14.carpVideoHomeestar_two =0.2;
    carpmodelItem14.carpVideoMoviewstar_one =0.1;
    carpmodelItem14.carpVideo_isCollected = NO;
    carpmodelItem14.carpVideoHome_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2012/0719/thumb_1_300_410_20120719041224474.jpg",@"title":@"艾迪·墨菲"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0315/thumb_1_300_410_20130315043044871.jpg",@"title":@"詹姆斯·厄尔·琼斯"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2018/0312/thumb_1_300_410_20180312093713379701.jpg",@"title":@"Jermaine Fowler"}];
    carpmodelItem14.carpVideoHome_intrduce = @"乔纳森·莱文([抗癌的我]、[母女大战])将执导1988年艾迪·墨菲主演的[美国之旅]续集。[嗨翻姐妹行]编剧肯尼亚·巴里斯执笔剧本。艾迪·墨菲也参与到该片的制作中，尽管目前尚不明确他是否回归主演。";
    carpmodelItem14.carpVideoHome_soureNums = 47123;
    carpmodelItem14.carpVideoHomes_DBNums = 7.3;
    carpmodelItem14.caprVideHome_ID = 14;
    carpmodelItem14.carpVideoHomes_tagOne= @"喜剧";
    carpmodelItem14.carpVideoHome_tagtwo = @"";
    carpmodelItem14.time = @"2021-03-05(美国)";
    carpmodelItem14.Top_filmType = 1;
    [tempArr addObject:carpmodelItem14];
    
    
    CarpVideoHomeModels * carpmodelItem15 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem15.carp_starNum = 3;
    carpmodelItem15.iswantWatching = NO;
    carpmodelItem15.watchingNum = @"2.13亿";
    carpmodelItem15.shangyinNum = 45;
    carpmodelItem15.total_Num = 3;
    carpmodelItem15.carpVideoImgThub = @"https://img2.doubanio.com/view/photo/l/public/p2641633513.jpg";
    carpmodelItem15.carpVideoHomeName = @"偷渡者";
    carpmodelItem15.carpVideoEngName  =@"Stowaway";
    carpmodelItem15.carpVideoHomeType = @"剧情 科幻 惊悚";
    carpmodelItem15.carpVideoHomeArtislist = @"安娜·肯德里克/丹尼尔·金";
    carpmodelItem15.carpVideoSourcestar_five =0.5;
    carpmodelItem15.carpVieoHomestar_foure =0.2;
    carpmodelItem15.carpVideoHomestare_three =0.1;
    carpmodelItem15.carpVideoHomeestar_two =0.1;
    carpmodelItem15.carpVideoMoviewstar_one =0.2;
    carpmodelItem15.carpVideo_isCollected = NO;
    carpmodelItem15.carpVideoHome_listArr = @[@{@"img":@"http://image11.m1905.cn/uploadfile/2013/1206/thumb_1_300_410_20131206110423229835.jpg",@"title":@"安娜·肯德里克"},@{@"img":@"http://image13.m1905.cn/uploadfile/2013/0329/thumb_1_300_410_20130329014842323.jpg",@"title":@"丹尼尔·金"}];
    carpmodelItem15.carpVideoHome_intrduce = @"一艘宇宙飞船前往火星，起飞不久后机组成员却发现了一个偷渡者。由于这艘飞船的装备只能支持三名乘客，而且它的生命支持系统也受到了一些无法弥补的损害，机组成员们面临着一个不可能解决的问题。";
    carpmodelItem15.carpVideoHome_soureNums = 4678;
    carpmodelItem15.carpVideoHomes_DBNums = 7.3;
    carpmodelItem15.caprVideHome_ID = 15;
    carpmodelItem15.carpVideoHomes_tagOne= @"剧情";
    carpmodelItem15.carpVideoHome_tagtwo = @"科幻";
    carpmodelItem15.time = @"2021-04-22(美国)";
    carpmodelItem15.Top_filmType = 1;
    [tempArr addObject:carpmodelItem15];
    
    
    CarpVideoHomeModels * carpmodelItem16 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem16.carp_starNum = 4;
    carpmodelItem16.iswantWatching = NO;
    carpmodelItem16.watchingNum = @"1.24亿";
    carpmodelItem16.shangyinNum = 26;
    carpmodelItem16.total_Num = 3;
    carpmodelItem16.carpVideoImgThub = @"https://img1.doubanio.com/view/photo/l/public/p2641942787.jpg";
    carpmodelItem16.carpVideoHomeName = @"小人物";
    carpmodelItem16.carpVideoEngName  =@"Nobody";
    carpmodelItem16.carpVideoHomeType = @"动作 惊悚";
    carpmodelItem16.carpVideoHomeArtislist = @"康妮·尼尔森/鲍勃·奥登科克";
    carpmodelItem16.carpVideoSourcestar_five =0.6;
    carpmodelItem16.carpVieoHomestar_foure =0.3;
    carpmodelItem16.carpVideoHomestare_three =0.1;
    carpmodelItem16.carpVideoHomeestar_two =0.1;
    carpmodelItem16.carpVideoMoviewstar_one =0.2;
    carpmodelItem16.carpVideo_isCollected = NO;
    carpmodelItem16.carpVideoHome_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2013/1231/thumb_1_300_410_20131231120252786580.jpg",@"title":@"康妮·尼尔森"},@{@"img":@"http://image13.m1905.cn/uploadfile/2013/1129/thumb_1_300_410_20131129015612483625.jpg",@"title":@"鲍勃·奥登科克"}];
    carpmodelItem16.carpVideoHome_intrduce = @"一艘宇宙飞船前往火星，起飞不久后机组成员却发现了一个偷渡者。由于这艘飞船的装备只能支持三名乘客，而且它的生命支持系统也受到了一些无法弥补的损害，机组成员们面临着一个不可能解决的问题。";
    carpmodelItem16.carpVideoHome_soureNums = 12784;
    carpmodelItem16.carpVideoHomes_DBNums = 5.0;
    carpmodelItem16.caprVideHome_ID = 16;
    carpmodelItem16.carpVideoHomes_tagOne= @"动作";
    carpmodelItem16.carpVideoHome_tagtwo = @"惊悚";
    carpmodelItem16.time = @"2021-04-02(美国)";
    carpmodelItem16.Top_filmType = 1;
    [tempArr addObject:carpmodelItem16];
    
    
    
    CarpVideoHomeModels * carpmodelItem17 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem17.carp_starNum = 4;
    carpmodelItem17.iswantWatching = NO;
    carpmodelItem17.watchingNum = @"1.25亿";
    carpmodelItem17.shangyinNum = 21;
    carpmodelItem17.total_Num = 5;
    carpmodelItem17.carpVideoImgThub = @"https://img2.doubanio.com/view/photo/l/public/p2642783443.jpg";
    carpmodelItem17.carpVideoHomeName = @"人之怒";
    carpmodelItem17.carpVideoEngName  =@"Wrath of Man";
    carpmodelItem17.carpVideoHomeType = @"动作 犯罪";
    carpmodelItem17.carpVideoHomeArtislist = @"杰森·斯坦森/乔什·哈奈特/斯科特·伊斯特伍德";
    carpmodelItem17.carpVideoSourcestar_five =0.8;
    carpmodelItem17.carpVieoHomestar_foure =0.3;
    carpmodelItem17.carpVideoHomestare_three =0.1;
    carpmodelItem17.carpVideoHomeestar_two =0.1;
    carpmodelItem17.carpVideoMoviewstar_one =0.2;
    carpmodelItem17.carpVideo_isCollected = NO;
    carpmodelItem17.carpVideoHome_listArr = @[@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2019/0819/thumb_1_300_410_20190819020825626436.jpg",@"title":@"杰森·斯坦森"},@{@"img":@"http://image11.m1905.cn/uploadfile/2009/0820/thumb_1_300_410_200908201052019583058.jpg",@"title":@"乔什·哈奈特"},@{@"img":@"http://image11.m1905.cn/uploadfile/2012/1228/thumb_1_300_410_20121228010753939.jpg",@"title":@"斯科特·伊斯特伍德"}];
    carpmodelItem17.carpVideoHome_intrduce = @"翻拍自2004年的法国电影《运钞车》，讲述冷酷、神秘的H在一家运钞车公司工作，每周运送数百万美元运往来洛杉矶。";
    carpmodelItem17.carpVideoHome_soureNums = 31784;
    carpmodelItem17.carpVideoHomes_DBNums = 6.9;
    carpmodelItem17.caprVideHome_ID = 17;
    carpmodelItem17.carpVideoHomes_tagOne= @"动作";
    carpmodelItem17.carpVideoHome_tagtwo = @"犯罪";
    carpmodelItem17.time = @"2021-05-07(美国)";
    carpmodelItem17.Top_filmType = 2;
    [tempArr addObject:carpmodelItem17];
    
    
    CarpVideoHomeModels * carpmodelItem18 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem18.carp_starNum = 4;
    carpmodelItem18.iswantWatching = NO;
    carpmodelItem18.watchingNum = @"1.05亿";
    carpmodelItem18.shangyinNum = 21;
    carpmodelItem18.total_Num = 3;
    carpmodelItem18.carpVideoImgThub = @"https://img1.doubanio.com/view/photo/m/public/p2508477629.jpg";
    carpmodelItem18.carpVideoHomeName = @"窗里的女人";
    carpmodelItem18.carpVideoEngName  =@"The Woman in the Window ";
    carpmodelItem18.carpVideoHomeType = @"悬疑 剧情 犯罪";
    carpmodelItem18.carpVideoHomeArtislist = @"艾米·亚当斯/朱丽安·摩尔/加里·奥德曼";
    carpmodelItem18.carpVideoSourcestar_five =0.7;
    carpmodelItem18.carpVieoHomestar_foure =0.3;
    carpmodelItem18.carpVideoHomestare_three =0.2;
    carpmodelItem18.carpVideoHomeestar_two =0.1;
    carpmodelItem18.carpVideoMoviewstar_one =0.2;
    carpmodelItem18.carpVideo_isCollected = NO;
    carpmodelItem18.carpVideoHome_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2014/1118/thumb_1_300_410_20141118091813643088.jpg",@"title":@"艾米·亚当斯"},@{@"img":@"http://image11.m1905.cn/uploadfile/2015/0106/thumb_1_300_410_20150106035608207551.jpg",@"title":@"朱丽安·摩尔"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/1020/thumb_1_300_410_20131020085759858.jpg",@"title":@"加里·奥德曼"}];
    carpmodelItem18.carpVideoHome_intrduce = @"影片根据A.J. Finn创作的同名畅销小说改编。故事围绕安娜·福克斯(亚当斯饰)展开，她每日躲在自己家中，暗中窥视领居们的一举一动，而当她注意到看似完美的罗素一家时，未知和危险也将到来。";
    carpmodelItem18.carpVideoHome_soureNums = 4823;
    carpmodelItem18.carpVideoHomes_DBNums = 7.6;
    carpmodelItem18.caprVideHome_ID = 18;
    carpmodelItem18.carpVideoHomes_tagOne= @"悬疑";
    carpmodelItem18.carpVideoHome_tagtwo = @"剧情";
    carpmodelItem18.time = @"2021-05-14(美国)";
    carpmodelItem18.Top_filmType = 2;
    [tempArr addObject:carpmodelItem18];
    
    
    
    CarpVideoHomeModels * carpmodelItem19 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem19.carp_starNum = 3;
    carpmodelItem19.iswantWatching = NO;
    carpmodelItem19.watchingNum = @"1.04亿";
    carpmodelItem19.shangyinNum = 12;
    carpmodelItem19.total_Num = 3;
    carpmodelItem19.carpVideoImgThub = @"https://img2.doubanio.com/view/photo/m/public/p2622183693.jpg";
    carpmodelItem19.carpVideoHomeName = @"侏罗纪世界3：统治";
    carpmodelItem19.carpVideoEngName  =@"Jurassic World: Dominion ";
    carpmodelItem19.carpVideoHomeType = @"动作 科幻 冒险";
    carpmodelItem19.carpVideoHomeArtislist = @"劳拉·邓恩/布莱斯·达拉斯·霍华德/克里斯·帕拉特";
    carpmodelItem19.carpVideoSourcestar_five =0.4;
    carpmodelItem19.carpVieoHomestar_foure =0.6;
    carpmodelItem19.carpVideoHomestare_three =0.1;
    carpmodelItem19.carpVideoHomeestar_two =0.1;
    carpmodelItem19.carpVideoMoviewstar_one =0.2;
    carpmodelItem19.carpVideo_isCollected = NO;
    carpmodelItem19.carpVideoHome_listArr = @[@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2020/0205/thumb_1_300_410_20200205031333334506.jpg",@"title":@"劳拉·邓恩"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0329/thumb_1_168_230_20130329054025786.jpg",@"title":@"布莱斯·达拉斯·霍华德"},@{@"img":@"http://image13.m1905.cn/uploadfile/2014/1120/thumb_1_300_410_20141120095911309352.jpg",@"title":@"克里斯·帕拉特"}];
    carpmodelItem19.carpVideoHome_intrduce = @"《侏罗纪世界3：统治》是环球影业出品的《侏罗纪世界》系列科幻冒险电影第三集，将于2022年6月10上映。 ";
    carpmodelItem19.carpVideoHome_soureNums = 42378;
    carpmodelItem19.carpVideoHomes_DBNums = 8.7;
    carpmodelItem19.caprVideHome_ID = 19;
    carpmodelItem19.carpVideoHomes_tagOne= @"动作";
    carpmodelItem19.carpVideoHome_tagtwo = @"科幻";
    carpmodelItem19.time = @"2021-06-11(美国)     ";
    carpmodelItem19.Top_filmType = 2;
    [tempArr addObject:carpmodelItem19];
    
    
    CarpVideoHomeModels * carpmodelItem20 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem20.carp_starNum = 3;
    carpmodelItem20.iswantWatching = NO;
    carpmodelItem20.watchingNum = @"1.27亿";
    carpmodelItem20.shangyinNum = 25;
    carpmodelItem20.total_Num = 3;
    carpmodelItem20.carpVideoImgThub = @"https://img1.doubanio.com/view/photo/l/public/p2636616268.jpg";
    carpmodelItem20.carpVideoHomeName = @"黑寡妇";
    carpmodelItem20.carpVideoEngName  =@"The Black Widow";
    carpmodelItem20.carpVideoHomeType = @"动作 科幻 冒险";
    carpmodelItem20.carpVideoHomeArtislist = @"斯嘉丽·约翰逊/弗洛伦斯·皮尤/蕾切尔·薇兹";
    carpmodelItem20.carpVideoSourcestar_five =0.8;
    carpmodelItem20.carpVieoHomestar_foure =0.4;
    carpmodelItem20.carpVideoHomestare_three =0.3;
    carpmodelItem20.carpVideoHomeestar_two =0.2;
    carpmodelItem20.carpVideoMoviewstar_one =0.1;
    carpmodelItem20.carpVideo_isCollected = NO;
    carpmodelItem20.carpVideoHome_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2015/0127/thumb_1_300_410_20150127083959954302.jpg",@"title":@"斯嘉丽·约翰逊"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2018/0307/thumb_1_300_410_20180307100548360699.jpg",@"title":@"弗洛伦斯·皮尤"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0305/thumb_1_300_410_20130305041450487.jpg",@"title":@"蕾切尔·薇兹"}];
    carpmodelItem20.carpVideoHome_intrduce = @"一部充满动作戏的间谍惊悚片。娜塔莎·罗曼诺夫/黑寡妇遭遇与她的过去相关的一场危险阴谋，将直面自己那些更为黑暗的经历。一股不惜一切要击倒她的力量袭来，娜塔莎必须面对自己在成为复仇者的很久之前那作为间谍的过往，和曾远离的破碎关系。";
    carpmodelItem20.carpVideoHome_soureNums = 57892;
    carpmodelItem20.carpVideoHomes_DBNums = 7.2;
    carpmodelItem20.caprVideHome_ID = 20;
    carpmodelItem20.carpVideoHomes_tagOne= @"动作";
    carpmodelItem20.carpVideoHome_tagtwo = @"科幻";
    carpmodelItem20.time = @"2021-07-09(美国)";
    carpmodelItem20.Top_filmType = 2;
    [tempArr addObject:carpmodelItem20];
    
    
    CarpVideoHomeModels * carpmodelItem21 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem21.carp_starNum = 4;
    carpmodelItem21.iswantWatching = NO;
    carpmodelItem21.watchingNum = @"1.36亿";
    carpmodelItem21.shangyinNum = 65;
    carpmodelItem21.total_Num = 3;
    carpmodelItem21.carpVideoImgThub = @"https://img9.doubanio.com/view/photo/l/public/p2644292175.jpg";
    carpmodelItem21.carpVideoHomeName = @"电锯惊魂9：螺旋";
    carpmodelItem21.carpVideoEngName  =@"Spiral: From the Book of Saw ";
    carpmodelItem21.carpVideoHomeType = @"恐怖";
    carpmodelItem21.carpVideoHomeArtislist = @"塞缪尔·杰克逊/马利索·妮可/麦克思·明格拉";
    carpmodelItem21.carpVideoSourcestar_five =0.5;
    carpmodelItem21.carpVieoHomestar_foure =0.4;
    carpmodelItem21.carpVideoHomestare_three =0.3;
    carpmodelItem21.carpVideoHomeestar_two =0.2;
    carpmodelItem21.carpVideoMoviewstar_one =0.1;
    carpmodelItem21.carpVideo_isCollected = NO;
    carpmodelItem21.carpVideoHome_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2012/1225/thumb_1_300_410_20121225034212892.jpg",@"title":@"塞缪尔·杰克逊"},@{@"img":@"http://image11.m1905.cn/uploadfile/2012/1102/thumb_1_300_410_20121102013858274.jpg",@"title":@"马利索·妮可"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0321/thumb_1_300_410_20130321020520872.jpg",@"title":@"麦克思·明格拉"}];
    carpmodelItem21.carpVideoHome_intrduce = @"狮门影业重启开启了温子仁职业生涯的《电锯惊魂》系列。剧本基于克里斯·洛克构思的一个故事，由皮特·古德芬格(《电锯惊魂8：竖锯》)、乔什·斯托尔伯格(《食人鱼3D》)撰写剧本。执导了《电锯惊魂》系列三部影片的达伦·林恩·鲍斯回归执导。";
    carpmodelItem21.carpVideoHome_soureNums = 57892;
    carpmodelItem21.carpVideoHomes_DBNums = 8.9;
    carpmodelItem21.caprVideHome_ID = 21;
    carpmodelItem21.carpVideoHomes_tagOne= @"恐怖";
    carpmodelItem21.carpVideoHome_tagtwo = @"";
    carpmodelItem21.time = @"2021-05-14(美国)";
    carpmodelItem21.Top_filmType = 2;
    [tempArr addObject:carpmodelItem21];
    
    
    CarpVideoHomeModels * carpmodelItem22 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem22.carp_starNum = 3;
    carpmodelItem22.iswantWatching = NO;
    carpmodelItem22.watchingNum = @"1.26亿";
    carpmodelItem22.shangyinNum = 65;
    carpmodelItem22.total_Num = 4;
    carpmodelItem22.carpVideoImgThub = @"https://img1.doubanio.com/view/photo/m/public/p2610031548.jpg";
    carpmodelItem22.carpVideoHomeName = @"007：无暇赴死";
    carpmodelItem22.carpVideoEngName  =@"Bond 25";
    carpmodelItem22.carpVideoHomeType = @"动作 惊悚";
    carpmodelItem22.carpVideoHomeArtislist = @"丹尼尔·克雷格/蕾雅·赛杜/拉米·马雷克/本·卫肖";
    carpmodelItem22.carpVideoSourcestar_five =0.7;
    carpmodelItem22.carpVieoHomestar_foure =0.3;
    carpmodelItem22.carpVideoHomestare_three =0.6;
    carpmodelItem22.carpVideoHomeestar_two =0.1;
    carpmodelItem22.carpVideoMoviewstar_one =0.1;
    carpmodelItem22.carpVideo_isCollected = NO;
    carpmodelItem22.carpVideoHome_listArr = @[@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0122/thumb_1_300_410_20130122110606301.jpg",@"title":@"丹尼尔·克雷格"},@{@"img":@"http://image14.m1905.cn/uploadfile/2014/0905/thumb_1_300_410_20140905095626569818.jpg",@"title":@"蕾雅·赛杜"},@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2019/0218/thumb_1_300_410_20190218035837311784.jpg",@"title":@"拉米·马雷克"},@{@"img":@"http://image14.m1905.cn/uploadfile/2014/1201/thumb_1_300_410_20141201012520228906.jpg",@"title":@"本·卫肖"}];
    carpmodelItem22.carpVideoHome_intrduce = @"这两部影片或将成为007历史上第一次“背靠背拍摄”的影片，最早将在明年秋天开拍，其中第24部007电影计划在2014年秋上映，丹尼尔·克雷格（Daniel Craig）将继续扮演邦德。";
    carpmodelItem22.carpVideoHome_soureNums = 57892;
    carpmodelItem22.carpVideoHomes_DBNums = 7.4;
    carpmodelItem22.caprVideHome_ID = 22;
    carpmodelItem22.carpVideoHomes_tagOne= @"动作";
    carpmodelItem22.carpVideoHome_tagtwo = @"惊悚";
    carpmodelItem22.time = @"2021-10-08(美国)";
    carpmodelItem22.Top_filmType = 2;
    [tempArr addObject:carpmodelItem22];
    
    
    CarpVideoHomeModels * carpmodelItem23 = [[CarpVideoHomeModels alloc]init];
    carpmodelItem23.carp_starNum = 3;
    carpmodelItem23.iswantWatching = YES;
    carpmodelItem23.watchingNum = @"3亿";
    carpmodelItem23.shangyinNum = 2;
    carpmodelItem23.total_Num = 5;
    carpmodelItem23.carpVideoImgThub = @"https://img9.doubanio.com/view/photo/l/public/p2580840216.jpg";
    carpmodelItem23.carpVideoHomeName = @"寂静之地2 ";
    carpmodelItem23.carpVideoEngName  =@"A Quiet Place: Part II";
    carpmodelItem23.carpVideoHomeType = @"动作/惊悚/冒险/美国 ";
    carpmodelItem23.carpVideoHomeArtislist = @"艾米莉·布朗特 / 基里安·墨菲 / 米莉森·西蒙斯 / 诺亚·尤佩 ";
    carpmodelItem23.carpVideoSourcestar_five =0.6;
    carpmodelItem23.carpVieoHomestar_foure =0.4;
    carpmodelItem23.carpVideoHomestare_three =0.3;
    carpmodelItem23.carpVideoHomeestar_two =0.1;
    carpmodelItem23.carpVideoMoviewstar_one =0.3;
    carpmodelItem23.carpVideo_isCollected = YES;
    carpmodelItem23.carpVideoHome_listArr = @[@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p32548.jpg",@"title":@"Emily Blunt"},@{@"img":@"https://img3.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1440.jpg",@"title":@"Cillian Murphy"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1622427478.79.jpg",@"title":@"Millicent Simmonds"},@{@"img":@"https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1516598354.03.jpg",@"title":@"Noah Jupe"},@{@"img":@"https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1452855116.89.jpg",@"title":@"John Krasinski"}];
    carpmodelItem23.carpVideoHome_intrduce = @"故事紧承上一部展开。在丈夫为保护家人牺牲后，伊芙琳（艾米莉·布朗特 饰）不得不独自带着孩子们（米莉森·西蒙斯、诺亚·尤佩 饰）面对全新的生存挑战。他们将被迫离开家园，踏上一段未知的旅途。在无声的世界里，除了要躲避“猎声怪物”的捕杀，铺满细沙的道路尽头还暗藏着新的危机。";
    carpmodelItem23.carpVideoHome_soureNums = 23665;
    carpmodelItem23.carpVideoHomes_DBNums = 9.1;
    carpmodelItem23.caprVideHome_ID = 666;
    carpmodelItem23.carpVideoHomes_tagOne= @"动作";
    carpmodelItem23.carpVideoHome_tagtwo = @"犯罪";
    carpmodelItem23.time = @"2021-05-28";
    carpmodelItem23.Top_filmType = 0;
    [tempArr addObject:carpmodelItem23];
    
    
    BOOL PandaMoveiStaue = [[NSUserDefaults standardUserDefaults] boolForKey:@"PandaHomeMovie"];
    if (PandaMoveiStaue == NO) {
        BOOL isSuccced =     [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:isSuccced forKey:@"PandaHomeMovie"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
}
+(void)CarpVideoConfigerCAtagroyMoels{
    
    NSMutableArray * tempArr = [NSMutableArray array];
    CarpVideoCatagoryModel * catagroyModel   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel.imgIcon = @"https://img2.doubanio.com/icon/ul125111091-2.jpg";
    catagroyModel.userlocation = @"浙江 杭州";
    catagroyModel.userName = @"PeterGY";
    catagroyModel.title = @"之前一直传闻不断的《老友记重聚特辑》，随着正式预告片的推出终于被实锤。特辑播出之前，我再一次打开《老友记》，不禁自问这部剧为何能一直吸引我。";
    catagroyModel.imgs = @[@"https://img3.doubanio.com/view/thing_review/l/public/p6034860.jpg",@"https://img9.doubanio.com/view/thing_review/l/public/p6054775.jpg",@"https://img1.doubanio.com/view/thing_review/l/public/p6054837.jpg"];
    catagroyModel.likeNums = 12;
    catagroyModel.viewsNum = 121;
    catagroyModel.shareNums = 0;
    catagroyModel.isLike = NO;
    catagroyModel.isVideo = YES;
    catagroyModel.isFallow = NO;
    catagroyModel.userID = 0;
    catagroyModel.videoTime = @"02:11";
    catagroyModel.videoUrl = @"https://vt1.doubanio.com/202106151339/5a3d337a1e644e2130f1431df016f621/view/movie/M/402760011.mp4";
    catagroyModel.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel];
    
    
    CarpVideoCatagoryModel * catagroyModel1   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel1.imgIcon = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
    catagroyModel1.userlocation = @"浙江 诸暨";
    catagroyModel1.userName = @"女神的秋裤";
    catagroyModel1.title = @"有沃伦夫妇打底，看起来很正统，很有《招魂》系列的样子，但没有底蕴。故事并没有交代清楚，逻辑也比较弱，恐怖桥段比较温和，内容上没什么创新，也没了沃伦夫妇相濡以沫的真挚情感。总体像一部打小怪的番外。";
    catagroyModel1.imgs = @[@"https://img9.doubanio.com/view/photo/l/public/p2654626314.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2654626315.jpg",@"https://img2.doubanio.com/view/photo/l/public/p2654626313.jpg",@"https://img2.doubanio.com/view/photo/l/public/p2648542041.jpg"];
    catagroyModel1.likeNums = 10;
    catagroyModel1.viewsNum = 134;
    catagroyModel1.shareNums = 1;
    catagroyModel1.isLike = YES;
    catagroyModel1.isVideo = NO;
    catagroyModel1.isFallow = NO;
    catagroyModel1.userID = 1;
    catagroyModel1.videoTime = @"";
    catagroyModel1.videoUrl = @"";
    catagroyModel1.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel1];
    
    
    CarpVideoCatagoryModel * catagroyModel2   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel2.imgIcon = @"https://img2.doubanio.com/icon/u4197235-91.jpg";
    catagroyModel2.userlocation = @"浙江 绍兴";
    catagroyModel2.userName = @"辣手修猫";
    catagroyModel2.title = @"比预期的好太多，诡异的气氛拿捏的非常出色，网大第一部能拿得出手的鬼吹灯。";
    catagroyModel2.imgs = @[@"https://img9.doubanio.com/view/photo/l/public/p2655992384.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2655992695.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2655992696.jpg"];
    catagroyModel2.likeNums = 341;
    catagroyModel2.viewsNum = 12;
    catagroyModel2.shareNums = 1;
    catagroyModel2.isLike = NO;
    catagroyModel2.isVideo = NO;
    catagroyModel2.isFallow = NO;
    catagroyModel2.userID = 2;
    catagroyModel2.videoTime = @"";
    catagroyModel2.videoUrl = @"";
    catagroyModel2.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel2];
    
    
    
    CarpVideoCatagoryModel * catagroyModel3   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel3.imgIcon = @"https://img9.doubanio.com/icon/u206276962-5.jpg";
    catagroyModel3.userlocation = @"浙江 金华";
    catagroyModel3.userName = @"Allen艾伦艾伦";
    catagroyModel3.title = @"就只好奇郭富城和Roy是什么关系？ Roy他俩会不会是同性恋，之后借前妻晓雪的肚子生了儿子？？？有人站队吗？";
    catagroyModel3.imgs = @[@"https://img1.doubanio.com/view/photo/l/public/p2579398778.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2579398776.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2579398774.jpg",@"https://img2.doubanio.com/view/photo/l/public/p2579398772.jpg"];
    catagroyModel3.likeNums = 321;
    catagroyModel3.viewsNum = 53;
    catagroyModel3.shareNums = 1;
    catagroyModel3.isLike = NO;
    catagroyModel3.isVideo = YES;
    catagroyModel3.isFallow = NO;
    catagroyModel3.userID = 3;
    catagroyModel3.videoTime = @"02:03";
    catagroyModel3.videoUrl = @"https://vt1.doubanio.com/202106151747/22ee522b6feddba919e037b316ae08e0/view/movie/M/402740945.mp4";
    catagroyModel3.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel3];
    
    
    
    CarpVideoCatagoryModel * catagroyModel4   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel4.imgIcon = @"https://img1.doubanio.com/icon/u45680258-8.jpg";
    catagroyModel4.userlocation = @"浙江 台州";
    catagroyModel4.userName = @"CMpunk";
    catagroyModel4.title = @"🐳的演技怎么看怎么尴 get不到他这部剧里的颜 台词听起来感官也不好 剧情也不太行 女主的人设也很诡异 这个基本可以抬走了 简直辱我国特种兵 弃了 大家千万不要冲着特种兵这三个字点进去 后果自负";
    catagroyModel4.imgs = @[@"https://img2.doubanio.com/view/photo/l/public/p2601330441.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2606752684.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2606752685.jpg"];
    catagroyModel4.likeNums = 432;
    catagroyModel4.viewsNum = 12;
    catagroyModel4.shareNums = 1;
    catagroyModel4.isLike = NO;
    catagroyModel4.isVideo = NO;
    catagroyModel4.isFallow = NO;
    catagroyModel4.userID = 4;
    catagroyModel4.videoTime = @"02:03";
    catagroyModel4.videoUrl = @"https://vt1.doubanio.com/202106151747/22ee522b6feddba919e037b316ae08e0/view/movie/M/402740945.mp4";
    catagroyModel4.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel4];
    
    
    
    CarpVideoCatagoryModel * catagroyModel5   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel5.imgIcon = @"https://img2.doubanio.com/icon/u103282031-1.jpg";
    catagroyModel5.userlocation = @"河北 衡水";
    catagroyModel5.userName = @"安吉里柯";
    catagroyModel5.title = @"文本好于制作，台词古韵好评；打戏扎实。龚俊的演技可，感觉靠眼神就可以演完整部剧；看媳妇时，眼里全是蜜；看欺负媳妇的流氓时，眼里全是刀。P大的文，加一星为敬。";
    catagroyModel5.imgs = @[@"https://img1.doubanio.com/view/photo/l/public/p2633774108.jpg",@"https://img1.doubanio.com/view/photo/l/public/p2633774107.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2633774105.jpg"];
    catagroyModel5.likeNums = 262;
    catagroyModel5.viewsNum = 41;
    catagroyModel5.shareNums = 21;
    catagroyModel5.isLike = YES;
    catagroyModel5.isVideo = NO;
    catagroyModel5.isFallow = NO;
    catagroyModel5.userID = 5;
    catagroyModel5.videoTime = @"02:03";
    catagroyModel5.videoUrl = @"https://vt1.doubanio.com/202106151747/22ee522b6feddba919e037b316ae08e0/view/movie/M/402740945.mp4";
    catagroyModel5.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel5];
    
    
    CarpVideoCatagoryModel * catagroyModel6   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel6.imgIcon = @"https://img2.doubanio.com/icon/u226903906-3.jpg";
    catagroyModel6.userlocation = @"海南 三亚";
    catagroyModel6.userName = @"脱脂蓝茶";
    catagroyModel6.title = @"我来为千老师爆灯 看简介罗根李活了 不错 剩下的剧情 顺玉你好自为之啊 别整些乱七八糟的 要整就整最大的 譬如 秀莲竟是罗根李生母！！！";
    catagroyModel6.imgs = @[@"https://img3.doubanio.com/view/photo/l/public/p2657332250.jpg",@"https://img1.doubanio.com/view/photo/l/public/p2657332247.jpg"];
    catagroyModel6.likeNums = 131;
    catagroyModel6.viewsNum = 55;
    catagroyModel6.shareNums = 12;
    catagroyModel6.isLike = NO;
    catagroyModel6.isVideo = NO;
    catagroyModel6.isFallow = YES;
    catagroyModel6.userID = 6;
    catagroyModel6.videoTime = @"02:03";
    catagroyModel6.videoUrl = @"https://vt1.doubanio.com/202106151747/22ee522b6feddba919e037b316ae08e0/view/movie/M/402740945.mp4";
    catagroyModel6.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel6];
    
    
    CarpVideoCatagoryModel * catagroyModel7   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel7.imgIcon = @"https://img1.doubanio.com/icon/u142353101-7.jpg";
    catagroyModel7.userlocation = @"湖南 湘西";
    catagroyModel7.userName = @"瓦尔达的气球";
    catagroyModel7.title = @"周树人出场那段，将他此生所揭露的一切通过短短几分钟展现得酣畅淋漓";
    catagroyModel7.imgs = @[@"https://img9.doubanio.com/view/photo/l/public/p2632605906.jpg",@"https://img2.doubanio.com/view/photo/l/public/p2632605902.jpg"];
    catagroyModel7.likeNums = 12;
    catagroyModel7.viewsNum = 43;
    catagroyModel7.shareNums = 13;
    catagroyModel7.isLike = NO;
    catagroyModel7.isVideo = NO;
    catagroyModel7.isFallow = NO;
    catagroyModel7.userID = 7;
    catagroyModel7.videoTime = @"02:03";
    catagroyModel7.videoUrl = @"https://vt1.doubanio.com/202106151747/22ee522b6feddba919e037b316ae08e0/view/movie/M/402740945.mp4";
    catagroyModel7.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel7];
    
    
    CarpVideoCatagoryModel * catagroyModel8   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel8.imgIcon = @"https://img1.doubanio.com/icon/u142353101-7.jpg";
    catagroyModel8.userlocation = @"湖南 长沙";
    catagroyModel8.userName = @"霸王龙";
    catagroyModel8.title = @"这剧被TVB压了这么久终于播了！一直都想看林夏薇和展鹏的CP实现后果然超搭超甜！就刚播的第一集看来比这两年的什么警匪片或是炒冷饭的剧好太太太多了！最后，虽然有预感到结尾会出事但是完全没想到会这样（不剧透）总之这剧就很棒！展鹏一如既往地演技爆表！我爱他！！";
    catagroyModel8.imgs = @[@"https://img1.doubanio.com/view/photo/l/public/p2641105849.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2641105846.jpg"];
    catagroyModel8.likeNums = 12;
    catagroyModel8.viewsNum = 32;
    catagroyModel8.shareNums = 51;
    catagroyModel8.isLike = NO;
    catagroyModel8.isVideo = NO;
    catagroyModel8.isFallow = NO;
    catagroyModel8.userID = 8;
    catagroyModel8.videoTime = @"02:03";
    catagroyModel8.videoUrl = @"https://vt1.doubanio.com/202106151747/22ee522b6feddba919e037b316ae08e0/view/movie/M/402740945.mp4";
    catagroyModel8.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel8];
    
    
    CarpVideoCatagoryModel * catagroyModel9   = [[CarpVideoCatagoryModel alloc]init];
    catagroyModel9.imgIcon = @"https://img2.doubanio.com/icon/u198888137-1.jpg";
    catagroyModel9.userlocation = @"湖南 长沙";
    catagroyModel9.userName = @"影愈者";
    catagroyModel9.title = @"以一个消防员的视角来看太单一了，剧情相对于整个灾难来说也显得很片段化，格局实在太小了，多拍几组人物会更好";
    catagroyModel9.imgs = @[@"https://img9.doubanio.com/view/photo/l/public/p2631666175.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2631666174.jpg",@"https://img1.doubanio.com/view/photo/l/public/p2611016269.jpg"];
    catagroyModel9.likeNums = 12;
    catagroyModel9.viewsNum = 32;
    catagroyModel9.shareNums = 51;
    catagroyModel9.isLike = NO;
    catagroyModel9.isVideo = NO;
    catagroyModel9.isFallow = NO;
    catagroyModel9.userID = 9;
    catagroyModel9.videoTime = @"02:03";
    catagroyModel9.videoUrl = @"https://vt1.doubanio.com/202106151747/22ee522b6feddba919e037b316ae08e0/view/movie/M/402740945.mp4";
    catagroyModel9.CarpCellHeight = 0;
    [tempArr addObject:catagroyModel9];
    
    
    BOOL catagory_Succed = [[NSUserDefaults standardUserDefaults] boolForKey:@"CarpVideoCatagoryModel"];
    if (catagory_Succed == NO) {
        BOOL  catagoryIsSucded = [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:catagoryIsSucded forKey:@"CarpVideoCatagoryModel"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
+(void)CarpVideoCatagoryDetailModelConfigs{
    NSMutableArray * tempArr = [NSMutableArray array];
    CarpVideoCatagoryDetailModel * catagoryModel = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel.time  = @"周三";
    catagoryModel.userImgurl = @"https://img2.doubanio.com/icon/ul125111091-2.jpg";
    catagoryModel.userNameText = @"PeterGY";
    catagoryModel.catagoryID = 0;
    catagoryModel.comentID = 0;
    catagoryModel.Content = @"会在国内上吗？！！我的天，语言组织能力失败。老友记是我友情的乌托邦！最低迷的时候也是老友记陪伴度过的。真的很期待！！";
    catagoryModel.CellHeight = 0;
    [tempArr addObject:catagoryModel];
    
    
    CarpVideoCatagoryDetailModel * catagoryModel1 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel1.time  = @"周三";
    catagoryModel1.userImgurl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
    catagoryModel1.userNameText = @"女神的秋裤";
    catagoryModel1.catagoryID = 0;
    catagoryModel1.comentID = 2;
    catagoryModel1.Content = @"从官方的宣发来看，到时出镜的还会有第七位老友珍妮丝，甘瑟，杰克&朱迪（没错他们还在），理查德（对的他也在）。以及贝克汉姆，丁日，老鳖等一众明星和导演（塞这么多人，最后一丝丝1小时剧情续集的幻想也破灭了?。行吧，还是得看）";
    catagoryModel1.CellHeight = 0;
    [tempArr addObject:catagoryModel1];
    
    
    CarpVideoCatagoryDetailModel * catagoryModel2 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel2.time  = @"周一";
    catagoryModel2.userImgurl = @"https://img2.doubanio.com/icon/u4197235-91.jpg";
    catagoryModel2.userNameText = @"辣手修猫";
    catagoryModel2.catagoryID = 1;
    catagoryModel2.comentID = 3;
    catagoryModel2.Content = @"哪里恐怖了？没有温子仁这就一爱情动作片，邪恶力量式单元剧，毫无技术含量也毫无新意。然而不管温子仁拍不拍，该系列性癖都是病弱帕翠克&黑化帕翠克，帕翠克被人追&帕翠克追人。";
    catagoryModel2.CellHeight = 0;
    [tempArr addObject:catagoryModel2];
    
    
    CarpVideoCatagoryDetailModel * catagoryModel3 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel3.time  = @"周一";
    catagoryModel3.userImgurl = @"https://img9.doubanio.com/icon/u206276962-5.jpg";
    catagoryModel3.userNameText = @"梵顿Kirin";
    catagoryModel3.catagoryID = 1;
    catagoryModel3.comentID = 4;
    catagoryModel3.Content = @"格局放大了后很明显不如前两部。惊吓部分很弱，几乎可以忽略，剧情也稍逊色，打破诅咒的方式有点突然(敷衍)。 但是制作还算精良，查案/黑魔法(算是吧)/魂穿这三方面的设定有被爽到。 对比上半年其他大部分恐影，《招魂3》很明显还是胜出了不少。 这样的爱情谁不想要呢？ 降低了期待值后还是愿意给一个四星。";
    catagoryModel3.CellHeight = 0;
    [tempArr addObject:catagoryModel3];
    
    
    
    CarpVideoCatagoryDetailModel * catagoryModel4 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel4.time  = @"周一";
    catagoryModel4.userImgurl = @"https://img2.doubanio.com/icon/u4197235-91.jpg";
    catagoryModel4.userNameText = @"眠眠睡得香";
    catagoryModel4.catagoryID = 2;
    catagoryModel4.comentID = 5;
    catagoryModel4.Content = @"看了大家的讨论，二刷后，想出了一个理论，给大家参考。 老赵是黄皮子猎人，说明他不害怕黄皮子，可能在之前，追踪黄皮子的时候，发现了地下的黄皮子庙，老赵发现墙上的壁画能够复活死人，条件是用活人献祭，老赵的女儿死了，老赵刚好发现在阴宅遮半天的女儿，于是杀了她给黄皮... ";
    catagoryModel4.CellHeight = 0;
    [tempArr addObject:catagoryModel4];
    
    
    CarpVideoCatagoryDetailModel * catagoryModel5 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel5.time  = @"周五";
    catagoryModel5.userImgurl = @"https://img2.doubanio.com/icon/u214329473-2.jpg";
    catagoryModel5.userNameText = @"如果我喺陈奕迅";
    catagoryModel5.catagoryID = 3;
    catagoryModel5.comentID = 5;
    catagoryModel5.Content = @"看预告片的第一反应，就是有点像借鉴了《看不见的客人》+《寄生虫》这两部电影";
    catagoryModel5.CellHeight = 0;
    [tempArr addObject:catagoryModel5];
    
    
    
    CarpVideoCatagoryDetailModel * catagoryModel6 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel6.time  = @"周五";
    catagoryModel6.userImgurl = @"https://img3.doubanio.com/icon/u50803810-20.jpg";
    catagoryModel6.userNameText = @"Whateverwillbe";
    catagoryModel6.catagoryID = 3;
    catagoryModel6.comentID = 6;
    catagoryModel6.Content = @"和寄生虫全方位相似，包括中途响起的配乐…… 不可能是巧合吧";
    catagoryModel6.CellHeight = 0;
    [tempArr addObject:catagoryModel6];
    
    
    
    CarpVideoCatagoryDetailModel * catagoryModel7 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel7.time  = @"周三";
    catagoryModel7.userImgurl = @"https://img3.doubanio.com/icon/u50803810-20.jpg";
    catagoryModel7.userNameText = @"Whateverwillbe";
    catagoryModel7.catagoryID = 4;
    catagoryModel7.comentID = 7;
    catagoryModel7.Content = @"这就是“工农的子弟，人民的武装”。军人很不容易了，求别糟蹋。真到关键时候，你是相信这部剧里帅气装备精良战斗里爆表，动不动就跟恐怖分子打的梁牧泽，还是《士兵突击》里穿着87迷彩服，拿着81杠，戴着80盔土的掉渣，为了训练落下一身伤病的伍六一？我更相信后者，有血有肉..";
    catagoryModel7.CellHeight = 0;
    [tempArr addObject:catagoryModel7];
    
    
    CarpVideoCatagoryDetailModel * catagoryModel8 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel8.time  = @"周三";
    catagoryModel8.userImgurl = @"https://img2.doubanio.com/icon/u143292866-1.jpg";
    catagoryModel8.userNameText = @"不凡的阳阳阳 ";
    catagoryModel8.catagoryID = 4;
    catagoryModel8.comentID = 8;
    catagoryModel8.Content = @"我老早之前就在爱奇艺预约了，因为题材还有演员确实吸引到我了，但是刚看完一集的我就被剧情还有人设劝退了，还有男主台词有气无力很出戏，最主要的还是剧情跟人设吧，实在太玛丽苏了吧，而且医生一般都不会这么咋呼的，真在医院这么咋呼的医生早被患者投诉了，剧本能不能严谨..";
    catagoryModel8.CellHeight = 0;
    [tempArr addObject:catagoryModel8];
    
    
    CarpVideoCatagoryDetailModel * catagoryModel9 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel9.time  = @"周三";
    catagoryModel9.userImgurl = @"https://img2.doubanio.com/icon/u195584296-2.jpg";
    catagoryModel9.userNameText = @"温客行是你爹 ";
    catagoryModel9.catagoryID = 5;
    catagoryModel9.comentID = 9;
    catagoryModel9.Content = @"一下子看完了四集，我只能说太还原了啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊，没有想到龚俊能这么攻，又正又邪的美人攻绝了，演技进步很大，每次温客行撩周絮都好好磕，服化道也挺好，周也也很漂亮，演技还需努力.";
    catagoryModel9.CellHeight = 0;
    [tempArr addObject:catagoryModel9];
    
    CarpVideoCatagoryDetailModel * catagoryModel10 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel10.time  = @"周三";
    catagoryModel10.userImgurl = @"https://img2.doubanio.com/icon/u195584296-2.jpg";
    catagoryModel10.userNameText = @"温客行是你爹 ";
    catagoryModel10.catagoryID = 6;
    catagoryModel10.comentID = 10;
    catagoryModel10.Content = @"编剧已经在越走越远的路上拉不回来了！没有最疯只有更疯，第二季结尾就够离谱的了，第三季离谱的没边了，全员双胞胎回归，🐖越来越猖狂，千千还是依旧又可怜又好笑，秀莲的改变不喜欢，洛根里变rapper，锡京不愧是猪的女儿！本以为变好了没想到。。。想想从一开始猪对她的态... ";
    catagoryModel10.CellHeight = 0;
    [tempArr addObject:catagoryModel10];
    
    
    CarpVideoCatagoryDetailModel * catagoryModel11 = [[CarpVideoCatagoryDetailModel alloc]init];
    catagoryModel11.time  = @"周三";
    catagoryModel11.userImgurl = @"https://img1.doubanio.com/icon/u142353101-7.jpg";
    catagoryModel11.userNameText = @"Yyi个普通人 ";
    catagoryModel11.catagoryID = 7;
    catagoryModel11.comentID = 11;
    catagoryModel11.Content = @"看起来科举只需要通过考试就能成为人上人，事实上这个东西是极度依赖整个帝国系统运行的。当系统本身出现问题时，大家都得死。到了民国，连科举都没了，于是只能自创一种叫民国大师的职业，假装维持自己是统治阶级的体面。 辜鸿铭的不同在于他知道自己不是了，所以他不假装，";
    catagoryModel11.CellHeight = 0;
    [tempArr addObject:catagoryModel11];
    
    BOOL catagory_Succed = [[NSUserDefaults standardUserDefaults] boolForKey:@"CarpVideoCatagoryDetailModel"];
    if (catagory_Succed == NO) {
        BOOL   catagoryIsSucded = [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:catagoryIsSucded forKey:@"CarpVideoCatagoryDetailModel"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
+(void)CarpViewMessageModelsConfigs{
    NSMutableArray * tempArr =[NSMutableArray array];
    
    carpVideoMessageModel  *  carpVideoItem = [[carpVideoMessageModel alloc]init];
    carpVideoItem.imgurl = @"https://img2.doubanio.com/icon/ul125111091-2.jpg";
    carpVideoItem.topname = @"PeterGY";
    carpVideoItem.content = @"如果你想看的话，我可以推荐你去看看春风沉醉的夜晚";
    carpVideoItem.time = @"2021-06-21 16:21:45";
    carpVideoItem.ChatID = 0;
    carpVideoItem.isShowRed = YES;
    carpVideoItem.redNum = 2;
    [tempArr addObject:carpVideoItem];
    
    
    
    carpVideoMessageModel  *  carpVideoItem1 = [[carpVideoMessageModel alloc]init];
    carpVideoItem1.imgurl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
    carpVideoItem1.topname = @"女神的秋裤";
    carpVideoItem1.content = @"实在不行，你可以去百度一下，看看有没有资源";
    carpVideoItem1.time = @"2021-05-20 22:09:13";
    carpVideoItem1.ChatID = 1;
    carpVideoItem1.isShowRed = YES;
    carpVideoItem1.redNum = 1;
    [tempArr addObject:carpVideoItem1];
    
    
    carpVideoMessageModel  *  carpVideoItem2 = [[carpVideoMessageModel alloc]init];
    carpVideoItem2.imgurl = @"https://img2.doubanio.com/icon/u4197235-91.jpg";
    carpVideoItem2.topname = @"辣手修猫";
    carpVideoItem2.content = @"《扫黑·决战》:张颂文太可怕了，不知道楼主有没有去看，没有看可以去看看哦";
    carpVideoItem2.time = @"2021-05-19 15:24:26";
    carpVideoItem2.ChatID = 2;
    carpVideoItem2.isShowRed = NO;
    carpVideoItem2.redNum = 0;
    [tempArr addObject:carpVideoItem2];
    
    
    
    carpVideoMessageModel  *  carpVideoItem3 = [[carpVideoMessageModel alloc]init];
    carpVideoItem3.imgurl = @"https://img9.doubanio.com/icon/u206276962-5.jpg";
    carpVideoItem3.topname = @"Allen艾伦艾伦";
    carpVideoItem3.content = @"韦斯·安德森的风格是不是比较怪异啊";
    carpVideoItem3.time = @"周三";
    carpVideoItem3.ChatID = 3;
    carpVideoItem3.isShowRed = NO;
    carpVideoItem3.redNum = 0;
    [tempArr addObject:carpVideoItem3];
    
    BOOL ismsgModel  = [[NSUserDefaults standardUserDefaults] boolForKey:@"carpVideoModelsList"];
    if (ismsgModel == NO) {
        BOOL tempModel =  [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:tempModel forKey:@"carpVideoModelsList"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
}
+(void)CarpVideoMessagDetailModelCofnis{
    NSMutableArray * tempArr = [NSMutableArray array];
    carpVideoMessageDetailModel * msgDetail = [[carpVideoMessageDetailModel alloc]init];
    msgDetail.msgname = @"娄烨的作品都有哪些呀，楼主推荐推荐";
    msgDetail.userID = 0;
    msgDetail.imgUrl = @"https://img2.doubanio.com/icon/ul125111091-2.jpg";
    msgDetail.msgisMe = YES;
    msgDetail.CellHeight = 0;
    [tempArr addObject:msgDetail];
    
    carpVideoMessageDetailModel * msgDetail1 = [[carpVideoMessageDetailModel alloc]init];
    msgDetail1.msgname = @"大概有推拿、春风沉醉的夜晚、浮城谜事、紫蝴蝶、苏州河、颐和园等等";
    msgDetail1.userID = 0;
    msgDetail1.imgUrl = @"https://img2.doubanio.com/icon/ul125111091-2.jpg";
    msgDetail1.msgisMe = NO;
    msgDetail1.CellHeight = 0;
    [tempArr addObject:msgDetail1];
    
    
    carpVideoMessageDetailModel * msgDetail2 = [[carpVideoMessageDetailModel alloc]init];
    msgDetail2.msgname = @"如果你想看的话，我可以推荐你去看看春风沉醉的夜晚";
    msgDetail2.userID = 0;
    msgDetail2.imgUrl = @"https://img2.doubanio.com/icon/ul125111091-2.jpg";
    msgDetail2.msgisMe = NO;
    msgDetail2.CellHeight = 0;
    [tempArr addObject:msgDetail2];
    
    
    
    carpVideoMessageDetailModel * msgDetail3 = [[carpVideoMessageDetailModel alloc]init];
    msgDetail3.msgname = @"楼主你讲的这个是电影还是电视剧啊？";
    msgDetail3.userID = 1;
    msgDetail3.imgUrl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
    msgDetail3.msgisMe = YES;
    msgDetail3.CellHeight = 0;
    [tempArr addObject:msgDetail3];
    
    carpVideoMessageDetailModel * msgDetail4 = [[carpVideoMessageDetailModel alloc]init];
    msgDetail4.msgname = @"这个是电影哈～";
    msgDetail4.userID = 1;
    msgDetail4.imgUrl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
    msgDetail4.msgisMe = NO;
    msgDetail4.CellHeight = 0;
    [tempArr addObject:msgDetail4];
    
    carpVideoMessageDetailModel * msgDetail5 = [[carpVideoMessageDetailModel alloc]init];
    msgDetail5.msgname = @"这个在哪儿能看啊";
    msgDetail5.userID = 1;
    msgDetail5.imgUrl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
    msgDetail5.msgisMe = YES;
    msgDetail5.CellHeight = 0;
    [tempArr addObject:msgDetail5];
    
    carpVideoMessageDetailModel * msgDetail6 = [[carpVideoMessageDetailModel alloc]init];
    msgDetail6.msgname = @"好家伙，你可以去熊猫追剧里看看啊 ";
    msgDetail6.userID = 1;
    msgDetail6.imgUrl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
    msgDetail6.msgisMe = NO;
    msgDetail6.CellHeight = 0;
    [tempArr addObject:msgDetail6];
    
    
    carpVideoMessageDetailModel * msgDetail7 = [[carpVideoMessageDetailModel alloc]init];
    msgDetail7.msgname = @"实在不行，你可以去百度一下，看看有没有资源";
    msgDetail7.userID = 1;
    msgDetail7.imgUrl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
    msgDetail7.msgisMe = NO;
    msgDetail7.CellHeight = 0;
    [tempArr addObject:msgDetail7];
    
    
    
    carpVideoMessageDetailModel * msgDetail8 = [[carpVideoMessageDetailModel alloc]init];
    msgDetail8.msgname = @"《扫黑·决战》:张颂文太可怕了，不知道楼主有没有去看，没有看可以去看看哦";
    msgDetail8.userID = 2;
    msgDetail8.imgUrl = @"https://img2.doubanio.com/icon/u4197235-91.jpg";
    msgDetail8.msgisMe = YES;
    msgDetail8.CellHeight = 0;
    [tempArr addObject:msgDetail8];
    
    
    carpVideoMessageDetailModel * msgDetail9 = [[carpVideoMessageDetailModel alloc]init];
    msgDetail9.msgname = @"韦斯·安德森的风格是不是比较怪异啊";
    msgDetail9.userID = 3;
    msgDetail9.imgUrl = @"https://img9.doubanio.com/icon/u206276962-5.jpg";
    msgDetail9.msgisMe = YES;
    msgDetail9.CellHeight = 0;
    [tempArr addObject:msgDetail9];
    
    
    BOOL ismsgDetailModel  = [[NSUserDefaults standardUserDefaults] boolForKey:@"CarpVideoMessagdDetailList"];
    if (ismsgDetailModel == NO) {
        BOOL tempModel =  [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:tempModel forKey:@"CarpVideoMessagdDetailList"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
}
+(void)CarpVideoActityConfigs{
    NSMutableArray * PandaTempArr  =[NSMutableArray array];
    carpVideoAcitytyModel * carpMoelitemzone =[[carpVideoAcitytyModel alloc]init];
    carpMoelitemzone.preogrese = 0.6;
    carpMoelitemzone.lastPersonNum = 123;
    carpMoelitemzone.totalPersonNum = 300;
    carpMoelitemzone.coinNum = 4;
    carpMoelitemzone.ComentCoinNum =  6.7;
    carpMoelitemzone.isBaoming = YES;
    carpMoelitemzone.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p106945151-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p106945151-2.jpg"];
    carpMoelitemzone.carpVideoThub = @"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2504646738.jpg";
    carpMoelitemzone.title = @"原创话剧《林则徐》";
    carpMoelitemzone.titleDesc =@"戏剧-话剧";
    carpMoelitemzone.DetailDesc = @"国家大剧院与广州话剧艺术中心精心组织筹划，创作团队先后赴林则徐工作和生活过的虎门、伊犁、北京、福州、蒲城等多地采风，收集和查阅了丰富的史料，采访了众多专家学者。主创主演团队汇聚了一批国内优秀创作人才，编剧郭启宏、导演王筱頔、舞美设计季乔、作曲赵季平、灯光设计邢辛、服装造型设计陈同勋、多媒体设计胡天骥以及编舞黄豆豆，共筑那段蹒跚却又充满力量的历史。";
    carpMoelitemzone.tageOne = @"鸦片流毒";
    carpMoelitemzone.tagTwo = @"林则徐";
    carpMoelitemzone.isStart = NO;
    carpMoelitemzone.isCollted = YES;
    carpMoelitemzone.colltecdNum =43;
    carpMoelitemzone.joinTime = @"06月20日 周六 19:30-21:30 至 05月232日 周日 19:30-21:30";
    carpMoelitemzone.playTime = @"06月22日 周六 19:30-21:30 至 05月23日 周日 19:30-21:30";
    carpMoelitemzone.loaction = @"北京市东城区王府井大街255号北京市百货大楼F8";
    carpMoelitemzone.phone = @"(010)65234366";
    carpMoelitemzone.LoactionID = 0;
    [PandaTempArr addObject:carpMoelitemzone];
    
    
    
    
    carpVideoAcitytyModel * carpMoelitemzone1 =[[carpVideoAcitytyModel alloc]init];
    carpMoelitemzone1.preogrese = 0.4;
    carpMoelitemzone1.lastPersonNum = 321;
    carpMoelitemzone1.totalPersonNum = 400;
    carpMoelitemzone1.coinNum = 5;
    carpMoelitemzone1.ComentCoinNum =  7.3;
    carpMoelitemzone1.isBaoming = NO;
    carpMoelitemzone1.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p100194143-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p100194143-2.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p100194143-3.jpg"];
    carpMoelitemzone1.carpVideoThub = @"https://img3.doubanio.com/pview/event_poster/plarge/public/c1744281a5d5030.jpg";
    carpMoelitemzone1.title = @"零基础组乐队|实现你的音乐梦！";
    carpMoelitemzone1.titleDesc =@"聚会-生活";
    carpMoelitemzone1.DetailDesc = @"这个周末大咖乐手一线音乐人与你一起嗨只要有一颗热爱音乐心和上台表演的冲动乐队四大乐器任你选择现场教你、现场排练、现场演出让你体验一把乐手的感觉完成人生的第一次乐队之行";
    carpMoelitemzone1.tageOne = @"A伙伴";
    carpMoelitemzone1.tagTwo = @"交友";
    carpMoelitemzone1.isStart = NO;
    carpMoelitemzone1.isCollted = NO;
    carpMoelitemzone1.colltecdNum =21;
    carpMoelitemzone1.joinTime = @"6/20 10:30:00 至 6/30 12:00:00";
    carpMoelitemzone1.playTime = @"6/26 12:30:00 至 5/7 12:00:00";
    carpMoelitemzone1.loaction = @"北京市东城区香河园路1号当代MOMA北区T4座";
    carpMoelitemzone1.phone = @"(010)84388257";
    carpMoelitemzone1.LoactionID = 1;
    [PandaTempArr addObject:carpMoelitemzone1];
    
    
    
    carpVideoAcitytyModel * carpMoelitemzone2 =[[carpVideoAcitytyModel alloc]init];
    carpMoelitemzone2.preogrese = 0.3;
    carpMoelitemzone2.lastPersonNum = 121;
    carpMoelitemzone2.totalPersonNum = 400;
    carpMoelitemzone2.ComentCoinNum =  6.8;
    carpMoelitemzone2.coinNum = 3;
    carpMoelitemzone2.isBaoming = NO;
    carpMoelitemzone2.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p100867674-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p100867674-2.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p100867674-3.jpg"];
    carpMoelitemzone2.carpVideoThub = @"https://img2.doubanio.com/pview/event_poster/plarge/public/0fdbf14d714724e.jpg";
    carpMoelitemzone2.title = @"提升即兴表达，演讲技能，并认识一些优秀的朋友 ";
    carpMoelitemzone2.titleDesc =@"聚会-交友";
    carpMoelitemzone2.DetailDesc = @"技能分享趴是一个终身学习组织，创建初衷是为了聚集各行各业优秀的人，'相互分享，终身学习'是组织的核心理念所以每月都会举办和知识，技能相关的分享活动";
    carpMoelitemzone2.tageOne = @"戏剧";
    carpMoelitemzone2.tagTwo = @"家客";
    carpMoelitemzone2.isStart = NO;
    carpMoelitemzone2.isCollted = NO;
    carpMoelitemzone2.colltecdNum =39;
    carpMoelitemzone2.joinTime = @"6/27 11:20:00 至 5/30 10:30:00";
    carpMoelitemzone2.playTime = @"6/28 10:00:00 至 6/1 24:00:00";
    carpMoelitemzone2.loaction = @"北京市通州区芙蓉园513号楼2至3层";
    carpMoelitemzone2.phone = @"(010)80850020";
    carpMoelitemzone2.LoactionID = 2;
    [PandaTempArr addObject:carpMoelitemzone2];
    
    
    
    carpVideoAcitytyModel * carpMoelitemzone3 =[[carpVideoAcitytyModel alloc]init];
    carpMoelitemzone3.preogrese = 0.6;
    carpMoelitemzone3.lastPersonNum = 41;
    carpMoelitemzone3.totalPersonNum = 100;
    carpMoelitemzone3.ComentCoinNum =  8.4;
    carpMoelitemzone3.coinNum = 4;
    carpMoelitemzone3.isBaoming = NO;
    carpMoelitemzone3.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p102226414-2.jpg"];
    carpMoelitemzone3.carpVideoThub = @"https://img2.doubanio.com/pview/event_poster/plarge/public/aca913e49629063.jpg";
    carpMoelitemzone3.title = @"北京站 | 视觉剧场《气》之迈入多感官体验的新世界 | 2021暖春专场";
    carpMoelitemzone3.titleDesc =@"戏剧-舞剧";
    carpMoelitemzone3.DetailDesc = @"视觉剧场作品《气》取材自形声意一体的象形文字“氣”的概念与意象，亦由此延伸。气是中国传统哲学中一切实体的生命能量，也是使天地间事物流动变化的动力。该剧基于对“气”这一概念的认知，对剧场中的听觉、视觉、嗅觉进行重构。精微的动作、身体和物品互动形成的画面、材料在流动中发出的声音、蒸饭所散发的香气等多种元素相互配合，共同在空间中勾勒出一幅视听景观。";
    carpMoelitemzone3.tageOne = @"安妮宝贝";
    carpMoelitemzone3.tagTwo = @"";
    carpMoelitemzone3.isStart = NO;
    carpMoelitemzone3.isCollted = NO;
    carpMoelitemzone3.colltecdNum =14;
    carpMoelitemzone3.joinTime = @"5/1 12:00:00 至 5/5 12:00:00";
    carpMoelitemzone3.playTime = @"5/8 10:12:00 至 5/15 10:20:00";
    carpMoelitemzone3.loaction = @"北京市通州区芙蓉园513号楼2至3层";
    carpMoelitemzone3.phone = @"(010)80850020";
    carpMoelitemzone3.LoactionID = 3;
    [PandaTempArr addObject:carpMoelitemzone3];
    
    
    carpVideoAcitytyModel * carpMoelitemzone4 =[[carpVideoAcitytyModel alloc]init];
    carpMoelitemzone4.preogrese = 0.2;
    carpMoelitemzone4.lastPersonNum = 579;
    carpMoelitemzone4.totalPersonNum = 1200;
    carpMoelitemzone4.ComentCoinNum =  7.5;
    carpMoelitemzone4.coinNum = 5;
    carpMoelitemzone4.isBaoming = NO;
    carpMoelitemzone4.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p107720358-2.jpg"];
    carpMoelitemzone4.carpVideoThub = @"https://img2.doubanio.com/pview/event_poster/plarge/public/f20a05dad7bf4a3.jpg";
    carpMoelitemzone4.title = @"黎明 2021红馆演唱会 香港";
    carpMoelitemzone4.titleDesc = @"音乐-演唱会";
    carpMoelitemzone4.DetailDesc = @"勇于创新及迎接挑战的天王黎明，每次举行个人演唱会都会追求突破，寻找新意，务求为所有观众带来前所未有的娱乐体验。这种永远求新、不断进步的精神，在以往的多次演唱会中已完全体现，不论是音乐风格、视像震撼，抑或是场地的选址及设计…..均已多次创新先河及带动全城话题；而今次在阔别10年后再次踏足红馆";
    carpMoelitemzone4.tageOne = @"红馆";
    carpMoelitemzone4.tagTwo = @"";
    carpMoelitemzone4.isStart = NO;
    carpMoelitemzone4.isCollted = NO;
    carpMoelitemzone4.colltecdNum =45;
    carpMoelitemzone4.joinTime = @"6/29 12:00:00 至 6/29 12:00:00";
    carpMoelitemzone4.playTime = @"6/25 12:00:00 至 6/27 12:30:00";
    carpMoelitemzone4.loaction = @"北京市通州区西海子西塔胡同1号";
    carpMoelitemzone4.phone = @"(010)80850020";
    carpMoelitemzone4.LoactionID = 4;
    [PandaTempArr addObject:carpMoelitemzone4];
    
    BOOL isLoactionModel  = [[NSUserDefaults standardUserDefaults] boolForKey:@"LoactionModel"];
    if (isLoactionModel == NO) {
        BOOL LoactionModel =  [WHC_ModelSqlite inserts:PandaTempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:LoactionModel forKey:@"LoactionModel"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
+(carpVideoRemneAdviceModel * )CarpVieoRemenComentConfigarWithHeaderImgUrl:(NSString *)imgurl FilmName:(NSString *)name mytime:(NSString *)time MyFilmID:(NSInteger)FilmID MyComentID:(NSInteger)ComentID CellHeight:(CGFloat)cellheight myContent:(NSString *)content strarNum:(NSInteger)stranum{
    carpVideoRemneAdviceModel * carpMoel =[[carpVideoRemneAdviceModel alloc]init];
    carpMoel.StarNum =  stranum;
    carpMoel.imgurl = imgurl;
    carpMoel.name =  name;
    carpMoel.time = time;
    carpMoel.FilmID = FilmID;
    carpMoel.ComentID = ComentID;
    carpMoel.CellHeight = 0;
    carpMoel.content = content;
    return carpMoel;
}
@end
