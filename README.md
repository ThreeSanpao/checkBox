# checkBox
selectAll,unSelect,reverse by jquery

一、总体介绍
1、本文给大家分享一段基于jQuery的全选、反选和不选功能的代码，适用于网页多选后需要进行批量操作的场景（如批量删除等）。文章结合实例，代码简洁，
基本覆盖选项选择操作的方方面面，希望可以帮到有需要的WEB爱好者。

二、注意事项
1、用$("#id").prop获得属性值，而不是.attr。关于attr和prop的区别，prop是jQuery最新框架中attr的升级版，个人理解attr是获得属性值的内容，而prop则是返回true
or false，例如：$("input:checkbox").attr返回是checked or undefined，$("input:checked").prop返回的是true or false。
