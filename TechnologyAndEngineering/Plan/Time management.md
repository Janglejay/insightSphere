### Important and urgent 
#### 运维问题
**修改材料组不成功**
**新职伤线上问题梳理**
**新职伤流程推动运维问题**
**银行卡信息回显异常**
**材料补传功能**
#### 保司联调
**接口文档**
- [ ] 添加接口文档, 区分新老商保
- [ ] 对接口文档中各个字段进行清晰的定义，以及补充相关示例
**保司接口异常梳理**
	- 日志完善
![[attachment/Pasted image 20230413171449.png]]为什么ignore，当前状态，保司信息。日志少了等号
**功能添加**
1. 赔付类型相关字段
2. 产品信息
3. 图片格式解析
#### 业务需求
**新职伤相关需求**
- [ ] 新职伤材料上传可以上传pdf
**订单截图信息-骑士意外险获取**
**小药箱**
https://km.sankuai.com/collabpage/1631155168
**放心吃标签(暂停)**
[取消险理赔方案](https://km.sankuai.com/page/894702171)
[prd]([https://km.sankuai.com/collabpage/1587762225](https://km.sankuai.com/collabpage/1587762225))
[场景侧设计方案]([https://km.sankuai.com/collabpage/1376054833](https://km.sankuai.com/collabpage/1376054833))
**骑手新商保项目试点计划**
https://km.sankuai.com/collabpage/1587715597
#### 技术需求
**主从延迟处理**
https://km.sankuai.com/collabpage/1498082558
**ES治理**
[新职伤分享](https://km.sankuai.com/collabpage/1527473819)
[[../美团保险联调平台使用(测试版）]]
**plus启动文件**
[https://dev.sankuai.com/code/repo-detail/SA/plus_tools/file/list](https://dev.sankuai.com/code/repo-detail/SA/plus_tools/file/list)
```xml
autodeploy:
 hulkos: centos7
 tools:
     fontmsyh
```
MDP部署: https://km.sankuai.com/page/424823177#id-4.2Plus%E6%9E%84%E5%BB%BA%E6%A8%A1%E6%9D%BF%E9%85%8D%E7%BD%AE
1. 与普通类型区别
2. 与xframe区别
> https://km.sankuai.com/page/188403717
> https://km.sankuai.com/page/406811514
> https://km.sankuai.com/collabpage/1404499852
> xframe服务部署: https://km.sankuai.com/page/152184974
健康检查：https://km.sankuai.com/page/851935001
服务启动失败：https://km.sankuai.com/page/405879297

**多线程传播Mtrace信息**

**审批工作流**
https://km.sankuai.com/page/1618134523
https://km.sankuai.com/collabpage/1629257392

### Important not urgent
#### 系统设计
**材料系统数据与设计**
材料生命周期
[定制机微信数据](https://km.sankuai.com/collabpage/1572002878) 
大象群：工作手机数据同步
微信群：美团保险%奥创技术支持
#### 系统优化
[role过滤问题](https://km.sankuai.com/collabpage/1532424164)
[慢查询](https://das.mws.sankuai.com/das/slow-query/dbdetail/claimhandle/89686?time=%5B%222023-02-07T19%3A59%3A35%22,%222023-02-07T20%3A04%3A35%22%5D&timeRadio=5&checked=0)
```ad-info
- [ ] 医院，等清单慢查询转ES
```


### Urgent not important
1. 听音
2. 故障演练
https://km.sankuai.com/collabpage/1447026317
### Not urgent not important