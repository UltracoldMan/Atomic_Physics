% 定义 k 的范围
k = linspace(0, 0.2, 1000);

% 定义不同的 a_s 值
a_s_values = [100, 1000, -100, -1000];

% 为了能够区分不同的曲线，可以定义不同的颜色
colors = ['r', 'g', 'b', 'm'];

% 创建一个新的图形窗口
figure;
hold on;

% 循环绘制不同 a_s 值对应的曲线
for i = 1:length(a_s_values)
    a_s = a_s_values(i);
    delta_k = atan(-k * a_s);
    delta_k_pi = delta_k / pi;
    
    % 绘制曲线
    plot(k, delta_k_pi, 'Color', colors(i), 'DisplayName', sprintf('a_s/r_0 = %d', a_s));
end

% 添加图例
legend show;

% 添加标题和轴标签，使用 LaTeX 解释器
title('$\delta_k = \arctan(-ka_s)$', 'Interpreter', 'latex');
xlabel('$kr_0$', 'Interpreter', 'latex');
ylabel('$\delta_k / \pi$', 'Interpreter', 'latex');

% 设置坐标轴字体为 Times New Roman
ax = gca;
ax.FontName = 'Times New Roman';

% 显示网格
grid on;
hold off;
