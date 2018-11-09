import { reverse } from "dns";

// miniprogram/pages/comments/comments.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    comments:"",
    imagelist1:[{url:"../../images/star.gif"},
                {url:"../../images/star.gif"},
                {url:"../../images/star.gif"},
                {url:"../../images/star.gif"},
                {url:"../../images/star.gif"}],

    imagelist2:[{url:"../../images/star-hover.gif"},
                {url:"../../images/star-hover.gif"},
                {url:"../../images/star-hover.gif"},
                {url:"../../images/star-hover.gif"},
                {url:"../../images/star-hover.gif"} ],
    score:0,
    id:0,
    list:[]
  },
  clickscore:function(e){
    var index = e.target.dataset.index;
     var nowlist =  this.data.imagelist1;
    for(var i=0;i<=index;i++){
      nowlist[i].url = "../../images/star-hover.gif"
    }


    this.setData({imagelist1:nowlist})
    index=(index+1)*2
    this.setData({score:index})
  },
  clear:function(){
   
  },
  bindTextAreaBlur: function(e) {
    //bindblur  获取文本域中的值
      var content = e.detail.value;
      this.setData({comments:content})
  },
  submitcomment:function(){
    //id`, `headportrait`, `uname`, `comments`, `commenttime`, `commentscore`    
    var time = this.getNowFormatDate();
     wx.request({
       url:"http://127.0.0.1:3000/user/comments",
       method:"POST",
       data:{
        id:this.data.id,
        headportrait:this.data.list.headportrait,
        uname:this.data.list.uname ,
        comments: this.data.comments,
        commenttime:time ,
        commentscore:this.data.score
       },
       header: {
        "Content-Type": "application/x-www-form-urlencoded"
      },
       success:(res)=>{
        if(res.data.code==1){
          wx.navigateTo({
            url: '/pages/details/details?id='+this.data.id
        })
        }
       }
     })
  },
  getNowFormatDate() {
    //获取当前时间方法
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
            + " " + date.getHours() + seperator2 + date.getMinutes()
            + seperator2 + date.getSeconds();
    return currentdate;
},

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var nowid = options.id;
    this.setData({id:nowid})
    wx.getStorage({
      key: 'zzz',
      success: (res)=>{
      var   nowlist = res.data
     nowlist = nowlist.reverse()
        this.setData({list:nowlist})
      },
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