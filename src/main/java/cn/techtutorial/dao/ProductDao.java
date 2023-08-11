package cn.techtutorial.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import cn.techtutorial.model.*;
import java.util.*;


public class ProductDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	private int rsu;
	private String sql;
	public ProductDao(Connection con) {
		this.con = con;
	}
	public List<Product> getAllProducts() {
        List<Product> book = new ArrayList<>();
        try {

            query = "select * from product";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product row = new Product();
            	
                row.setId(rs.getString("product_id"));
                row.setName(rs.getString("title"));
                row.setBrand(rs.getString("category_id"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("images"));
                row.setQuantity(rs.getInt("product_in_stock"));
             

                book.add(row);
                System.out.println(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return book;
    }
	public List<Product> getAllProductsvodka() {
        List<Product> book = new ArrayList<>();
        try {

        	 query = "select * from product where category_id = 'CC000003'";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product row = new Product();
            	
                row.setId(rs.getString("product_id"));
                row.setName(rs.getString("title"));
                row.setBrand(rs.getString("category_id"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("images"));
                row.setQuantity(rs.getInt("product_in_stock"));

             

                book.add(row);
                System.out.println(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return book;
    }
	public List<Product> getAllProductschampange() {
        List<Product> book = new ArrayList<>();
        try {

            query = "select * from product where category_id = 'CC000001'";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product row = new Product();
            	
                row.setId(rs.getString("product_id"));
                row.setName(rs.getString("title"));
                row.setBrand(rs.getString("category_id"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("images"));
                row.setQuantity(rs.getInt("product_in_stock"));

             

                book.add(row);
                System.out.println(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return book;
    }
	public List<Product> getAllProductsgin() {
        List<Product> book = new ArrayList<>();
        try {

        	 query = "select * from product where category_id = 'CC000002'";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product row = new Product();
            	
                row.setId(rs.getString("product_id"));
                row.setName(rs.getString("title"));
                row.setBrand(rs.getString("category_id"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("images"));
                row.setQuantity(rs.getInt("product_in_stock"));

             

                book.add(row);
                System.out.println(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return book;
    }
	
	
	public List<Product> getAllProductsrum() {
        List<Product> book = new ArrayList<>();
        try {

        	 query = "select * from product where category_id = 'CC000004'";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product row = new Product();
            	
                row.setId(rs.getString("product_id"));
                row.setName(rs.getString("title"));
                row.setBrand(rs.getString("category_id"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("images"));
                row.setQuantity(rs.getInt("product_in_stock"));

             

                book.add(row);
                System.out.println(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return book;
    }
	
	
	public int deleteproduct(String id) {
		try {
			 Statement st = con.createStatement();
				sql = "Delete from product where product_id='"+id+"'";
				rsu= st.executeUpdate(sql);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		return rsu;
	}
	
	public int insert_new_product(String product_id,String brand,double price,String description,String title,String images,int discount,int product_in_stock,String category_id) {  
		try {
			 Statement st = con.createStatement();
				sql = "Insert into product(product_id,brand,price,description,title,images,discount,product_in_stock,category_id) Values ('"+product_id+"','"+brand+"',"+price+",'"+description+"','"+title+"','"+images+"',"+discount+","+product_in_stock+",'"+category_id+"')";
				rsu= st.executeUpdate(sql);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		
		return rsu;
	}
	
	
}
