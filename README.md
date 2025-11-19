# 第7章 数据可视化综合应用

这是一个数据可视化的综合项目，包含第7章课后习题的完整实现，涵盖3D柱形图、衰减正弦波动画、跨国航线地图和Peaks函数3D曲面等多种可视化技术。

## 🎯 项目概述

本项目包含四个核心数据可视化习题的实现：

- **习题1**: 3D柱形图绘制 - 对角线位置的随机高度柱子
- **习题2**: 衰减正弦波动画 - 基于数学公式的相位移动动画
- **习题3**: 跨国航线地图 - 北京到吉隆坡的大圆航线
- **习题4**: Peaks函数3D曲面 - 经典数学函数的三维可视化

## 📁 文件结构

### 📊 Jupyter Notebook
- **`数据可视化综合应用.ipynb`** - 完整的Python实现，包含所有四个习题的代码

### 🌐 Web可视化 (推荐)
- **`visualiztion-offline.html`** - ⭐ **推荐使用** - 完全离线运行的网页版本
  - 纯Canvas实现，无需外部依赖
  - 粉紫色渐变主题 + 透明毛玻璃效果
  - 丰富的交互功能：柱子生长动画、波形动画、飞行模拟、3D旋转
  - 响应式设计，支持各种设备

- **`index-standalone.html`** - 智能降级版本
  - 优先使用ECharts，失败时自动切换到Canvas
  - 完整的交互功能

- **`index.html`** - 标准ECharts版本
  - 需要网络连接加载ECharts库

### 📈 MATLAB原始文件
- **`lp1.m`** - 3D柱形图MATLAB代码
- **`lp2.m`** - 衰减正弦波MATLAB代码  
- **`lp3.m`** - 跨国航线MATLAB代码
- **`lp4.m`** - Peaks函数MATLAB代码

## 🚀 快速开始

### 方法1: 直接打开HTML文件 (推荐)
```bash
# 克隆仓库
git clone https://github.com/L-PaiGe-L/chpt7.git
cd chpt7

# 直接在浏览器中打开
open visualiztion-offline.html
```

### 方法2: 使用Jupyter Notebook
```bash
# 安装依赖
pip install numpy matplotlib cartopy pillow

# 运行notebook
jupyter notebook "数据可视化综合应用.ipynb"
```

## ✨ 功能特性

### 🎨 视觉设计
- **粉紫色渐变主题** - 梦幻的配色方案
- **毛玻璃透明效果** - 现代化的UI设计
- **动态细闪粒子** - 增强视觉体验
- **响应式布局** - 适配各种屏幕尺寸

### 🔄 交互功能
- **3D柱形图**: 
  - 柱子生长动画效果
  - 数据随机重新生成
- **衰减正弦波**: 
  - 实时相位移动动画
  - 开始/停止控制
- **航线地图**: 
  - 真实飞机飞行动画
  - 地理信息展示
- **3D曲面**: 
  - 缓慢持续旋转
  - 多种配色方案切换

### 📊 技术实现
- **纯前端技术**: HTML5 Canvas + JavaScript
- **数学算法**: Peaks函数、衰减正弦波、大圆航线计算
- **3D变换**: 矩阵变换、透视投影、深度排序
- **动画系统**: requestAnimationFrame + 缓动函数

## 🧮 数学原理

### Peaks函数
```math
z = 3(1-x)^2e^{-x^2-(y+1)^2} - 10(x/5-x^3-y^5)e^{-x^2-y^2} - 1/3e^{-(x+1)^2-y^2}
```

### 衰减正弦波
```math
y = e^{-0.1x} × sin(x)
```

### 大圆航线距离
使用Haversine公式计算地球表面两点间最短距离

## 🛠️ 技术栈

- **前端**: HTML5, CSS3, JavaScript (ES6+)
- **可视化**: Canvas API, 数学函数, 3D变换
- **动画**: requestAnimationFrame, 缓动函数
- **设计**: CSS渐变, backdrop-filter, 响应式布局
- **数据科学**: Python, NumPy, Matplotlib, Jupyter

## 🌟 亮点功能

1. **完全离线运行** - 无需任何外部依赖
2. **流畅动画效果** - 60fps丝滑体验  
3. **数学可视化** - 精确的函数图形绘制
4. **3D渲染** - 真实的3D变换和投影
5. **响应式设计** - 移动端友好
6. **视觉美化** - 现代化UI设计

## 📱 兼容性

- ✅ Chrome 60+
- ✅ Firefox 55+  
- ✅ Safari 12+
- ✅ Edge 79+
- ✅ 移动端浏览器

## 🎮 使用指南

### 网页版本
1. 打开 `visualiztion-offline.html`
2. 浏览四个可视化卡片
3. 点击各功能按钮体验交互
4. 查看详细的数学说明

### Jupyter版本
1. 运行所有cell查看完整实现
2. 修改参数探索不同效果
3. 运行动画生成GIF文件

## 🤝 贡献

欢迎提交Issue和Pull Request来改进项目！

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件

## 🙏 致谢

感谢ECharts、NumPy、Matplotlib等开源项目的支持。

---

**作者**: L-PaiGe-L  
**仓库**: https://github.com/L-PaiGe-L/chpt7  
**在线演示**: 直接下载HTML文件即可本地运行