package com.vedu.database;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vedu.model.Admin;

public interface AdminRepository extends JpaRepository<Admin,Integer>
{
    Admin findAdminByUsername(String username);
    Boolean existsAdminByUsername(String username);
    void removeAdminByUsername(String username);
}