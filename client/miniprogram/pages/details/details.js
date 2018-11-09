// miniprogram/pages/details/details.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    commentslist:[],
    iscomments:true,
    id:0,
    imagelist1:[{url:"../../images/star.gif"},
                {url:"../../images/star.gif"},
                {url:"../../images/star.gif"},
                {url:"../../images/star.gif"},
                {url:"../../images/star.gif"}],
    isLogin:false
  },
  comments:function(){
    wx.navigateTo({
      url: '/pages/comments/comments?id='+this.data.id
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
         //动态加载评分
         var indexlist = res.data.result;

         var nowlist = this.data.imagelist1;

         for(var i =0;i<indexlist.length;i++){
          var n=(indexlist[i].commentscore)/2;
           for(var y = 0;y<n;y++){
          
            nowlist[y].url = "../../images/star-hover.gif"
           }

console.log(nowlist)
           
           [].push.apply(indexlist[i],nowlist);

 console.log(indexlist[i])
         }
         
         
        


        if(res.data.code==1){
          this.setData({
            commentslist:res.data.result
          })
      

        }else{
          this.setData({
            iscomments:false
          })
        }
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