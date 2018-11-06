// miniprogram/pages/register/register.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    phone:"",
    uname:"",
    upwd:""
  },
  formSubmit:function(e){
    this.setData({
      phone:e.detail.value.phone,
      uname:e.detail.value.uname,
      upwd:e.detail.value.upwd
    })
  
  },
  clickregister:function(options){
    var regphone = /^1\d{10}$/ ;
    var reguname = /^.{3,20}$/ ;
    var regpwd = /^[a-zA-Z]\w{5,17}$/;
    console.log(reguname.test(this.data.uname),this.data.uname)
    console.log(reguname.test(this.data.phone),this.data.phone)
    console.log(reguname.test(this.data.upwd),this.data.upwd)
    if(!(this.data.phone.length>1 || this.data.uname.length>1 || this.data.upwd.length>1)){
      wx.showModal({
        title:"错误",   //显示提示信息
        content:"手机号或者用户名密码格式不能为空",
        confirmText:"确定",
        showCancel:false
      });
      return ;
   }else if(!regphone.test(this.data.phone)){
    wx.showModal({
      title:"错误",   //显示提示信息
      content:"手机号或者用户名密码格式不对",
      confirmText:"确定",
      showCancel:false
    });
      return ;
      console.log(1);
    }else if(!reguname.test(this.data.uname)){
      wx.showModal({
        title:"错误",   //显示提示信息
        content:"手机号或者用户名密码格式不对",
        confirmText:"确定",
        showCancel:false
      });
      return ;
      console.log(2);
    }else if(!regupwd.test(this.data.upwd)){
      wx.showModal({
        title:"错误",   //显示提示信息
        content:"手机号或者用户名密码格式不对",
        confirmText:"确定",
        showCancel:false
      });
      return ;
      console.log(3);
    }else{
    wx.request({
      url:"http://127.0.0.1:3000/user/register",
      method:"POST",
      data:{
        phone:this.data.phone,
        uname:this.data.uname,
        upwd:this.data.upwd
      },
      header: {
        "Content-Type": "application/x-www-form-urlencoded"
      },
      success:(res)=>{
        console.log(res.data);
        wx.showModal({
          title:"成功",   //显示提示信息
          content:"注册成功，返回登录页",
          confirmText:"确定",
          showCancel:false
        });
        wx.switchTab({
          url: '/pages/login/login'
        })
        
      }
    })
  }
 },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

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