% 数据准备：x/y定义域[-3,3]，高网格密度保证平滑
x = linspace(-3,3,100); % 100个采样点，平衡平滑度和性能
y = linspace(-3,3,100);
[X,Y] = meshgrid(x,y); % 生成网格
Z = peaks(X,Y); % Peaks函数计算z值

% 创建3D曲面图
figure('Position',[400,200,700,600]);
surf(X,Y,Z,'EdgeColor','none'); % 无边缘线，更光滑

% 设置视觉风格
colormap(viridis); % 颜色映射viridis（参考图风格）
colorbar; % 添加颜色条辅助阅读
shading interp; % 插值着色，增强平滑感

% 添加标签和标题
xlabel('X轴','FontSize',12);
ylabel('Y轴','FontSize',12);
zlabel('Z轴','FontSize',12);
title('Peaks函数3D曲面图','FontSize',14,'FontWeight','bold');

% 调整视角和坐标轴范围
view(45,30); % 45°水平视角，30°垂直视角
xlim([-3,3]);
ylim([-3,3]);
zlim([-8,8]);

grid on;
rotate3d on; % 支持旋转查看