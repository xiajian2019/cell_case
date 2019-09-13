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