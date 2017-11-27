<html>
	<head>
		<h1 align="center"><b>STUDENT FEEDBACK FORM FOR THE ACADAMIC YEAR 2015-2016</b></h1>
		<style>
    tab1 { padding-left: 4em; }
    tab2 { padding-left: 8em; }
    tab3 { padding-left: 12em; }
    tab4 { padding-left: 16em; }
    tab5 { padding-left: 20em; }
		</style>
		</head>
   <body>
	   <p><tab1><b>Year:1</b></tab1>
		   <tab2><b>Branch:ECE</b></tab2>
		   <tab3><b>Semister:2</b></tab3>
		   <tab4><b>Section:1</b></tab4>
		   <tab4><b>Date:2016-06-25</b></tab4></p>
  <table border="5">
         
     
 <%@page import="java.sql.*"%> 
<%
 
           String[] h=new String[19];
           int[] q1=new int[500];
           int[] q2=new int[500];int[] q3=new int[500];int[] q4=new int[500];int[] q5=new int[500];int[] q6=new int[500];int[] q7=new int[500];int[] q8=new int[500];int[] q9=new int[500];int[] q10=new int[500];int[] q11=new int[500];
           int[] q12=new int[500];
           int i=0,sum1=0,sum2=0,sum3=0,sum4=0,sum5=0,sum6=0,sum7=0,sum8=0,sum9=0,sum10=0,sum11=0,sum12=0,t=0,l=0,sum,su,z=0;
           float per1,per2,per3,per4,per5,per6,per7,per8,per9,per10,per11,per12;
         
           int[] summ=new int[20];
           int[][] a=new int[12][6];
             String fac[]=new String[10];
        
             
              int y=-1;    
               try
               {
               Class.forName("com.mysql.jdbc.Driver");  
               Connection con=DriverManager.getConnection(  
               "jdbc:mysql://localhost:3306/javaassignment","root","");
                Statement stmt6=con.createStatement();
                ResultSet rs6=stmt6.executeQuery("select * from subject ");
              while(rs6.next())
             {
                   h[t]=rs6.getString(5);
                  fac[t]=rs6.getString(6);
                  t++;      
              }
              
                  out.print("<tr>");
                  out.print("<th>");
                  out.print("qid");
                  out.print("<th>");
                  out.print("question");
                 for (int c=0; c<t; c++) {
                 out.print("<th>");
                out.print(h[c]);
             
                }
              out.println("</tr>");

               while(l<6){
                
                 i=0;
               PreparedStatement stmt1=con.prepareStatement("select * from feed where sub=?");
             stmt1.setString(1,h[l]);
             ResultSet rs1=stmt1.executeQuery();
               System.out.println(h[l]+"\t");
               while(rs1.next()) 
               {
                  q1[i]=rs1.getInt(7); 
                  sum1=sum1+q1[i];
                  q2[i]=rs1.getInt(8);
                  sum2=sum2+q2[i];
                  q3[i]=rs1.getInt(9);
                  sum3=sum3+q3[i];
                  q4[i]=rs1.getInt(10);
                  sum4=sum4+q4[i];
                  q5[i]=rs1.getInt(11);
                  sum5=sum5+q5[i];
                  q6[i]=rs1.getInt(12);
                  sum6=sum6+q6[i]; 
                  q7[i]=rs1.getInt(13);
                  sum7=sum7+q7[i];
                  q8[i]=rs1.getInt(14);
                  sum8=sum8+q8[i];
                   q9[i]=rs1.getInt(15);
                  sum9=sum9+q9[i];
                  q10[i]=rs1.getInt(16);
                  sum10=sum10+q10[i];
                  q11[i]=rs1.getInt(17);
                  sum11=sum11+q11[i];
                   q12[i]=rs1.getInt(18);
                  sum12=sum12+q12[i];
                
                   i++;
                  
                  
             }
           
           per1=(float)((float)sum1/(float)((i*5)));
           a[0][l]=(int)(Math.round(per1*100));
           per2=(float)((float)sum2/(float)(i*5));
           a[1][l]=(int)(Math.round(per2*100));
           per3=(float)((float)sum3/(float)(i*5));
            a[2][l]=(int)(Math.round(per3*100));
           per4=(float)((float)sum4/(float)(i*5));
           a[3][l]=(int)(Math.round(per4*100));
           per5=(float)((float)sum5/(float)(i*5));
            a[4][l]=(int)(Math.round(per5*100));
          per6=(float)((float)sum6/(float)(i*5));
           a[5][l]=(int)(Math.round(per6*100));
           per7=(float)((float)sum7/(float)(i*5));
           a[6][l]=(int)(Math.round(per7*100));
           per8=(float)((float)sum8/(float)(i*5));
           a[7][l]=(int)(Math.round(per8*100));
           per9=(float)((float)sum9/(float)(i*5));
           a[8][l]=(int)(Math.round(per9*100));
           per10=(float)((float)sum10/(float)(i*5));
           a[9][l]=(int)(Math.round(per10*100));
           per11=(float)((float)sum11/(float)(i*5));
           a[10][l]=(int)(Math.round(per11*100));
           per12=(float)((float)sum12/(float)(i*5));
           a[11][l]=(int)(Math.round(per12*100));
          System.out.println();
           sum=(int)(a[0][l]+a[1][l]+a[2][l]+a[3][l]+a[4][l]+a[5][l]+a[6][l]+a[7][l]+a[8][l]+a[9][l]+a[10][l]+a[11][l]);
           summ[l]=sum;
         l++;
          sum1=0;sum2=0;sum3=0;sum4=0;sum5=0;sum6=0;sum7=0;sum8=0;sum9=0;sum10=0;sum11=0;sum12=0;
        
          
        }
      Statement stmt=con.createStatement();
      ResultSet rs=stmt.executeQuery("select qid,question from questions order by id");
      
	while(rs.next())
	{
	y++;
	%>
        <tr>
			<td><%=rs.getString("qid")%></td><td><%=rs.getString("question")%></td><td><%=a[y][0]%></td><td><%=a[y][1]%></td><td><%=a[y][2]%></td><td><%=a[y][3]%></td><td><%=a[y][4]%></td><td><%=a[y][5]%></td>
	</tr>
	<%
	
	}
       %>
       <tr>
       	<td></td><td>Average</td><td><%=(summ[0]/12)%></td><td><%=(summ[1]/12)%></td><td><%=(summ[2]/12)%></td><td><%=(summ[3]/12)%></td><td><%=(summ[4]/12)%></td><td><%=(summ[5]/12)%></td>
       </tr>
       <%
       Statement stmt2=con.createStatement();
      ResultSet rs2=stmt2.executeQuery("select * from subject ");
      while(rs2.next())
      {
       fac[z]=rs2.getString(6);
       z++;
       }
      %>
      <tr>
      	<td></td><td>faculty</td><td><%=fac[0]%></td><td><%=fac[1]%></td><td><%=fac[2]%></td><td><%=fac[3]%></td><td><%=fac[4]%></td><td><%=fac[5]%></td>
      </tr>
      	<%
      }
       catch(Exception e)
       {
          out.println(e);
        }
%>
</table>
</body>
</html>
