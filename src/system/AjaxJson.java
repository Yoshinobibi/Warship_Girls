package system;

import com.alibaba.fastjson.JSONObject;

/**
 * Created by 95 on 2016/4/6.
 */
public class AjaxJson {
    private boolean success = true;
    private String message = "Done!";

    public boolean isSuccess() {
        return success;
    }
    public void setSuccess(boolean success){
        this.success = success;
    }

    public String getMessage() {
        return message;
    }
    public void setMessage(String message){
        this.message = message;
    }
    public String getJsonStr(){
        JSONObject obj = new JSONObject();
        obj.put("success", this.isSuccess());
        obj.put("message", this.getMessage());
        return obj.toJSONString();
    }

}
