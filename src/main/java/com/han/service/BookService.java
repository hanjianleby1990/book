package com.han.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.han.DAO.BookDAO;
import com.han.domain.Book;
import com.han.domain.Page;


@Service
@Transactional
public class BookService {
    @Resource
    private BookDAO bookDAO;
    
    
    //根据ID查找
    @Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
    public Book getBookById(int bid){
       return bookDAO.getBook(bid);
    }
    
    //根据ID删除
    @Transactional(propagation=Propagation.REQUIRED)
    public void deleteById(int bid){
        bookDAO.deleteById(bid);
    }
    
    //注册书籍信息
    @Transactional(propagation=Propagation.REQUIRED)
    public void RegisterBook(Book book){
        bookDAO.RegisterBook(book);
    }
    
    //更新书籍信息
    @Transactional(propagation=Propagation.REQUIRED)
    public void UpdateBook(Book book){
        bookDAO.UpdateBook(book);
        System.out.println("11111");
    }
    
    public Page getSelectByPage(int currentpage, int currentnum){//实例化Page类
        Page pg = new Page();
        int totalCount = getSelectCount();
        pg.setCurrentNum(currentnum);
        pg.setCurrentPage(currentpage);
        pg.setTotalPage((int) Math.ceil(totalCount*1.0/currentnum));
        pg.setTotalCount(totalCount);
        pg.setList(FindByPage(currentpage, currentnum));
        return pg;
    }
    public List<Book> FindByPage(int currentpage, int currentnum){//获取分页的记录
        currentpage = (currentpage-1)*currentnum;
        List<Book> list = bookDAO.getBookList(currentpage,currentnum);
        for(Book b : list){
            System.out.println(b);
        }
        return  list;
    }
    public int getSelectCount(){//获取数据库中总记录数
        return bookDAO.getCount();
    }
}
