package ssh2.com.action;

import java.util.List;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import ssh2.com.entity.SysUser;
import ssh2.com.service.UserService;

/**
 * @author lxw
 */
public class UserAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private SysUser sysUser;
	
	private UserService userService;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	//用户登录信息
	public String login(){
		System.out.println("保存用户信息Action");
		sysUser = userService.login(sysUser.getUserName(),sysUser.getPassword());
		if(sysUser != null){
			return "loginSuccess";
		}
		return "404";
	}	
	
	//用户列表
	@Override
	public String execute() throws Exception {
		System.out.println("用户列表Action");
		List<SysUser> list = userService.userList();
	    ActionContext.getContext().getSession().put("userList",list);
	    return SUCCESS;		
	}	
	
	//保存用户信息
	public String saveUser(){
		System.out.println("保存用户信息Action");
		userService.save(sysUser);
		return "saveSuccess";
	}
	
	//更新用户信息
	public String updateUser(){
		System.out.println("更新用户信息Action");
		userService.update(sysUser);
		return "updateSuccess";
	}		
	
	//删除用户信息
	public String deleteUser(){
		System.out.println("删除用户信息Action");
		userService.delete(sysUser);
		System.out.println(sysUser.getId());
		return "updateSuccess";
	}			
	
	//查询用户信息
	public String selectById(){
		System.out.println("查询用户信息Action");
		//根据Id获取用户
		sysUser = userService.selectById(sysUser.getId());
		if(sysUser != null){
			System.out.println(sysUser.getUserName());
			return "getSuccess";
		}
		return "404";
	}	
	
	public SysUser getSysUser() {
		return sysUser;
	}
	public void setSysUser(SysUser sysUser) {
		this.sysUser = sysUser;
	}
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
