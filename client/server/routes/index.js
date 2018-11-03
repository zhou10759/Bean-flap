const express=require("express");
const router=express.Router();
const pool=require("../pool");



router.get("/recent",(req,res)=>{
	var sql = "SELECT * FROM `bean_recent` WHERE 1"
	pool.query(sql,(err,result)=>{
		if(err) throw err
		res.send(result)
	})
})






module.exports=router;