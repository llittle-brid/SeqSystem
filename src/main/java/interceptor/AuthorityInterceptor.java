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
        @Override
        public String intercept(ActionInvocation invocation) throws Exception {
            HttpSession session= ServletActionContext.getRequest().getSession();
            Object name=session.getAttribute("user");
            System.out.println(name+"before_interceptor");
            System.out.println("location:interceptor");
            if(name!=null){
                return invocation.invoke();
            }
            ((ActionSupport)invocation.getAction()).addActionError("sorry,not login");
           System.out.println(name+"after_interceptor");
            return Action.LOGIN;
        }

}