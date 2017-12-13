package com.han.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Book {
    @Id
    @GeneratedValue
    private int bid;
    private String bname;
    private String btype;
    private String bauthor;
    private String bdiscount;
    private double bprice;
    private int bnumber;
    private String btext;
    public Book() {
        super();
        // TODO Auto-generated constructor stub
    }

     public Book(int bid, String bname, String btype, String bauthor, String bdiscount, double bprice,
             int bnumber, String btext) {
         super();
         this.bid = bid;
         this.bname = bname;
         this.btype = btype;
         this.bauthor = bauthor;
         this.bdiscount = bdiscount;
         this.bprice = bprice;
         this.bnumber = bnumber;
         this.btext = btext;
     }
     public Book(String bname, String btype, String bauthor, String bdiscount, double bprice,
             int bnumber, String btext) {
         super();
         this.bname = bname;
         this.btype = btype;
         this.bauthor = bauthor;
         this.bdiscount = bdiscount;
         this.bprice = bprice;
         this.bnumber = bnumber;
         this.btext = btext;
     }

     public int getBid() {
         return bid;
     }

     public void setBid(int bid) {
         this.bid = bid;
     }

     public String getBname() {
         return bname;
     }

     public void setBname(String bname) {
         this.bname = bname;
     }

     public String getBtype() {
         return btype;
     }

     public void setBtype(String btype) {
         this.btype = btype;
     }

     public String getBauthor() {
         return bauthor;
     }

     public void setBauthor(String bauthor) {
         this.bauthor = bauthor;
     }

     public String getBdiscount() {
         return bdiscount;
     }

     public void setBdiscount(String bdiscount) {
         this.bdiscount = bdiscount;
     }

     public double getBprice() {
         return bprice;
     }

     public void setBprice(double bprice) {
         this.bprice = bprice;
     }

     public int getBnumber() {
         return bnumber;
     }

     public void setBnumber(int bnumber) {
         this.bnumber = bnumber;
     }

     public String getBtext() {
         return btext;
     }

     public void setBtext(String btext) {
         this.btext = btext;
     }

    @Override
    public String toString() {
        return "Book [bid=" + bid + ", bname=" + bname + ", btype=" + btype + ", bauthor=" + bauthor
                + ", bdiscount=" + bdiscount + ", bprice=" + bprice + ", bnumber=" + bnumber + ", btext="
                + btext + "]";
    }
   
}
