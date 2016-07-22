首先了解一下MVVM的架构

![MVVM](http://teehanlax.com.s3.amazonaws.com/wordpress/wp-content/uploads/mvvm1.png)
###MVVMDemo的架构

![](http://upload-images.jianshu.io/upload_images/1863057-863b528dcebf51e0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

**Model**:  数据的模型

**View**:  其实包括View和ViewController两部分，统称为View

**ViewModel**:  本Demo，主要是处理网络请求，把获取的数据显示在TableView上

另外

**TableViewProtocol**:  为了避免ViewController太重，我把TableView的DataSource和Delegate分离出来

###MVVMDemo的效果预览

![preview.gif](http://upload-images.jianshu.io/upload_images/1863057-0be9bc761f4aa3fa.gif?imageMogr2/auto-orient/strip)


