fis.config.merge({
    deploy : {
        //使用fis release --dest remote来使用这个配置
        remote : {
            //如果配置了receiver，fis会把文件逐个post到接收端上
            receiver : '10.48.30.87:8088/fis2.0_shasumCheck/receiver.php',
            //从产出的结果的static目录下找文件
            // from : './',
            //保存到远端机器的/home/fis/www/static目录下
            //这个参数会跟随post请求一起发送
            to : 'home/work/repos/fis2.0_shasumCheck/'
            //通配或正则过滤文件，表示只上传所有的js文件
            // include : '.*',
            //widget目录下的那些文件就不要发布了
            // exclude : /\/widget\//i,
            //支持对文件进行字符串替换
            // replace : {
            //     from : 'http://www.online.com',
            //     to : 'http://www.offline.com'
            // }
        }
    }
})