<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Result || Donar</title>
</head>
<body>

<html>
    <head>
    </head>
    <body>
        <table width="700px" align="center"
               style="border:1px solid #000000;">
            <tr>
                <td colspan=4 align="center"
                    style="background-color:teal">
                    <b>User Record</b></td>
            </tr>
            <tr style="background-color:lightgrey;">
                <td><b>User Name</b></td>
                <td><b>Blood_Group</b></td>
                <td><b>Age</b></td>
                <td><b>Mobile_Number</b></td>
                <td><b>Email</b></td>
                <td><b>Address</b></td>
            </tr>
            <%@page import="java.util.ArrayList"%>
             <%@page import="java.util.Iterator"%>
            <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("searchlist") != null) {
                	ArrayList al = (ArrayList)request.getAttribute("searchlist");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList searchlist = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=searchlist.get(0)%></td>
                <td><%=searchlist.get(1)%></td>
                <td><%=searchlist.get(2)%></td>
                <td><%=searchlist.get(3)%></td>
                <td><%=searchlist.get(4)%></td>
                <td><%=searchlist.get(5)%></td>
                
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#eeffee"><b>No Record Found..</b></td>
            </tr>
            <%            }
            %>
        </table>
    </body>
</html>
</body>
</html>