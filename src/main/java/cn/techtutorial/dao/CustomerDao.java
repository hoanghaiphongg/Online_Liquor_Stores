package cn.techtutorial.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Statement;


import cn.techtutorial.model.*;
import java.util.*;

public class CustomerDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	private int rsu;
	private String sql;

	public CustomerDao(Connection con) {
		this.con = con;
	}
	public List<Customer> getAllCustomer() {
        List<Customer> cus = new ArrayList<>();
        try {

            query = "select * from customer";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Customer row = new Customer();
            	row.setId(rs.getString("customer_id"));
            	row.setName(rs.getString("name"));
            	row.setAddress(rs.getString("address"));
            	row.setPhone(rs.getString("phone_number"));
            	row.setMail(rs.getString("email"));
            	row.setPassword(rs.getString("password"));
                cus.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return cus;
    }
	
	public List<Customer> getCustomerbyname(String namecus) {
        List<Customer> cus = new ArrayList<>();
        try {

            query = "select * from customer where name = ?";
            
            pst = this.con.prepareStatement(query);
			pst.setString(1, namecus);

            rs = pst.executeQuery();

            while (rs.next()) {
            	Customer row = new Customer();
            	row.setId(rs.getString("customer_id"));
            	row.setName(rs.getString("name"));
            	row.setAddress(rs.getString("address"));
            	row.setPhone(rs.getString("phone_number"));
            	row.setMail(rs.getString("email"));
            	row.setPassword(rs.getString("password"));
                cus.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return cus;
    }
	public int insert_new_customer(String id,String name,String phone,String address,String gender,String dob,String email,String password) {  
		try {
			 Statement st = con.createStatement();
				sql = "Insert into customer(customer_id,name,phone_number,address,gender,dob,email,password) Values ('"+id+"','"+name+"','"+phone+"','"+address+"','"+gender+"','"+dob+"','"+email+"','"+password+"')";
				rsu= st.executeUpdate(sql);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		
		return rsu;
	}
	public Customer customerLogin(String email, String password) {
		Customer cus = null;
		try {
			query= "select * from customer where email = ? and password=?";
			pst=this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, password);
			rs=pst.executeQuery();
			if(rs.next()) {
				cus=new Customer();
				cus.setName(rs.getString("name"));
				cus.setMail(rs.getString("email"));
				
			}
		}catch(Exception e){
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return cus;
	}
	
}
