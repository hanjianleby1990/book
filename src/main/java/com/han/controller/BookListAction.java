package com.han.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.stereotype.Controller;

import com.han.domain.Book;
import com.han.domain.Page;
import com.han.service.BookService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Namespace("/")
@ParentPackage("struts-default")
@Action("bookListAction")
@Results({
    @Result(name="success",location="/BookListPage.jsp"),
})
public class BookListAction extends ActionSupport{

    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    
    @Resource
    private BookService bookService;
    private String currentpage;
    private String currentnum;
    private List<Book> books;
    private Page pg;
    
    public List<Book> getBook(){
        return books;
    }
    public Page getPage(){
        return pg;
    }
    public void setPage(Page pg){
        this.pg = pg;
    }
    public void setCurrentpage(String currentpage){
        this.currentpage = currentpage;
    }
    public void setCurrentnum(String currentnum){
        this.currentnum = currentnum;
    }
    
    @Override
    public void validate() {
        int currentpage1 = 1;//页码
        int currentnum1 = 5;//显示条数
        
        String s_currentpage = currentpage;
        String s_currentnum = currentnum;
        if(s_currentpage != null)
            currentpage1 = Integer.parseInt(s_currentpage);
        
        if(s_currentnum != null)
            currentnum1 = Integer.parseInt(s_currentnum);
        pg = bookService.getSelectByPage(currentpage1, currentnum1);
    }
    @Override
    public String execute() throws Exception {
        
        ActionContext context = ActionContext.getContext();
        HttpServletRequest request = (HttpServletRequest)context.get(ServletActionContext.HTTP_REQUEST);
        request.setAttribute("pg", pg);
        return SUCCESS;
    }

}
