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
	private static String URL = "http://fp.qust.cc/api/";
	private static String APP_KEY = "appkey";
	private static String APP_SECRET = "appsecret";
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
		if(userAction.equals("listgroup")){
			listGroup(request,response);
		}
		else if(userAction.equals("deleteGroup")){
			deleteGroup(request,response);
		}
		else if(userAction.equals("addGroup")){
			System.out.println("getaddgroup");
			addGroup(request,response);
		}
		else if(userAction.equals("deletePerson")){
			System.out.println("getdeletegroup");
			deletePerson(request,response);
		}
		else if(userAction.equals("listPerson")){
			System.out.println("getlistgroup");
			listPerson(request,response);
		}
		else if(userAction.equals("addadmin")){
			System.out.println("getaddadmin");
			addAdmin(request,response);
		}
	}




	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	private void listGroup(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//list小组
		response.setContentType("text/html;charset=UTF-8");
		String userAction = request.getParameter("action");

		System.out.println(userAction);
		if (userAction.equals("listgroup")) {
			
			Map<String, String> postMap = new HashMap<String, String>();
			postMap.put("app_key", APP_KEY);
			postMap.put("app_secret", APP_SECRET);
			System.out.println("postMap" + postMap);
			JSONObject listGroupReturnJson = JSONObject.fromObject(http.HttpClientUtil.doPost(URL+"group/listgroup", postMap, "UTF-8"));
			System.out.println(listGroupReturnJson);
			if (listGroupReturnJson.getString("state").equals("success")) {

				//String groupList = listGroupReturnJson.getString("group_list");
				// JSONObject groupListInJson =
				// JSONObject.fromObject("{"+groupList+"}");
				// String groupName = groupListInJson.getString("group_name");*/
				
				//获取小组数
				int groupCount = Integer.parseInt(listGroupReturnJson.getString("group_count"));
				String count = listGroupReturnJson.getString("group_count");
				String groupName[] = new String[groupCount];
				String personCount[] = new String[groupCount];

				for (int i = 0; i < groupCount; i++) {
					JSONArray jsonArray = JSON.parseArray(listGroupReturnJson.getString("group_list"));
					com.alibaba.fastjson.JSONObject jsObj2 = JSON.parseObject(jsonArray.get(i).toString());
					// System.out.println(jsObj2.getString("ph_en"));
					groupName[i] = jsObj2.getString("group_name");
					personCount[i] = jsObj2.getString("person_count");
					
				//set小组名和小组人数
					request.setAttribute("groupName" + i, groupName[i]);
					request.setAttribute("personCount" + i, personCount[i]);
				}
				//set小组数
				 request.setAttribute("groupCount",count );
				 System.out.println("groupc"+count);

				request.getRequestDispatcher("../GroupManagement.jsp").forward(request, response);
			}
		}
	}
	private void addGroup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		
		String newGroupName = request.getParameter("groupName");
		Map<String, String> postMap = new HashMap<String, String>();
		postMap.put("app_key", APP_KEY);
		postMap.put("app_secret", APP_SECRET);
		postMap.put("group_name", newGroupName);
		System.out.println("postMap" + postMap);
		JSONObject addGroupReturnJson = JSONObject.fromObject(http.HttpClientUtil.doPost(URL+"group/addgroup", postMap, "UTF-8"));
		System.out.println(addGroupReturnJson);
		if (addGroupReturnJson.getString("message").equals("Add_Group_Success")) {
			
			 request.setAttribute("addGroupStatus","添加小组成功" );
			request.getRequestDispatcher("../AddGroup.jsp").forward(request, response);
		}
		else {
			request.setAttribute("addGroupStatus","添加小组失败" );
			request.getRequestDispatcher("../AddGroup.jsp").forward(request, response);
		}
		
		
	}
	private void deleteGroup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		String deleteGroupName = request.getParameter("groupName");
		Map<String, String> postMap = new HashMap<String, String>();
		postMap.put("app_key", APP_KEY);
		postMap.put("app_secret", APP_SECRET);
		postMap.put("group_name", deleteGroupName);
		System.out.println("postMap" + postMap);
		JSONObject addGroupReturnJson = JSONObject.fromObject(http.HttpClientUtil.doPost(URL+"group/deletegroup", postMap, "UTF-8"));
		System.out.println(addGroupReturnJson);
		if (addGroupReturnJson.getString("message").equals("Delete_Group_Success")) {
			
			 request.setAttribute("deleteGroupStatus","删除小组成功" );
			request.getRequestDispatcher("../DeleteGroup.jsp").forward(request, response);
		}
		else {
			request.setAttribute("deleteGroupStatus","删除小组失败" );
			request.getRequestDispatcher("../DeleteGroup.jsp").forward(request, response);
		}
		
	}
	private void deletePerson(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String deleteGroupName = request.getParameter("groupName");
		String deletePersonName = request.getParameter("personID");
		Map<String, String> postMap = new HashMap<String, String>();
		postMap.put("app_key", APP_KEY);
		postMap.put("app_secret", APP_SECRET);
		postMap.put("group_name", deleteGroupName);
		postMap.put("person_id", deletePersonName);
		System.out.println("postMap" + postMap);
		JSONObject addPersonReturnJson = JSONObject.fromObject(http.HttpClientUtil.doPost(URL+"person/deleteperson", postMap, "UTF-8"));
		System.out.println(addPersonReturnJson);
		if (addPersonReturnJson.getString("message").equals("Delete_Person_Success")) {
			
			 request.setAttribute("deletePersonStatus","删除成员成功" );
			request.getRequestDispatcher("../DeletePerson.jsp").forward(request, response);
		}
		else {
			request.setAttribute("deletePersonStatus","删除成员失败" );
			request.getRequestDispatcher("../DeletePerson.jsp").forward(request, response);
		}
	}
	private void listPerson(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String deleteGroupName = request.getParameter("groupName");
		
		Map<String, String> postMap = new HashMap<String, String>();
		postMap.put("app_key", APP_KEY);
		postMap.put("app_secret", APP_SECRET);
		postMap.put("group_name", deleteGroupName);
		
		System.out.println("postMap" + postMap);
		JSONObject listPersonReturnJson = JSONObject.fromObject(http.HttpClientUtil.doPost(URL+"person/listperson", postMap, "UTF-8"));
		System.out.println(listPersonReturnJson);
		if (listPersonReturnJson.getString("message").equals("List_Person_Success")) {
			int personCount = Integer.parseInt(listPersonReturnJson.getString("person_count"));
			String count = listPersonReturnJson.getString("person_count");
			String personID[] = new String[personCount];
			String fingerCount[] = new String[personCount];

			for (int i = 0; i < personCount; i++) {
				JSONArray jsonArray = JSON.parseArray(listPersonReturnJson.getString("persons"));
				com.alibaba.fastjson.JSONObject jsObj2 = JSON.parseObject(jsonArray.get(i).toString());
				// System.out.println(jsObj2.getString("ph_en"));
				personID[i] = jsObj2.getString("person_id");
				fingerCount[i] = jsObj2.getString("finger_count");
				
				
			//set小组名和小组人数
				request.setAttribute("personID" + i, personID[i]);
				request.setAttribute("fingerCount" + i, fingerCount[i]);
			}
			//set小组数
			 request.setAttribute("personCount",count );
			 System.out.println("groupc"+count);

			request.getRequestDispatcher("../PersonManagement.jsp").forward(request, response);
		}
	}

	private void addAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String addAdminName = request.getParameter("adminName");
		String addAdminPassword = request.getParameter("adminPassword");
		
		
		//向服务器申请app
		Map<String, String> postMap = new HashMap<String, String>();
		postMap.put("app_key", APP_KEY);
		postMap.put("app_secret", APP_SECRET);
		
		System.out.println("postMap" + postMap);
		JSONObject addAdminReturnJson = JSONObject.fromObject(http.HttpClientUtil.doPost(URL+"app/createapp", postMap, "UTF-8"));
		System.out.println(addAdminReturnJson);
		
		//向database添加数据
				database.addUser.Add(addAdminName, addAdminPassword,addAdminReturnJson.getString("app_key"));
				
		if (addAdminReturnJson.getString("message").equals("Create_App_Success")) {
			
			String appKey = addAdminReturnJson.getString("app_key");
			String appSecret = addAdminReturnJson.getString("app_secret");
			 request.setAttribute("addAdminStatus","添加成功" );
			 System.out.println(appSecret+appKey);
			 request.setAttribute("appKey",appKey );
			 request.setAttribute("appSecret",appSecret );
			request.getRequestDispatcher("../Users.jsp").forward(request, response);
		}
		else {
			request.setAttribute("addAdminStatus","添加失败" );
			request.getRequestDispatcher("../Users.jsp").forward(request, response);
		}
	}

	

}
