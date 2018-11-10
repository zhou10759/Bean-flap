// miniprogram/pages/details/details.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    commentslist:[],
    iscomments:true,
    id:0,
    imagelist1:"",
    isLogin:false,
    listscore:null
  },
  comments:function(){
    var res = getApp().golbalData.userlist
    wx.getStorage({
      key: 'zzz',
      success: (res)=>{
      if(getApp().golbalData.isLogin){
          wx.navigateTo({
            url: '/pages/comments/comments?id='+this.data.id
          })
      }else{
        wx.switchTab({  
          url: '/pages/user/user'
        })
      }
      }
    })
    

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var nowid = options.id
    this.setData({id:nowid})

     wx.request({
       url:"http://127.0.0.1:3000/user/comment",
       data:{id:options.id},
       success:(res)=>{
        if(res.data.code==1){
          var indexlist = res.data.result;
        var imglist = this.data.imagelist1;
        var list = []
        for(var i = 0;i<indexlist.length;i++){
          var n=(indexlist[i].commentscore)/2;
          if(n==1){
            indexlist[i].commentscore="../../images/star-hover.gif"
          }else if(n==2){
            indexlist[i].commentscore="../../images/star-hover2.png"
          }else if(n==3){
            indexlist[i].commentscore="../../images/star-hover3.png"
          }else if(n==4){
            indexlist[i].commentscore="../../images/star-hover4.png"
          }else if(n==5){
            indexlist[i].commentscore="../../images/star-hover5.png"
          }
          
        }
          this.setData({
            commentslist:res.data.result
          })
          console.log(res.data.result)
       }else{
          this.setData({
            iscomments:false
          })
        }
         //动态加载评分


        
       }
     })
  
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})