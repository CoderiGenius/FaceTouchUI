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
	private static String URL = "http://fp.qust.cc/api/group/listgroup";
	private static String APP_KEY = "appkey";
	private static String APP_SECRET = "appseret";
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
			addGroup(request,response);
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
			JSONObject listGroupReturnJson = JSONObject.fromObject(http.HttpClientUtil.doPost(URL, postMap, "UTF-8"));
			System.out.println(listGroupReturnJson);
			if (listGroupReturnJson.getString("state").equals("success")) {

				//String groupList = listGroupReturnJson.getString("group_list");
				// JSONObject groupListInJson =
				// JSONObject.fromObject("{"+groupList+"}");
				// String groupName = groupListInJson.getString("group_name");*/
				
				//获取小组数
				int groupCount = Integer.parseInt(listGroupReturnJson.getString("group_count"));
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
				 request.setAttribute("groupCount", groupCount);
				// System.out.println("group"+personCount);

				request.getRequestDispatcher("../GroupManagement.jsp").forward(request, response);
			}
		}
	}
	private void addGroup(HttpServletRequest request, HttpServletResponse response){
		
	}
	private void deleteGroup(HttpServletRequest request, HttpServletResponse response){
		
	}
}
