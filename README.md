
redux 触发的流程   
 
1,首先是UI层触发action  
2, action 把消息传递到reducer  
3,reducer 负者更新store   
4,当stroe内容有更动的时候触发state的改变     
5,通过StoreConnector 或则 StoreBuilder来监听更新然后做界面的更新





redux编写程序的流程   

首先是创建对应业务的model  
接着是创建操作model的modelState类进行相应的model数据的业务操作 
创建对应业务的action 和对应的业务方法  
然后将action ,业务方法 和reducer进行关联 
