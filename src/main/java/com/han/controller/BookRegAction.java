package com.han.controller;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.stereotype.Controller;

import com.han.domain.Book;
import com.han.service.BookService;
import com.opensymphony.xwork2.ActionSupport;


@Controller
@Namespace("/")
@ParentPackage("struts-default")
@Action("bookRegAction")
@Results({
    @Result(name="success",location="/BookRegSucces.jsp"),
    @Result(name="input",location="/BookRegister.jsp")
})
public class BookRegAction extends ActionSupport{

    /**
     * 
     */
    @Resource
    private BookService bookService;
    private static final long serialVersionUID = 1L;
    private Book book;
    public Book getBook() {
        return book;
    }
    public void setBook(Book book) {
        this.book = book;
    }
    
    @Override
    public void validate() {
        if(book.getBname().equals("")){
            addFieldError("nameError", getText("nameError"));
        }
        if(book.getBauthor().equals("")){
            addFieldError("authorError", getText("authorError"));
        }
        if(book.getBdiscount() == null){
            addFieldError("discountError", getText("discountError"));
        }
        if(book.getBtype() == null){
            addFieldError("typeError", getText("typeError"));
        }
        if(book.getBprice()== 0.0){
            addFieldError("priceError", getText("priceError"));
        }
        if(book.getBnumber() == 0){
            addFieldError("numberError", getText("numberError"));
        }
        if(book.getBtext().equals("")){
            addFieldError("textError", getText("textError"));
        }

    }
    
    @Override
    public String execute() throws Exception {
       
        try {
            bookService.RegisterBook(book);
        } catch (Exception e) {
            return INPUT;
        }    
       
        
        return SUCCESS;
    }

}
