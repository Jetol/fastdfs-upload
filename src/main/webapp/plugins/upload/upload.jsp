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
<div class="layui-upload-list">
    <img class="layui-upload-img" id="picIcon" style="width: 100px;height: 100px;">
    <p id="fileName"></p>
</div>
<div ></div>
<script src="${basePath}/resources/layui/layui.js"></script>
<script language="javaScript">
layui.use('upload', function(){
	var $ = layui.jquery
	  ,upload = layui.upload
	  ,layer = layui.layer;
	
	//选完文件后不自动上传
	  upload.render({
	    elem: '#chooseBtn'
	    ,url: basePath + '/fastdfs/upload/image/sample'
	    ,auto: false
	    //,multiple: true
	    ,bindAction: '#upload'
	    ,done: function(res){
	    	debugger;
	    	if(res.success){
	    		$("#picIcon").attr('src', res.httpUrl);
	  	      	$("#fileName").append('<span style="color: #FF5722;">上传成功</span>&nbsp;&nbsp;'
	  	      	+ '<a class="layui-btn layui-btn-xs demo-reload" href="${basePath}/fastdfs/download/file?filePath='+res.filePath+'">下载</a>');
	  	      	layer.msg("上传成功", {icon: 1});
	    	} else {
	    		$("#fileName").append('<span style="color: #FF5722;">上传失败</span>');
	    		layer.msg(res.message, {icon: 2});
	    	}
	    }
	  });
});
 </script>
</body>

</html>

