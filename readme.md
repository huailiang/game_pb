<p align="center">
	 <a href="https://huailiang.github.io/">
	    <img src="https://huailiang.github.io/img/cpp.jpeg" width="100" height="100">
    	</a>
	<a href="https://unity3d.com/cn/">
	    <img src="https://huailiang.github.io/img/unity.jpeg" width="200" height="100">
	</a>
    	<a href="https://huailiang.github.io/">
    	<img src="https://huailiang.github.io/img/avatar-Alex.jpg" width="120" height="100">
   	</a>
</p>

现在很多采用unity的客户端框架都是用c++来编写，而对数据的处理解析都放在c++端，而不是csharp端。于是在c++端使用protobuf的需求就产生了。

基于这样的需求，我们把google官方的protobuf工程，进行不同平台的编译，以支持不同平台的需求。平台主要是：Android、ios、macos、windows四种平台。


protobuf-cpp项目你需要设置如下：

<img src="image/1.jpg">

附加包含目录设置当前protbuf项目下， SDL检查置否