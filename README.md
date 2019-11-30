== README

UI 组件化实践，配合实践的是 使用 https://github.com/json-editor/json-editor 来编辑组件信息：


相关的技术的选型：

1. 集成的活动编辑的界面： https://yangyuji.github.io/h5-factory/

h5-factory 其实只提供一种编辑的界面，如何是管理，处理发布组件，这个是需要另外的去设计&考虑。

h5-factory 中对组件的定义比较的复杂：举个例子，比如图片的组件：定义了如下的这些属性：

* action
* active
* domId
* domName
* style - 复杂的界面的定义都在这里
* type
* title 标记

组件的类型，大概有这样的一些组件：

* 文本
* 图片
* 表单
* 轮播图
* 底部导航
* 楼层导航
* 倒计时
* 横向滚动
* 滚动新闻
* 金刚位的

关于现有的模型设计的 3 张表的中的字段：

Component 中 config 存在的这样的几个不同的字段：

- properties 其实定义的是 json-schema - 使用这样的标准的模式来定组件，具有非常的概括性
- props 其中定义的属性


## JSON-schema

http://jsonschema.net/#/


page 的 config:

```
properties:
author: {default: "", type: "string", title: "作者"}
description: {default: "", type: "string", title: "页面描述"}
keywords: {default: Array(0), type: "array", title: "关键字", items: {…}}
links: {default: Array(0), type: "array", title: "外链样式", items: {…}}
metas: {type: "array", title: "额外的 meta 标签", items: {…}, default: Array(2)}
script: {default: "", type: "string", title: "内联脚本"}
scripts: {default: Array(0), type: "array", title: "外链脚本", items: {…}}
style: {default: "", type: "string", title: "内联样式"}
title: {default: "", type: "string", title: "页面标题"}
__proto__: Object
```

