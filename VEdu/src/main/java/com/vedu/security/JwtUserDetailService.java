package com.vedu.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.vedu.database.*;
import com.vedu.model.Admin;
import com.vedu.model.Instructor;
import java.util.ArrayList;

@Service
public class JwtUserDetailService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private InstructorRepository instructorRepository;

    @Autowired
    private PasswordEncoder bcryptEncoder;

    public JwtUserDetailService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
       System.out.println(username);
    	if(username.contains("admin_"))
        {
    		String admin_username = username.replace("admin_","");
    		// Admin user = adminRepository.findAdminByUsername(username);
           Admin user = adminRepository.findAdminByUsername(admin_username);
           
            if (user!=null) {
            	 System.out.println("Daaa "+user);
            	System.out.println("user "+user.getUsername()+"  "+user.getPassword());
                return new User(user.getUsername(),bcryptEncoder.encode(user.getPassword()), new ArrayList<>());
           
                }
            else {
            	 throw new UsernameNotFoundException("Admin not found with username: " + username);
                 
            	 }
        }
        else if(username.contains("instructor_"))
        {
            String instructor_username = username.replace("instructor_","");
            Instructor user = instructorRepository.findInstructorByUsername(instructor_username);
            if (user==null) {
                throw new UsernameNotFoundException("Instructor not found with username: " + username);
            }
            else {
                return new User(user.getUsername(),bcryptEncoder.encode(user.getPassword()), new ArrayList<>());
            }
        }
        else {
            com.vedu.model.User user = userRepository.findUserByUsername(username);
            if (user==null) {
                Instructor instructor = instructorRepository.findInstructorByUsername(username);
                if(instructor==null)
                {
                    Admin admin = adminRepository.findAdminByUsername(username);
                    if(admin==null){
                        throw new UsernameNotFoundException("User not found with username: " + username);
                    }
                    else {
                        return new User(admin.getUsername(),bcryptEncoder.encode(admin.getPassword()), new ArrayList<>());
                    }
                }
                else{
                    return new User(instructor.getUsername(),bcryptEncoder.encode(instructor.getPassword()), new ArrayList<>());
                }
            }
            else {
                return new User(user.getUsername(),bcryptEncoder.encode(user.getPassword()), new ArrayList<>());
            }
        }
    }
}