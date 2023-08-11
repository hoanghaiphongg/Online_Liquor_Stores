package cn.techtutorial.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Statement;


import cn.techtutorial.model.*;
import java.util.*;

public class OrderDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	private int rsu;
	private String sql;

	public OrderDao(Connection con) {
		this.con = con;
	}
	
	public List<Order> getAllOrder() {
        List<Order> ord = new ArrayList<>();
        try {

            query = "select * from orders";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Order row = new Order();
            	row.setOrder_id(rs.getString("order_id"));
            	row.setStatus(rs.getString("status"));
            	row.setOrder_date(rs.getString("order_date"));
            	row.setPayment_method(rs.getString("payment_method"));
            	row.setDelivery_method(rs.getString("delivery_method"));
            	row.setDelivery_unit(rs.getString("delivery_unit"));
            	row.setDelivery_cost(rs.getDouble("delivery_cost"));
            	row.setCustomer_id(rs.getString("customer_id"));
            	row.setCoupon_id(rs.getString("coupon_id"));

                ord.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return ord;
    }
	public List<Order> getOrderbyid(String id) {
        List<Order> ord = new ArrayList<>();
        try {

            query = "select * from orders where customer_id = ?";
            
            pst = this.con.prepareStatement(query);
			pst.setString(1, id);

            rs = pst.executeQuery();

            while (rs.next()) {
            	Order row = new Order();
            	row.setOrder_id(rs.getString("order_id"));
            	row.setStatus(rs.getString("status"));
            	row.setOrder_date(rs.getString("order_date"));
            	row.setPayment_method(rs.getString("payment_method"));
            	row.setDelivery_method(rs.getString("delivery_method"));
            	row.setDelivery_unit(rs.getString("delivery_unit"));
            	row.setDelivery_cost(rs.getDouble("delivery_cost"));
            	row.setCustomer_id(rs.getString("customer_id"));
            	row.setCoupon_id(rs.getString("coupon_id"));

                ord.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return ord;
    }
	
	public List<Order> getOrderbyemail(String email) {
        List<Order> ord = new ArrayList<>();
        try {

            query = " select *    FROM  orders          WHERE customer_id = ( SELECT customer_id		FROM customer		WHERE email = '"+email+"')";
            
            pst = this.con.prepareStatement(query);

            rs = pst.executeQuery();

            while (rs.next()) {
            	Order row = new Order();
            	row.setOrder_id(rs.getString("order_id"));
            	row.setStatus(rs.getString("status"));
            	row.setOrder_date(rs.getString("order_date"));
            	row.setPayment_method(rs.getString("payment_method"));
            	row.setDelivery_method(rs.getString("delivery_method"));
            	row.setDelivery_unit(rs.getString("delivery_unit"));
            	row.setDelivery_cost(rs.getDouble("delivery_cost"));
            	row.setCustomer_id(rs.getString("customer_id"));
            	row.setCoupon_id(rs.getString("coupon_id"));

                ord.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return ord;
    }
	
	public int insert_order(int quantity,String coupon_id,String payment_method,String deli_method,String deli_ụnit,String email,String product_id,String order_id) {  
		try {
			 Statement st = con.createStatement();
				sql = "select new_order('"+email+"','"+product_id+"','"+quantity+"','"+order_id+"','"+coupon_id+"','"+payment_method+"','"+deli_method+"','"+deli_ụnit+"')";
				rsu= st.executeUpdate(sql);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		
		return rsu;
	}
	
	
}
