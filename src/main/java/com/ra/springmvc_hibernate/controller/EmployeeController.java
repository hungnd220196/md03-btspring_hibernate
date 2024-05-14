package com.ra.springmvc_hibernate.controller;

import com.ra.springmvc_hibernate.Dao.IEmployeeDao;
import com.ra.springmvc_hibernate.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    private IEmployeeDao iEmployeeDao;

    @RequestMapping(value = {"/", "/list"})
    public String initInsertStudent(Model model) {

        model.addAttribute("emp", iEmployeeDao.getEmployees());
        return "list";
    }

    @RequestMapping("/add")
    public String add() {
        return "addEmployee";
    }

    @GetMapping("/edit")
    public String edit(@RequestParam("id") int id, Model model) {
        model.addAttribute("employees", iEmployeeDao.getEmployeeById(id));
        return "edit";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") int id) {
        iEmployeeDao.deleteEmployee(id);
        return "redirect:/list";
    }

    @PostMapping("/insertEmployee") // xử lý form thêm mới
    public String doAdd(@ModelAttribute Employee employee) {
        iEmployeeDao.insertEmployee(employee);
        return "redirect:/list";
    }

    @PostMapping("/editEmployee") // xử lý form thêm mới
    public String doUpdate(@ModelAttribute Employee employee) {
        iEmployeeDao.updateEmployee(employee);
        return "redirect:/list";
    }
}
