







### redux 触发的流程  
![](https://github.com/yxwandroid/flutter_app_redux/blob/master/redux.jpg) 
 
    1,首先是UI层触发action  
    2,action 把消息传递到reducer  
    3,reducer 负者更新store   
    4,当stroe内容有更动的时候触发state的改变     
    5,通过StoreConnector 或则 StoreBuilder来监听更新然后做界面的更新





### redux编写程序的流程   

    首先是创建对应业务的model  
    接着是创建操作model的modelState类进行相应的model数据的业务操作 
    创建对应业务的action 和对应的业务方法  
    然后将action ,业务方法 和reducer进行关联 
    



### 参考

https://juejin.im/post/5ba26c086fb9a05ce57697da
https://zhuanlan.zhihu.com/p/55587462




### 关注公众号获取更多内容


如有帮助到你请给个star吧 你的支持就是我的努力做好的动力!!! 

--------------关注公众号第一时间获取最新内容------------------------

  ![在这里插入图片描述](https://img-blog.csdnimg.cn/20190926100941125.jpg)






