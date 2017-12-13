package com.han.domain;

import java.io.Serializable;
import java.util.List;

public class Page implements Serializable{
    private static final long serialVersionUID = 1L;
    
    private int currentNum;  //条数
    private int currentPage; //页数
    private int totalPage;   //总页数
    private int totalCount;  //总条数
    private List<Book> list;  //每页显示的数据
    public int getCurrentNum() {
        return currentNum;
    }
    public void setCurrentNum(int currentNum) {
        this.currentNum = currentNum;
    }
    public int getCurrentPage() {
        return currentPage;
    }
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    public int getTotalPage() {
        return totalPage;
    }
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
    public int getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }
    public List<Book> getList() {
        return list;
    }
    public void setList(List<Book> list) {
        this.list = list;
    }
}
