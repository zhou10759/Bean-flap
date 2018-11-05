// miniprogram/pages/detail/detail.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list:[],
    pageIndex:0,   //当前显示页码
     pageSize:18,    //每页数量
     hasMore:true   //用于记录是否还有更多数据  
  },
  loadMore:function(){
    wx.request({
      url:"http://127.0.0.1:3000/detail",
      data:{
        pno:++this.data.pageIndex,
        pageSize:this.data.pageSize
      },  
      success:(res) =>{
        var pageCount = res.data.pageCount;
        if(this.data.pageIndex>=pageCount){
          this.setData({
            hasMore:false
          })
        }

        var rows = this.data.list.concat(res.data.data)
        this.setData({
          list:rows
        })
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.loadMore()
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
       //1:显示第一页数据,清空
     this.setData({
      pageIndex:0,
      list:[],
      hasMore:true
    })
    //2:加载更多
    this.loadMore();
    //3:停止下拉动作多次执行
    wx.stopPullDownRefresh()
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    this.loadMore();
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})