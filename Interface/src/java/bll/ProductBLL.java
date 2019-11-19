/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bll;

import entity.Product;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import static java.sql.DriverManager.getConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import jdk.nashorn.internal.runtime.logging.Loggable;

/**
 *
 * @author Admin
 */
public class ProductBLL {

    private static Object conn;
    
    static String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=TMDT;user=sa;password=123698";
    
    //public static void main(String[] args) {
//        System.out.println(ProductBLL.getNewProducts(5));
//    }
//    
    public static List<Product> getNewProducts(int number){
//        try{
//            Context initContext = new InitialContext();
            //DataSource ds = (DataSource) initContext.lookup("java:comp/env/jdbc/TMDT");
      //public static void main(String[] args){
          //int number = 5;
            ArrayList<Product> prods;
            try (Connection conn = getConnection(connectionUrl);Statement stmt = conn.createStatement();) {
                
                //System.out.println("\n connect successfully!");
                String sql = "select * from product";
                ResultSet rs;
                rs = stmt.executeQuery(sql);
                
                prods = new ArrayList<>();
                while(rs.next()&& number >= 0){
                    Product p = new Product();
                    p.setProductID(rs.getInt("product_id"));
                    //p.setCategoryID(rs.getInt("category_id"));
                    p.setPrice(rs.getFloat("price"));
                    p.setDescription(rs.getString("description_"));
                    p.setImage(rs.getString("image_"));
                    p.setName(rs.getString("name"));
                    p.setThumbImage(rs.getString("thumb_image"));
                    p.setLastUpdate(rs.getDate("last_update"));
                    p.setDescriptionDetail(rs.getString("description_detail"));
                    prods.add(p);
                    number--;
                    //System.out.println(p.getImage();
                    
                }
            }
            //return prods;
        catch(SQLException ex){
            System.out.println(ex);
        }
            
//        } catch (NamingException ex) {
//            Logger.getLogger(ProductBLL.class.getName()).log(Level.SEVERE, null, ex);
//            System.out.println("Ket noi loi!");
//        }
        return null;
//    }
//    
    }
}