package interceptor;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import entity.UserEntity;
import org.apache.struts2.ServletActionContext;

import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
    public class AuthorityInterceptor extends AbstractInterceptor{
        @Override
        public String intercept(ActionInvocation invocation) throws Exception {
            HttpSession session= ServletActionContext.getRequest().getSession();

            UserEntity user= (UserEntity) session.getAttribute("user");
            System.out.println(user+"before_interceptor");
            if(user!=null){
                return invocation.invoke();
            }
            ((ActionSupport)invocation.getAction()).addActionError("sorry,not login");

            System.out.println(user+"after_interceptor");
            return Action.LOGIN;
        }

}