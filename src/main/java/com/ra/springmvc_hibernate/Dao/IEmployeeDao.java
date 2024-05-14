package com.ra.springmvc_hibernate.Dao;

import com.ra.springmvc_hibernate.entity.Employee;

import java.util.List;

public interface IEmployeeDao {
    public List<Employee> getEmployees();

    public Employee getEmployeeById(Integer id);

    public boolean insertEmployee(Employee employee);

    public boolean updateEmployee(Employee employee);

    public boolean deleteEmployee(Integer id);

    public List<Employee> getStudentsByName(String name);
}
