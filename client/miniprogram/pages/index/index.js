// miniprogram/pages/list/list.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    recent:[],
    movie:[],
    teleplay:[],
    variety:[],
    imagelist1:[{url:"../../images/star.gif"},
                {url:"../../images/star.gif"},
                {url:"../../images/star.gif"},
                {url:"../../images/star.gif"},
                {url:"../../images/star.gif"}]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //近期上映
    wx.request({
      url:"http://127.0.0.1:3000/index/recent",
      success:(res) =>{
        res = res.data.slice(0,7);
        this.setData({
          recent:res
        })
      }
    })
    //热门电影
    wx.request({
      url:"http://127.0.0.1:3000/index/movie",
      success:(res) =>{
        res = res.data.slice(0,7);
        this.setData({
          movie:res
        })
      }
    })
    //电视剧
    wx.request({
      url:"http://127.0.0.1:3000/index/teleplay",
      success:(res) =>{
        res = res.data.slice(0,7);
        this.setData({
          teleplay:res
        })
      }
    })
    //综艺
    wx.request({
      url:"http://127.0.0.1:3000/index/variety",
      success:(res) =>{
        res = res.data.slice(0,7);
        this.setData({
          variety:res
        })
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