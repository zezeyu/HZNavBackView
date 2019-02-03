# HZNavBackView

### 自定义导航栏，支持导航栏颜色修改，颜色渐变，使用简单。

### 集成
       pod 'HZNavBackView'

### 使用说明
##### 建议在BaseViewController 设置好工程导航栏需要的颜色，在到个别ViewController去修改单个导航栏

``` bash
    渐变颜色导航栏
    UIColor * start = [UIColor colorWithRed:64/255.0 green:136/255.0 blue:246/255.0 alpha:1];
    UIColor * end = [UIColor colorWithRed:23/255.0 green:205/255.0 blue:227/255.0 alpha:1];
    [self hz_GradientColors:[NSArray arrayWithObjects:start,end,nil] startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 0)];
    
    设置图片导航栏
    self.hz_topView.image = [UIImage imageNamed:@"nav_bg"];
    
    设置颜色导航栏
    self.hz_topView.backgroundColor = [UIColor whiteColor];
```
### 欢迎指点，吐槽，讨论  QQ：895315401    如果觉得用得上的话，可不可以给颗星星。
