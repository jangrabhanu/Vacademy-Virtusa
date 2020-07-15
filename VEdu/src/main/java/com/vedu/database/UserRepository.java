package com.vedu.database;
import org.springframework.data.jpa.repository.JpaRepository;

import com.vedu.model.User;

public interface UserRepository extends JpaRepository<User,Integer>
{
    User findUserByUserid(Integer id);
    boolean existsUserByUsername(String name);
    boolean existsUserByEmail(String email);
    boolean existsUserByMobile(String mobile);
    User findUserByUsername(String username);
    void removeUserByUsername(String name);
}