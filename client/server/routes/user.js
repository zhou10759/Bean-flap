const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.post("/login",(req,res)=>{
    var phone = req.body.phone;
    var upwd = req.body.upwd;
    var sql = "SELECT * FROM bean_user WHERE  phone=? and  upwd=?"

    pool.query(sql,[phone,upwd],(err,result)=>{
        if(err) throw err
        if(result.length>0){
            res.send({code:"1",msg:"login succ",data:result})
        }else{
            res.send({code:"-1",msg:"Login failure"});
        }
    })

})

router.post("/register",(req,res)=>{
    var uname = req.body.uname;
    var upwd = req.body.upwd;
    var phone = req.body.phone;
    var sql = "SELECT * FROM bean_user WHERE phone=?"
    
    pool.query(sql,phone,(err,result)=>{
        if(err) throw err
        if(result.length>0){
            res.send({code:-2,msg:"The mobile phone number has been registered."})
            return;
        }else{
            var sql  = "INSERT INTO `bean_user`(`id`, `headportrait`, `phone`, `uname`, `upwd`) VALUES (NULL,NULL,?,?,?)";
            pool.query(sql,[phone,uname,upwd],(err,result)=>{
    
                res.send({code:"1",msg:"register succ"});
            })
        }
    })
   
})
router.get("/comment",(req,res)=>{
    var id = req.query.id;
    var sql = "SELECT * FROM bean_comment WHERE  id=?"
    pool.query(sql,id,(err,result)=>{
        if(err) throw err
        if(result.length>0){
            res.send({code:1,result})
        }else{
            res.send({code:-1})
        }
    })
})
router.post("/comments",(req,res)=>{
    var uname = req.body.uname;
    var comments = req.body.comments;
    var commenttime = req.body.commenttime;
    var commentscore = req.body.commentscore;
    var headportrait = req.body.headportrait;
    var id = req.body.id;
    var sql = "INSERT INTO `bean_comment`(`uid`, `id`, `headportrait`, `uname`, `comments`, `commenttime`, `commentscore`) VALUES (NULL,?,?,?,?,?,?)"
    pool.query(sql,[id,headportrait,uname,comments,commenttime,commentscore],(err,result)=>{
        if(err) throw err
        if(result.length>0){
            res.send({code:-1,msg:"comment fail"})
            return;
        }else{
                res.send({code:"1",msg:"comment succ"});
            
        }
    })

})



module.exports=router;