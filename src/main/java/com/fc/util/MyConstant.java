package com.fc.util;


public class MyConstant {
    //七牛云相关
    public static final String QINIU_IMAGE_URL = "http://pszoi7vyf.bkt.clouddn.com/";
    public static final String QINIU_ACCESS_KEY = "DLNrxjRfb7ZRXEEzUWMdcmBvcY9ae7qyHx4b1VbB";
    public static final String QINIU_SECRET_KEY = "LHiBDzLkdfo1ejBsQFs7X3B2ca-uJiX_2YgsFz4r";
    public static final String QINIU_BUCKET_NAME = "image";

    //发送邮件的邮箱，要与df.properties中的一致
    public static final String MAIL_FROM = "reapoker@outlook.com";

    //域名
    public static final String DOMAIN_NAME = "http://127.0.0.1:9999/df/";

    //四种操作
    public static final int OPERATION_CLICK_LIKE = 1;
    public static final int OPERATION_REPLY = 2;
    public static final int OPERATION_COMMENT = 3;
    public static final int OPERATION_FOLLOW = 4;

}
