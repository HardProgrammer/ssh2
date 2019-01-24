package ssh2.com.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import ssh2.com.dao.UserDao;
import ssh2.com.entity.SysUser;

/**
 * 
 * @author lxw
 *
 */
@Transactional
public class UserService {
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public SysUser login(String name,String password) {
		System.out.println("用户登录Service");
		
		return userDao.login(name,password);
	}

	public List<SysUser> userList(){
		System.out.println("用户列表Service");
		return userDao.getUserList();
	}

	public void save(SysUser sysUser) {
		System.out.println("保存Service");
		userDao.saveUser(sysUser);
	}
	
	public void update(SysUser sysUser) {
		System.out.println("更新用户Service");
		userDao.updateUser(sysUser);
	}
	
	public void delete(SysUser sysUser) {
		System.out.println("更新用户Service");
		userDao.deleteUser(sysUser);
	}
	
	public SysUser selectById(Integer id) {
		System.out.println("查询用户Service");
		
		return userDao.selectById(id);
	}
}
