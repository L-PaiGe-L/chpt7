% 加载地图工具箱（需提前安装）
if ~license('test','map_toolbox')
    error('请安装MATLAB地图工具箱后运行');
end

% 地理参数设置
lat_range = [-10,55]; % 纬度范围：南纬10°-北纬55°
lon_range = [60,150]; % 经度范围：东经60°-东经150°
proj = 'cyl'; % 圆柱等积投影

% 北京和吉隆坡坐标（纬度N为正，经度E为正）
beijing = [39.90, 116.40]; % (lat, lon)
kualalumpur = [3.13, 101.68];

% 创建地图窗口
figure('Position',[300,100,800,600]);
axesm(proj,'MapLatLimit',lat_range,'MapLonLimit',lon_range);

% 绘制基础地理元素
land = shaperead('landareas.shp','UseGeoCoords',true);
geoshow(land,'FaceColor',[0.9,0.9,0.9],'EdgeColor','none'); % 陆地浅灰色
ocean = shaperead('worldoceans.shp','UseGeoCoords',true);
geoshow(ocean,'FaceColor',[0.7,0.85,1],'EdgeColor','none'); % 海洋浅蓝色
coast = shaperead('coastlines.shp','UseGeoCoords',true);
geoshow(coast,'Color','black','LineWidth',0.5); % 海岸线

% 绘制大圆航线（蓝色，线宽2.5）
drawgreatcircle(beijing(2),beijing(1),kualalumpur(2),kualalumpur(1),...
    'Color','blue','LineWidth',2.5);

% 标记城市（红色五角星+中文标签）
geoshow(beijing(1),beijing(2),'Marker','pentagram','MarkerColor','red',...
    'MarkerSize',10);
textm(beijing(1)+2,beijing(2)+2,'北京','FontSize',12,'FontName','SimHei');
geoshow(kualalumpur(1),kualalumpur(2),'Marker','pentagram','MarkerColor','red',...
    'MarkerSize',10);
textm(kualalumpur(1)-3,kualalumpur(2)-3,'吉隆坡','FontSize',12,'FontName','SimHei');

% 添加地图装饰
framem; % 绘制边框
gridm; % 显示经纬度网格
mlabel('MLabelLocation',10); % 纬度标签间隔10°
plabel('PLabelLocation',20); % 经度标签间隔20°
title('北京-吉隆坡跨国航线图','FontSize',14,'FontWeight','bold');