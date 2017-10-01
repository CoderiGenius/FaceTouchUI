package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;

import java.util.ArrayList;
import java.util.List;



import net.sf.json.JSONObject;
import java.util.ArrayList;
/**
 * Servlet implementation class IndexServlet
 */
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	response.setContentType("text/html;charset=UTF-8");
		String userAction = request.getParameter("action");
		System.out.println("get!");
		System.out.println(userAction);
		if(userAction.equals("listgroup") ){
			String url = "http://fp.qust.cc/api/group/listgroup";
			 Map<String,String> postMap = new HashMap<String,String>();  
			postMap.put("app_key", "2f16a447-c972-45d5-a6e9-b2a4ed50e050");
			postMap.put("app_secret", "97ECCE99E4B8326A82BA5BBC3EDA0664");
			System.out.println("postMap"+postMap);
			 JSONObject listGroupReturnJson  = JSONObject.fromObject(http.HttpClientUtil.doPost(url,postMap,"UTF-8"));
			 System.out.println(listGroupReturnJson);
			 if(listGroupReturnJson.getString("state").equals("success")){
				
				 
				String groupList = listGroupReturnJson.getString("group_list");
				//JSONObject groupListInJson = JSONObject.fromObject("{"+groupList+"}");
				//String groupName = groupListInJson.getString("group_name");*/
				
				 JSONArray jsonArray = JSON.parseArray(listGroupReturnJson.getString("group_list"));
			        com.alibaba.fastjson.JSONObject jsObj2=JSON.parseObject(jsonArray.get(0).toString());
			        //System.out.println(jsObj2.getString("ph_en"));
			        String groupName = jsObj2.getString("group_name");
			        String personCount = jsObj2.getString("person_count");
				
				request.setAttribute("personCount", personCount);
				request.setAttribute("groupList", groupList);
				System.out.println("group"+personCount);
				
				request.setAttribute("groupName",groupName);
				request.getRequestDispatcher("../GroupManagement.jsp").forward(request, response);
			 }
		}else request.getRequestDispatcher("../index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
