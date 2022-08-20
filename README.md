# BatchMODISCorrection

[English](#jump)

## 功能介绍
快速对MODIS系列数据进行批量重投影。
## 使用需知
使用此代码前需要有一定的使用[MCTK](https://github.com/dawhite/MCTK)(Modis Conversion Toolkit)的经验。

本代码基于MCTK提供的接口开发

`mctk_user_guide_api_examples.pro`为其它modis产品处理的模板，可以从中选取并修改`for_reflection.pro`文件中内容。

## 使用方法

1.安装MCTK，并保证能在envi中使用

2.在envi中导入项目

3.首先编译`for_reflection.pro`文件

4.再编译`BatchMODISFiles.pro`文件，并运行

5.在弹框中批量选择需要运算的文件

6.结果会在源文件所在的根目录显示





# English

## Feature introduction

<span id="jump">This project is designed to rapidly reproject MODIS series data in batches.</span>

## Use need to know

You need to have some experience with [MCTK](https://github.com/dawhite/MCTK)(Modis Conversion Toolkit)  before using this code.

This code is based on the interface provided by MCTK.

`McTk_user_guide_api_examples. pro` is a template for other MODIS products. You can select and modify the contents of the `for_reflection. Pro` file.

## How to use it

1. Install MCTK and ensure that it can be used in ENVI

2. Import the project in envi

3. Firstly, compile the `for_reflection. Pro` file

4. Then, compile the 'batchmodisfiles. pro' file and run it

5. In the file-dialog-box, select files which you want to be calculated in batches

6. The result is displayed in the root directory where the source file resides