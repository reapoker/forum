package com.fc.util;

import org.apache.commons.codec.digest.DigestUtils;

public class Mymd5 {
    private static final String salt = "1a2b3c4d"; //自定义

    public static String  md5(String sac){
        String md5 =  DigestUtils.md5Hex(sac);
        System.out.println(md5);
        return md5;
    }

    /**
     * 第一次明文加固定salt加密
     * @param inputPass
     * @return
     */
    public static String inputPassToFormPass(String inputPass){
        String str = ""+salt.charAt(0)+salt.charAt(2) + inputPass +salt.charAt(5) + salt.charAt(4);
        System.out.println(str);
        return md5(str);

    }

    /**
     * 第二次加密md5的值+随机盐再进行md5加密
     * @param formPass
     * @param salt
     * @return
     */
    public static String formPassToDBPass(String formPass, String salt){
        String str  = ""+salt.charAt(0)+salt.charAt(2) + formPass +salt.charAt(5) + salt.charAt(4);
        System.out.println(str);
        return md5(str);
    }

    /**
     * 整体加密
     *
     */
    public static String inputPassToDbPass(String pass){
        //第一次加密
        String onePass = inputPassToFormPass(pass);
        //第二次加密
        return formPassToDBPass(onePass,salt);

    }
}
