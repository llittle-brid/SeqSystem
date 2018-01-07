package interceptor;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import entity.UserEntity;
import org.apache.struts2.ServletActionContext;

import java.beans.EventHandler;
import java.util.Map;
import java.util.Objects;
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
            UserEntity user= (UserEntity) session.getAttribute("user");
            int orgManager=(int)session.getAttribute("orgManager");
            int sysManager=(int)session.getAttribute("sysManager");
            String method =  invocation.getProxy().getMethod();
            System.out.println(method+"/"+user+"/before_interceptor");
            if(Objects.equals(method, "jmpSysManager1")|| Objects.equals(method, "jmpSysManager2")){
                if(sysManager!=0){
                    return invocation.invoke();
                }
                ((ActionSupport)invocation.getAction()).addActionError("sorry,you don't have permission!");
                return Action.NONE;
            }
            if(Objects.equals(method, "jmpOrgManager1")|| Objects.equals(method, "jmpOrgManager2")){
                if(orgManager!=0){
                    return invocation.invoke();
                }
                ((ActionSupport)invocation.getAction()).addActionError("sorry,you don't have permission!");
                return Action.NONE;
            }

            if(user!=null){
            //    放行到下一个拦截器或者action中的方法
                    return invocation.invoke();
            }
            ((ActionSupport)invocation.getAction()).addActionError("sorry,not login");
            //直接返回login逻辑视图
            System.out.println(user+"after_interceptor");
            return Action.LOGIN;
        }

}