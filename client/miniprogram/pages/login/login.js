// miniprogram/pages/login/login.js
var app=new getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    phone:"",
    upwd:""
  
  },
  formSubmit:function(e){
      this.setData({
        phone:e.detail.value.phone,
        upwd:e.detail.value.upwd
      })
      //console.log("账号"+this.data.phone+" 密码 "+this.data.upwd)
   },
   clicklogin:function(options){
     if(!(this.data.phone.length>1 || this.data.upwd.length>1)){  //非空验证
        wx.showModal({    //模态框
          title:"错误",   //标题
          content:"用户名或密码不能为空",  //内容
          confirmText:"确定", 
          showCancel:false  //不显示取消按钮
        });
        return ;
     }else{
      wx.request({
        url:"http://127.0.0.1:3000/user/login",
        method:"POST",
        data:{
          phone:this.data.phone,
          upwd:this.data.upwd
        },
        header: {
          "Content-Type": "application/x-www-form-urlencoded"
        },
        success:(res)=>{
          res.data.data[0].isLogin = true
          console.log(res.data.data[0]);
          if(res.data.code==1){
                wx.showModal({
                  title:"成功",   //显示提示信息
                  content:"登录成功",
                  confirmText:"确定",
                  showCancel:false
                });
                wx.switchTab({  //登录成功 ，跳转到user页面
                  url: '/pages/user/user'
                })
                wx.setStorage({
                  key: 'zzz',
                  data: res.data.data[0],
                  success:()=>{

                  }
                })

                
          
          }else{
                wx.showModal({
                  title:"错误",   
                  content:"用户名或密码错误",
                  confirmText:"确定",
                  showCancel:false
                });
          }
          
        }
      })
    }
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