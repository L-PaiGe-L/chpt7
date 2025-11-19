% 基础参数设置
x = linspace(0,10*pi,500); % x轴范围0-10π
fps = 15; % 帧率
total_frames = 50; % 总帧数
phi_step = 2*pi/total_frames; % 每帧相位移动步长

% 创建画布
figure('Position',[200,200,700,400]);
xlabel('t','FontSize',12);
ylabel('y','FontSize',12);
title('习题2:衰减正弦波动画','FontSize',14,'FontWeight','bold');
xlim([0,10*pi]); % 固定x轴范围
ylim([-1.2,1.2]); % 固定y轴范围
grid on;

% 初始化曲线对象
h = plot(x,exp(-0.1*x).*sin(x),'LineWidth',2,'Color','#2E86AB');

% 生成GIF动画
for i = 1:total_frames
    phi = (i-1)*phi_step; % 当前相位偏移
    y = exp(-0.1*x).*sin(x + phi); % 衰减正弦波方程
    set(h,'YData',y); % 更新曲线数据
    
    % 捕获当前帧并保存到GIF
    frame = getframe(gcf);
    im = frame2im(frame);
    [im_ind,map] = rgb2ind(im,256);
    
    if i == 1
        imwrite(im_ind,map,'wave_animation.gif','GIF','LoopCount',Inf,'DelayTime',1/fps);
    else
        imwrite(im_ind,map,'wave_animation.gif','GIF','WriteMode','append','DelayTime',1/fps);
    end
end

disp('GIF动画已保存为 wave_animation.gif');