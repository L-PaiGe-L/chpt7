% 数据准备：对角位置(1,1),(2,2),(3,3),(4,4)，z轴随机整数(1-10)
x = [1,2,3,4];
y = [1,2,3,4];
z = randi([1,10],1,4); % 随机高度，高低起伏

% 创建3D柱形图
figure('Position',[100,100,600,500]);
h = bar3(x,y,z); % 绘制3D柱状图

% 设置柱子样式：填充色、边缘色、粗细
set(h,'FaceColor',[0.2,0.6,0.8],'EdgeColor','black','LineWidth',1);
h.FaceAlpha = 0.8; % 透明度
h.Width = 0.6; % 柱子粗细

% 添加标签和标题
xlabel('X轴','FontSize',12);
ylabel('Y轴','FontSize',12);
zlabel('Z轴','FontSize',12);
title('3D对角柱形图','FontSize',14,'FontWeight','bold');

% 调整坐标轴范围
xlim([0.5,4.5]);
ylim([0.5,4.5]);
zlim([0,12]);

grid on; % 显示网格
rotate3d on; % 支持3D旋转查看