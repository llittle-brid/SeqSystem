package interceptor;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import org.apache.struts2.ServletActionContext;

import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


    public class AuthorityInterceptor extends AbstractInterceptor{
        //拦截action处理的拦截方法
        @Override
        public String intercept(ActionInvocation invocation) throws Exception {
            //取得请求相关的ActionContext实例
            HttpSession session= ServletActionContext.getRequest().getSession();
            //取出名为user的session属性
            Object name=session.getAttribute("user");
            System.out.println(name+"before_interceptor");
            System.out.println("location:interceptor");
            if(name!=null){
            //    放行到下一个拦截器或者action中的方法
                return invocation.invoke();
            }
            ((ActionSupport)invocation.getAction()).addActionError("sorry,not login");
            //直接返回login逻辑视图
           System.out.println(name+"after_interceptor");
            return Action.LOGIN;
        }

}