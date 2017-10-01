package database;

import java.sql.*;

public class MatchID {

public static String Match(String Email,String password){

           // ����������
           String driver = "com.mysql.jdbc.Driver";

           // URLָ��Ҫ���ʵ����ݿ���scutcs
           String url = "jdbc:mysql://47.95.238.76:3306/students";

           // MySQL����ʱ���û���
           String user = "root"; 

           // MySQL����ʱ������
           String password1 = "25801998";

           try { 
            // ������������
            Class.forName(driver);

            // �������ݿ�
            Connection conn = DriverManager.getConnection(url, user, password1);

            if(!conn.isClosed()) {
             System.out.println("Succeeded connecting to the Database!");
             
            }
            // statement����ִ��SQL���
            Statement statement = conn.createStatement();
           
            // Ҫִ�е�SQL���
            String sql = "select* from matchStu where ID=" +"\""+ Email+"\"";
            
            System.out.println(sql);
            // �����
            ResultSet rs = statement.executeQuery(sql);
            
           
            
           while(rs.next()) {
        	 
             String fatchEmail = rs.getString(Email);
             if (fatchEmail == null)return null;
             else{
             String fatchPassword = rs.getString("password");
             if(password.equals(password)){
            	 	return "access";
             }
             else return null;
            
            }}

           // rs.close();
            //conn.close();

           } catch(ClassNotFoundException e) {


            System.out.println("Sorry,can`t find the Driver!"); 
            e.printStackTrace();


           } catch(SQLException e) {


            e.printStackTrace();


           } catch(Exception e) {


            e.printStackTrace();


           }
		return null; 
}

}