package cn.techtutorial.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Statement;


import cn.techtutorial.model.*;
import java.util.*;

public class PriceDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	private int rsu;
	private String sql;

	public PriceDao(Connection con) {
		this.con = con;
	}
	
	public Price getprice(String order_id) {
			Price p = new Price();
		try {

            query = " select *    FROM  includes          WHERE order_id = '"+order_id+"'";
            
            pst = this.con.prepareStatement(query);

            rs = pst.executeQuery();

            while (rs.next()) {
            	p.setPr(rs.getDouble("net_price"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
		return p;
	}
	
	
}
