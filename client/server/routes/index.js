const express=require("express");
const router=express.Router();
const pool=require("../pool");


//近期上映
router.get("/recent",(req,res)=>{
	var sql = "SELECT * FROM `bean_recent` WHERE 1"
	pool.query(sql,(err,result)=>{
		if(err) throw err
		res.send(result)
	})
})
//热门电影
router.get("/movie",(req,res)=>{
	var sql = "SELECT * FROM `bean_movie` WHERE 1"
	pool.query(sql,(err,result)=>{
		if(err) throw err
		res.send(result)
	})
})
//电视剧
router.get("/teleplay",(req,res)=>{
	var sql = "SELECT * FROM `bean_teleplay` WHERE 1"
	pool.query(sql,(err,result)=>{
		if(err) throw err
		res.send(result)
	})
})
//综艺
router.get("/variety",(req,res)=>{
	var sql = "SELECT * FROM `bean_variety` WHERE 1"
	pool.query(sql,(err,result)=>{
		if(err) throw err
		res.send(result)
	})
})






module.exports=router;