package com.han.controller;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.stereotype.Controller;

import com.han.service.BookService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Namespace("/")
@ParentPackage("struts-default")
@Action("bookDeleteAction")
@Results({
    @Result(name="success",location="/BookDelSucces.jsp")
})
public class BookDeleteAction extends ActionSupport{

    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    @Resource
    private BookService bookService;
    private int id;

    public void setId(int id) {
        this.id = id;
    }
    @Override
    public String execute() throws Exception {
        
        bookService.deleteById(id);
        return SUCCESS;
    }

}
