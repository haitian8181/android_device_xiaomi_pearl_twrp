### OrangeFox Recovery 设备树 | 红米 Note 12T Pro (Pearl)
[English Version](README.md)

## 设备参数信息

基本参数   | 规格
-------:|:-------------------------
CPU     | 八核1+3+4架构 Cortex-A78主频最高可达3.1GHz
处理器   | 联发科 天玑 8200-Ultra
GPU     | Mali-G610 MC6
运行内存 | 8/12 GB RAM (LPDDR5 6400Mbps)
出厂系统 |  基于安卓13的MIUI 14
存储规格 | 128G/256G/512G (UFS 3.1)
电池容量 | 5080 mAh不可拆卸式
屏幕规格 | 分辨率：1080 x 2460, 6.6 英寸
支持的刷新率 | 30/48/50/60/90/120/144Hz
屏幕类型 | IPS LCD屏幕

![Redmi Note 12T Pro](https://cdn.cnbj1.fds.api.mi-img.com/nr-pub/202305291422_e96776c7e1e35cebb454457c3344d3cd.png)

正常工作的:
- [X] ADB调试
- [X] data分区部分解密 (Android 14)
- [X] 屏幕显示
- [X] Fasbootd模式
- [X] 卡刷模式
- [X] MTP文件传输
- [X] Sideload侧载刷入
- [X] USB OTG功能
- [X] 震动
- [X] 触摸

## 我该如何刷入？

使用以下命令刷入编译好的rec
```
fastboot flash vendor_boot out/target/product/pearl/vendor_boot.img
```
