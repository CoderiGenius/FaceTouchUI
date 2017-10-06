package database;

import java.sql.*;

public class addUser {

public static String Add(String ID,String password,String appKey){

           // ����������
           String driver = "com.mysql.jdbc.Driver";

           // URLָ��Ҫ���ʵ����ݿ���scutcs
           String url = "jdbc:mysql://115.159.74.127:3306/normalusers";

           // MySQL����ʱ���û���
           String user = "root"; 

           // MySQL����ʱ������
           String password1 = "sdplzwb001026.0";

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
            String sql = "INSERT INTO users(ID,password,authorization,appKey) "+"VALUES ("+"\""+ID+"\""+","+"\""+password+"\""+","+"\""+"normal"+"\""+","+"\""+appKey+"\""+")";
            
            System.out.println(sql);
            // �����
            boolean rs = statement.execute(sql);
            
            System.out.println(rs);
          /*  
           while(rs.next()) {
        	 
             String fatchID = rs.getString("ID");
             if (fatchID == null)return null;
             else{
             String fatchPassword = rs.getString("password");
             if(password.equals(fatchPassword)){
            	 String authMatch = rs.getString("authorization");
            	 if(authMatch.equals("admin")){
            		 return "admin";
            	 }
            	 else
            	 	return "access";
             }
             else return null;
            
            }}*/

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