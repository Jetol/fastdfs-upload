package com.eshore.fastdfs.client;

/**
 * 上传下载时可能出现的一些异常信息
 * @author yz
 *
 */
public class FastDFSException extends Exception {
	
	private static final long serialVersionUID = -3387516993124229948L;

	/**
     * 错误码
     */
    private String code;

    /**
     * 错误消息
     */
    private String message;

    public FastDFSException(){}

    public FastDFSException(String code, String message) {
        this.code = code;
        this.message = message;
    }


    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
