const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
    var pno = req.query.pno;    //页码
    var pageSize = req.query.pageSize;  //页大小
    var sql = "SELECT count(id) as c  FROM  bean_recent";
    var process = 0;
    var obj = {pno:pno,pageSize:pageSize};
    
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      var pageCount = Math.ceil(result[0].c/pageSize);
      process +=50;
      obj.pageCount = pageCount;
      if(process ==100){
        res.send(obj);
      }
    })

    var sql = " SELECT * FROM bean_recent";
          sql+=" LIMIT ?,?";
    var  offset = parseInt((pno-1)*pageSize);
    pageSize = parseInt(pageSize);
    pool.query(sql,[offset,pageSize],(err,result)=>{
      if(err) throw err;
      process +=50;
      obj.data = result;
       if(process ==100){
         res.send(obj)
       }
    })
})


module.exports=router;