# ocs_erv_cer ocserv安装并配置证书,改自逗逼脚本,请在debian/ubuntu上服用(debian9测试通过)
<Br/>
wget --no-check-certificate https://raw.githubusercontent.com/smlemk3/ocs_erv_cer/master/ocserv.sh && chmod +x ocserv.sh
<Br/>
./ocserv.sh
<Br/>
添加证书用户,执行以下命令之后输入key、password之后 userxxx.p12就躺在那里了,将userxxx.p12拷到win7/10安装或者导入android/iphone客户端即可
<Br/>
cd certificates
<Br/>
./gen_user_cer.sh userxxx
