---
tags: Design-Pattern
---
# REIS方法论
>包括场景（scene），角色（role），交互（interaction），效果(effect)四个要素 
## 资料
| 资料 | 说明 |
| ---| ---- |
| [REIS]('https://www.bilibili.com/video/BV1M94y1f7HX/?spm_id_from=pageDriver&vd_source=99b31898c1408d1d4c4fe207c39caefd) |   分析设计模式的方法论  | 
| [文章](https://www.bilibili.com/read/cv15592468)                                                                        |     描述了项目背景 |

![vedio](https://www.bilibili.com/video/BV1M94y1f7HX/?spm_id_from=pageDriver&vd_source=99b31898c1408d1d4c4fe207c39caefd#t=11:09)

## 场景 (Scene )
场景（Scene）
场景，也就是我们在什么情况下，遇到了什么问题，需要使用某个设计模式。

## 角色（Role）
角色，一般为设计模式出现的类，或者对象。每种角色有自己的职责。

## 交互（interaction）
交互，是指设计模式中，各种角色是如何交互的，一般用UML中的序列图，活动图来表示。简单的说就是角色之间是如何配合，完成设计模式的使命的。对于23种基本设计模式，因为他们是元设计模式，所以交互都比较简单，后面我们要讲的业务型设计模式，如多线程相关设计模式，异步消息相关设计模式等，交互就比较复杂，MVC,ORM这些都属于业务型设计模式。

## 效果(effect)
效果，使用该设计模式之后，达到了什么效果，有何意义，当然，也可以说说它的缺点，或者风险。