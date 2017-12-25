package util;

import com.google.gson.Gson;

/**
 * Created by DELL on 2017/12/25.
 *
 * @author LZF
 */
public class Json {
    public String toJoson(Object obj) {
        Gson gson = new Gson();
        String jsonObject = gson.toJson(obj); // {"name":"怪盗kidou","age":24}
        return jsonObject;
    }

    public Object fromJson(String jsonString)
    {   Object obj;
        Gson gson = new Gson();
        obj= gson.fromJson(jsonString,Object.class);
        return obj;
    }
}