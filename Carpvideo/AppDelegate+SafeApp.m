//
//  AppDelegate+SafeApp.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import "AppDelegate+SafeApp.h"
#import "CarpVideoCatagoryModel.h"
#import "CarpVideoCatagoryDetailModel.h"
#import "PandaMovieMsgModel.h"
#import "PandaMsgDetailModel.h"
#import "PadaCatagoryweizhiModel.h"
@implementation AppDelegate (SafeApp)
+(void)AppDelegateConfiguartionsafe{
    [self CarpVideoConfigerCAtagroyMoels];
    [self CarpVideoCatagoryDetailModelConfigs];
    [self CarpViewMessageModelsConfigs];
    [self CarpVideoMessagDetailModelCofnis];
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
    
    PandaMovieMsgModel  *  carpVideoItem = [[PandaMovieMsgModel alloc]init];
    carpVideoItem.imgurl = @"https://img2.doubanio.com/icon/ul125111091-2.jpg";
    carpVideoItem.topname = @"PeterGY";
    carpVideoItem.content = @"如果你想看的话，我可以推荐你去看看春风沉醉的夜晚";
    carpVideoItem.time = @"2021-06-21 16:21:45";
    carpVideoItem.ChatID = 0;
    carpVideoItem.isShowRed = YES;
    carpVideoItem.redNum = 2;
    [tempArr addObject:carpVideoItem];

    
    
    PandaMovieMsgModel  *  carpVideoItem1 = [[PandaMovieMsgModel alloc]init];
    carpVideoItem1.imgurl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
    carpVideoItem1.topname = @"女神的秋裤";
    carpVideoItem1.content = @"实在不行，你可以去百度一下，看看有没有资源";
    carpVideoItem1.time = @"2021-05-20 22:09:13";
    carpVideoItem1.ChatID = 1;
    carpVideoItem1.isShowRed = YES;
    carpVideoItem1.redNum = 1;
    [tempArr addObject:carpVideoItem1];
    
    
    PandaMovieMsgModel  *  carpVideoItem2 = [[PandaMovieMsgModel alloc]init];
    carpVideoItem2.imgurl = @"https://img2.doubanio.com/icon/u4197235-91.jpg";
    carpVideoItem2.topname = @"辣手修猫";
    carpVideoItem2.content = @"《扫黑·决战》:张颂文太可怕了，不知道楼主有没有去看，没有看可以去看看哦";
    carpVideoItem2.time = @"2021-05-19 15:24:26";
    carpVideoItem2.ChatID = 2;
    carpVideoItem2.isShowRed = NO;
    carpVideoItem2.redNum = 0;
    [tempArr addObject:carpVideoItem2];
    
    
    
    PandaMovieMsgModel  *  carpVideoItem3 = [[PandaMovieMsgModel alloc]init];
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
        PandaMsgDetailModel * msgDetail = [[PandaMsgDetailModel alloc]init];
        msgDetail.msgname = @"娄烨的作品都有哪些呀，楼主推荐推荐";
        msgDetail.userID = 0;
        msgDetail.imgUrl = @"https://img2.doubanio.com/icon/ul125111091-2.jpg";
        msgDetail.msgisMe = YES;
        msgDetail.CellHeight = 0;
        [tempArr addObject:msgDetail];
        
        PandaMsgDetailModel * msgDetail1 = [[PandaMsgDetailModel alloc]init];
        msgDetail1.msgname = @"大概有推拿、春风沉醉的夜晚、浮城谜事、紫蝴蝶、苏州河、颐和园等等";
        msgDetail1.userID = 0;
        msgDetail1.imgUrl = @"https://img2.doubanio.com/icon/ul125111091-2.jpg";
        msgDetail1.msgisMe = NO;
        msgDetail1.CellHeight = 0;
        [tempArr addObject:msgDetail1];
        
        
        PandaMsgDetailModel * msgDetail2 = [[PandaMsgDetailModel alloc]init];
        msgDetail2.msgname = @"如果你想看的话，我可以推荐你去看看春风沉醉的夜晚";
        msgDetail2.userID = 0;
        msgDetail2.imgUrl = @"https://img2.doubanio.com/icon/ul125111091-2.jpg";
        msgDetail2.msgisMe = NO;
        msgDetail2.CellHeight = 0;
        [tempArr addObject:msgDetail2];
        
        
        
        PandaMsgDetailModel * msgDetail3 = [[PandaMsgDetailModel alloc]init];
        msgDetail3.msgname = @"楼主你讲的这个是电影还是电视剧啊？";
        msgDetail3.userID = 1;
        msgDetail3.imgUrl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
        msgDetail3.msgisMe = YES;
        msgDetail3.CellHeight = 0;
        [tempArr addObject:msgDetail3];
        
        PandaMsgDetailModel * msgDetail4 = [[PandaMsgDetailModel alloc]init];
        msgDetail4.msgname = @"这个是电影哈～";
        msgDetail4.userID = 1;
        msgDetail4.imgUrl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
        msgDetail4.msgisMe = NO;
        msgDetail4.CellHeight = 0;
        [tempArr addObject:msgDetail4];
        
        PandaMsgDetailModel * msgDetail5 = [[PandaMsgDetailModel alloc]init];
        msgDetail5.msgname = @"这个在哪儿能看啊";
        msgDetail5.userID = 1;
        msgDetail5.imgUrl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
        msgDetail5.msgisMe = YES;
        msgDetail5.CellHeight = 0;
        [tempArr addObject:msgDetail5];
        
        PandaMsgDetailModel * msgDetail6 = [[PandaMsgDetailModel alloc]init];
        msgDetail6.msgname = @"好家伙，你可以去熊猫追剧里看看啊 ";
        msgDetail6.userID = 1;
        msgDetail6.imgUrl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
        msgDetail6.msgisMe = NO;
        msgDetail6.CellHeight = 0;
        [tempArr addObject:msgDetail6];
        
        
        PandaMsgDetailModel * msgDetail7 = [[PandaMsgDetailModel alloc]init];
        msgDetail7.msgname = @"实在不行，你可以去百度一下，看看有没有资源";
        msgDetail7.userID = 1;
        msgDetail7.imgUrl = @"https://img2.doubanio.com/icon/u70702487-2.jpg";
        msgDetail7.msgisMe = NO;
        msgDetail7.CellHeight = 0;
        [tempArr addObject:msgDetail7];
        
        
        
        PandaMsgDetailModel * msgDetail8 = [[PandaMsgDetailModel alloc]init];
        msgDetail8.msgname = @"《扫黑·决战》:张颂文太可怕了，不知道楼主有没有去看，没有看可以去看看哦";
        msgDetail8.userID = 2;
        msgDetail8.imgUrl = @"https://img2.doubanio.com/icon/u4197235-91.jpg";
        msgDetail8.msgisMe = YES;
        msgDetail8.CellHeight = 0;
        [tempArr addObject:msgDetail8];
        
        
        PandaMsgDetailModel * msgDetail9 = [[PandaMsgDetailModel alloc]init];
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
    PadaCatagoryweizhiModel * pandaweizhiItem =[[PadaCatagoryweizhiModel alloc]init];
    pandaweizhiItem.coinNum = 4;
    pandaweizhiItem.ComentCoinNum =  6.7;
    pandaweizhiItem.isBaoming = YES;
    pandaweizhiItem.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p106623281-3.jpg",@"https://img3.doubanio.com/view/page_note/large/public/p106623281-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p106623281-2.jpg",@"https://img9.doubanio.com/view/page_note/large/public/p106623281-4.jpg"];
    pandaweizhiItem.FilmThubImgView = @"https://img3.doubanio.com/pview/event_poster/plarge/public/f14d5ac4ecb26ae.jpg";
    pandaweizhiItem.title = @"南京市京剧团出品 李卓群工作室作品 京剧《鉴证》";
    pandaweizhiItem.titleDesc =@"戏剧-戏曲";
    pandaweizhiItem.DetailDesc = @"京剧《鉴证》是2019年度南京艺术基金资助项目，由南京市京剧团出品，是南京市京剧团与北京京剧院建立战略合作关系后的首部创排剧目，更是李卓群工作室成立后的首部作品。李卓群导演潜心经年打磨剧本，参阅两百万字史料；著名作曲家谢振强、戏曲界造型“圣手”蓝玲、青年舞美设计任思远、旅美青年舞蹈家赵玺等，倾情加盟剧组创作团队；国家清史工程《清光绪帝死因研究》课题组主持人钟里满担任史学顾问；更有南北两地当红京剧偶像、梅花奖实力派戏骨联袂出演。";
    pandaweizhiItem.tageOne = @"鉴证";
    pandaweizhiItem.tagTwo = @"隆裕皇后";
    pandaweizhiItem.isStart = NO;
    pandaweizhiItem.isCollted = YES;
    pandaweizhiItem.colltecdNum =43;
    pandaweizhiItem.joinTime = @"05月20日 周六 19:30-21:30 至 05月232日 周日 19:30-21:30";
    pandaweizhiItem.playTime = @"05月22日 周六 19:30-21:30 至 05月23日 周日 19:30-21:30";
    pandaweizhiItem.loaction = @"北京市东城区王府井大街255号北京市百货大楼F8";
    pandaweizhiItem.phone = @"(010)65234366";
    pandaweizhiItem.LoactionID = 0;
    [PandaTempArr addObject:pandaweizhiItem];
    
    
    
    
    PadaCatagoryweizhiModel * pandaweizhiItem1 =[[PadaCatagoryweizhiModel alloc]init];
    pandaweizhiItem1.coinNum = 5;
    pandaweizhiItem1.ComentCoinNum =  7.3;
    pandaweizhiItem1.isBaoming = NO;
    pandaweizhiItem1.imgArrs = @[@"https://img1.doubanio.com/view/page_note/large/public/p93942947-7.jpg",@"https://img1.doubanio.com/view/page_note/large/public/p93942947-8.jpg",@"https://img1.doubanio.com/view/page_note/large/public/p93942947-9.jpg"];
    pandaweizhiItem1.FilmThubImgView = @"https://img1.doubanio.com/pview/event_poster/plarge/public/94a99db35e6b3bc.jpg";
    pandaweizhiItem1.title = @"A伙伴北京 | 每周认识新朋友，看看别人的世界";
    pandaweizhiItem1.titleDesc =@"聚会-交友";
    pandaweizhiItem1.DetailDesc = @"由于活动周期较长，活动场地不定，请微信联系 Ahuoban_bj 获取活动信息和活动报名途径微信搜索 A伙伴 公众号可看到往期活动回顾/小程序可看到近期活动安排";
    pandaweizhiItem1.tageOne = @"A伙伴";
    pandaweizhiItem1.tagTwo = @"交友";
    pandaweizhiItem1.isStart = NO;
    pandaweizhiItem1.isCollted = NO;
    pandaweizhiItem1.colltecdNum =21;
    pandaweizhiItem1.joinTime = @"5/20 10:30:00 至 6/30 12:00:00";
    pandaweizhiItem1.playTime = @"5/5 12:30:00 至 5/7 12:00:00";
    pandaweizhiItem1.loaction = @"北京市东城区香河园路1号当代MOMA北区T4座";
    pandaweizhiItem1.phone = @"(010)84388257";
    pandaweizhiItem1.LoactionID = 1;
    [PandaTempArr addObject:pandaweizhiItem1];
    
    
    
    PadaCatagoryweizhiModel * pandaweizhiItem2 =[[PadaCatagoryweizhiModel alloc]init];
    pandaweizhiItem2.ComentCoinNum =  6.8;
    pandaweizhiItem2.coinNum = 3;
    pandaweizhiItem2.isBaoming = NO;
    pandaweizhiItem2.imgArrs = @[@"https://img3.doubanio.com/view/page_note/large/public/p106155352-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p106155352-2.jpg"];
    pandaweizhiItem2.FilmThubImgView = @"https://img9.doubanio.com/pview/event_poster/plarge/public/17c8028bfc05174.jpg";
    pandaweizhiItem2.title = @"上海话剧艺术中心 话剧《家客》";
    pandaweizhiItem2.titleDesc =@"戏剧-话剧";
    pandaweizhiItem2.DetailDesc = @"话剧《家客》用一种新的戏剧表达方式阐述老一辈知识分子面对当下快速发展的社会的姿态和观点。怎样积极融入快速发展的社会步伐之中？如何看待历史长河中当下的社会现象？又怎样在这样的快速发展之中获得身份认同？全剧没有强烈的戏剧冲突，却用老年人特有的“絮絮叨叨”的方式，引出了众多当下的社会现象，并引导观众发出自己的声音。此乃写在开篇的“士不可以不弘毅，任重而道远”。全剧从老一辈知识分子的角度出发，对当下知识分子发出了有力的质问并进行了反思。";
    pandaweizhiItem2.tageOne = @"戏剧";
    pandaweizhiItem2.tagTwo = @"家客";
    pandaweizhiItem2.isStart = NO;
    pandaweizhiItem2.isCollted = NO;
    pandaweizhiItem2.colltecdNum =39;
    pandaweizhiItem2.joinTime = @"5/27 11:20:00 至 5/30 10:30:00";
    pandaweizhiItem2.playTime = @"6/1 10:00:00 至 6/1 24:00:00";
    pandaweizhiItem2.loaction = @"北京市通州区芙蓉园513号楼2至3层";
    pandaweizhiItem2.phone = @"(010)80850020";
    pandaweizhiItem2.LoactionID = 2;
    [PandaTempArr addObject:pandaweizhiItem2];
    
    
    
    PadaCatagoryweizhiModel * pandaweizhiItem3 =[[PadaCatagoryweizhiModel alloc]init];
    pandaweizhiItem3.ComentCoinNum =  8.4;
    pandaweizhiItem3.coinNum = 4;
    pandaweizhiItem3.isBaoming = NO;
    pandaweizhiItem3.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p102226414-2.jpg"];
    pandaweizhiItem3.FilmThubImgView = @"https://img2.doubanio.com/pview/event_poster/plarge/public/aca913e49629063.jpg";
    pandaweizhiItem3.title = @"北京站 | 视觉剧场《气》之迈入多感官体验的新世界 | 2021暖春专场";
    pandaweizhiItem3.titleDesc =@"戏剧-舞剧";
    pandaweizhiItem3.DetailDesc = @"视觉剧场作品《气》取材自形声意一体的象形文字“氣”的概念与意象，亦由此延伸。气是中国传统哲学中一切实体的生命能量，也是使天地间事物流动变化的动力。该剧基于对“气”这一概念的认知，对剧场中的听觉、视觉、嗅觉进行重构。精微的动作、身体和物品互动形成的画面、材料在流动中发出的声音、蒸饭所散发的香气等多种元素相互配合，共同在空间中勾勒出一幅视听景观。";
    pandaweizhiItem3.tageOne = @"安妮宝贝";
    pandaweizhiItem3.tagTwo = @"";
    pandaweizhiItem3.isStart = NO;
    pandaweizhiItem3.isCollted = NO;
    pandaweizhiItem3.colltecdNum =14;
    pandaweizhiItem3.joinTime = @"5/1 12:00:00 至 5/5 12:00:00";
    pandaweizhiItem3.playTime = @"5/8 10:12:00 至 5/15 10:20:00";
    pandaweizhiItem3.loaction = @"北京市通州区芙蓉园513号楼2至3层";
    pandaweizhiItem3.phone = @"(010)80850020";
    pandaweizhiItem3.LoactionID = 3;
    [PandaTempArr addObject:pandaweizhiItem3];
    
    
    PadaCatagoryweizhiModel * pandaweizhiItem4 =[[PadaCatagoryweizhiModel alloc]init];
    pandaweizhiItem4.ComentCoinNum =  7.5;
    pandaweizhiItem4.coinNum = 5;
    pandaweizhiItem4.isBaoming = NO;
    pandaweizhiItem4.imgArrs = @[@"https://img3.doubanio.com/view/page_note/large/public/p106122976-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p106122976-2.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p106122976-3.jpg",@"https://img9.doubanio.com/view/page_note/large/public/p106122976-4.jpg"];
    pandaweizhiItem4.FilmThubImgView = @"https://img1.doubanio.com/pview/event_poster/plarge/public/16438cfbac21f07.jpg";
    pandaweizhiItem4.title = @"百老汇全球经典创意舞台秀《STOMP破铜烂铁》";
    pandaweizhiItem4.titleDesc = @"戏剧-其他";
    pandaweizhiItem4.DetailDesc = @"《STOMP破铜烂铁》融入打击乐、街舞、踢踏舞、和视觉喜剧等多重表演元素，是一场放眼全球仍堪称独一无二的顶级舞台秀形式。自1991年演出以来，STOMP破铜烂铁以其非凡的创造力、贴近生活的表演，诙谐幽默又让人血脉贲张的表演，一场场引起现场观众燃情投入。虽历经27年，仍不断创新改良，成为在百老汇和伦敦西区常年驻演的传奇演出。";
    pandaweizhiItem4.tageOne = @"百老汇";
    pandaweizhiItem4.tagTwo = @"";
    pandaweizhiItem4.isStart = NO;
    pandaweizhiItem4.isCollted = NO;
    pandaweizhiItem4.colltecdNum =45;
    pandaweizhiItem4.joinTime = @"5/1 12:00:00 至 5/5 12:00:00";
    pandaweizhiItem4.playTime = @"5/10 12:00:00 至 5/12 112:30:00";
    pandaweizhiItem4.loaction = @"北京市通州区西海子西塔胡同1号";
    pandaweizhiItem4.phone = @"(010)80850020";
    pandaweizhiItem4.LoactionID = 4;
    [PandaTempArr addObject:pandaweizhiItem4];
    
    BOOL isLoactionModel  = [[NSUserDefaults standardUserDefaults] boolForKey:@"LoactionModel"];
    if (isLoactionModel == NO) {
        BOOL LoactionModel =  [WHC_ModelSqlite inserts:PandaTempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:LoactionModel forKey:@"LoactionModel"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
@end
