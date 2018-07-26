<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@ include file="/common/common.jsp" %>
    <link rel="stylesheet" type="text/css" href="${basePath}/resources/layui/css/layui.css"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>选完文件后不自动上传</legend>
</fieldset>
 
<div class="layui-upload">
  <button type="button" class="layui-btn layui-btn-normal" id="chooseBtn">选择文件</button>
  <button type="button" class="layui-btn" id="upload">开始上传</button>
</div>
<script src="${basePath}/resources/jquery/jquery-1.8.3.min.js"></script>
<script src="${basePath}/resources/layui/layui.js"></script>
<script language="javaScript">
layui.use('upload', function(){
	var $ = layui.jquery
	  ,upload = layui.upload;
	
	//选完文件后不自动上传
	  upload.render({
	    elem: '#chooseBtn'
	    ,url: '/upload/'
	    ,auto: false
	    //,multiple: true
	    ,bindAction: '#upload'
	    ,done: function(res){
	      console.log(res)
	    }
	  });
});
 </script>
</body>

</html>

