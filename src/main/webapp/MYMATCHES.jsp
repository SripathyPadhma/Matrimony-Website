<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
	<%@page import="com.db.*" %>
	<%@page import="com.DAO.*" %>
		<%@page import="com.entity.*" %>
			<%@page import="java.util.*" %>
	<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Matches</title>
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script type="text/javascript">

  </script>
    <link href="css/main.css" rel="stylesheet" />
<style type="text/css">
h3 {
	margin: 10px 0;
}

h6 {
	margin: 5px 0;
	text-transform: uppercase;
}

p {
	font-size: 14px;  
	line-height: 21px;
}

.card-container {
	background-color: white;
	border-radius: 5px;
	box-shadow: 0px 10px 20px -10px rgba(0, 0, 0, 0.75);
	color: black;
	padding-top: 30px;
	position: relative;
	width: 350px;
	height:450px;
	max-width: 100%;
	text-align: center;
	
	margin: 20px;
}

.card-container .round {   
	border: 1px solid green;
	border-radius: 50%;
	padding: 7px;
}

button.primary.ghost {
	background-color: transparent;
	color: #02899C;
}
body {
	background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);
	background-image: linear-gradient(to top, #62f787 0%, #c6e948 100%);
	background-attachment: fixed;
	background-repeat: no-repeat;
	/*



    font-family: 'Vibur', cursive;
/*   the main font */
	/* background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%); */
	.square { width : 408px;
	height: 408px;
	border: 1px solid #ccc;
	display: grid;
	grid-template-rows: 0fr 100px 0fr;
	box-sizing: border-box;
}

</style>
<link rel="stylesheet" src="index.css">
<%@include file="components/CSS.jsp"%>


</head>
<body>
<c:if test="${empty userobj }" >
<c:redirect url="LOGIN.jsp"></c:redirect>
</c:if>
<% 
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");

%>
	<%@include file="UNAVBAR.jsp"%>
	 <div style="margin-top:-30px;" class="s010">
      <form method="get" action="MYMATCHES.jsp">
        <div class="inner-form">
          <div class="basic-search">
       
          </div>
          <div class="advance-search">
            <span class="desc">ADVANCED SEARCH</span>
            <div class="row">
                       <div style="margin-left:1px;" class=" input-field">
                <div class="input-select">
                  <select data-trigger="" name="choices-single-defaul">
                    <option placeholder="" value="">AGE</option>
                    <option>Subject b</option>
                    <option>Subject c</option>
                  </select>
                </div>
              </div>
                         <div style="margin-left:1px;" class=" input-field">
                <div class="input-select">
                  <select data-trigger="" name="gen">
                    <option placeholder="" value="ge">GENDER</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                  </select>
                </div>
              </div>
              <div class="input-field">
                <div class="input-select">
                  <select data-trigger="" name="choices-single-defaul">
                    <option placeholder="" value="">COUNTRY</option>
                    <option>Subject b</option>
                    <option>Subject c</option>
                  </select>
                </div>
              </div>
              <div class="input-field">
                <div class="input-select">
                  <select data-trigger="" name="Rasi">
                    
					<option placeholder="" value="rasi">RASI</option>
					<option value="Dhanushu">Dhanushu</option>
					<option value="Kanni">Kanni</option>
					<option value="Kadagam">Kadagam</option>
					<option value="Kumbham">Kumbham</option>
					<option value="Makaram">Makaram</option>
					<option value="Meenam">Meenam</option>
					<option value="Mesham">Mesham</option>
					<option value="Mithunam">Mithunam</option>
					<option value="Rishabam">Rishabam</option>
					<option value="Simham">Simham</option>
					<option value="Tulam">Tulam</option>
					<option value="Vrichigam">Vrichigam</option>
				</select>
                  </select>
                </div>
              </div>
                  <div class="input-field">
                <div class="input-select">
                  <select data-trigger="" name="caste">
                    <option placeholder="" value="cas">SUB-CASTE</option>
                    <option value="Select Sub Caste">Select Sub Caste</option>
					<option value="Agamudaya Mudaliyar">Agamudaya Mudaliyar</option>
					<option value="Isai Vellalar">Isai Vellalar</option>
					<option value="Mudaliyar">Mudaliyar</option>
					<!--  option value="135">None</option>-->
					<option value="Saiva Vellalar">Saiva Vellalar</option>
					<option value="Sengunthar/Kaikolar">Sengunthar/Kaikolar</option>
					<option value="Thuluva Vellalar">Thuluva Vellalar</option>
                  </select>
                </div>
              </div>
              <div style="margin-left:1px;padding-top:20px" class="input-field">
                <div class="input-select">
                  <select data-trigger="" name="Star">
                    <option placeholder="" value="star">STAR</option>
					<option value="Ashwini">Ashwini</option>
					<option value="Bharani">Bharani</option>
					<option value="Karthikai">Karthikai</option>
					<option value="Rohini">Rohini</option>
					<option value="Mirugaseerisham">Mirugaseerisham</option>
					<option value="Thiruvadirai">Thiruvadirai</option>
					<option value="Punarpoosam">Punarpoosam</option>
					<option value="Poosam">Poosam</option>
					<option value="Ayilyam">Ayilyam</option>
					<option value="Makam">Makam</option>
					<option value="Pooram">Pooram</option>
					<option value="Uthiram">Uthiram</option>
					<option value="Hastham">Hastham</option>
					<option value="Chittirai">Chittirai</option>
					<option value="Swathi">Swathi</option>
					<option value="Visagam">Visagam</option>
					<option value="Anusham">Anusham</option>
					<option value="Kettai">Kettai</option>
					<option value="Moolam">Moolam</option>
					<option value="Pooradam">Pooradam</option>
					<option value="Uthiradam">Uthiradam</option>
					<option value="Thiruvonam">Thiruvonam</option>
					<option value="Avittam">Avittam</option>
					<option value="Sadhayam">Sadhayam</option>
					<option value="Poorattadhi">Poorattadhi</option>
					<option value="Uthirattadhi">Uthirattadhi</option>
					<option value="Revathi">Revathi</option>
				</select>
                  </select>
                </div>
              </div>
                         <div style="margin-left:1px;padding-top:20px" class=" input-field">
                <div class="input-select">
                  <select data-trigger="" name="City">
                    <option placeholder="" value="city">CITY</option>
                    <option value="Bangalore">Bangalore</option>
                    
                  </select>
                </div>
              </div>
              <div style="margin-left:1px;padding-top:20px" class=" input-field">
                <div class="input-select">
                  <select data-trigger="" name="Edu">
                    <option placeholder="" value="edu">EDUCATION</option>
                   <option value="Engineering">Engineering</option>
					<option value="Arts/Science">Arts/Science</option>
					<option value="Medical">Medical</option>
					<option value="Research">Research</option>
					<option value="Others">Others</option>
                  </select>
                </div>
                
              </div>
                     <div style="margin-left:1px;padding-top:20px" class=" input-field">
                <div class="input-select">
                  <select data-trigger="" name="choices-single-defaul">
                    <option placeholder="" value="">PROFILES</option>
                    <option>Subject b</option>
                    <option>Subject c</option>
                  </select>
                </div>
              </div>

            </div>
            <div style="padding-top:1px" class=" row second">
              <div class="input-field">
                <div class="input-select">
                  <select data-trigger="" name="choices-single-defaul">
                    <option placeholder="" value="">DIET</option>
                    <option>Subject b</option>
                    <option>Subject c</option>
                  </select>
                </div>
                
                
              </div>
              <div class="input-field">
                <div class="input-select">
                  <select data-trigger="" name="choices-single-defaul">
                    <option placeholder="" value="">INCOME</option>
                    <option>Last time</option>
                    <option>Today</option>
                    <option>This week</option>
                    <option>This month</option>
                    <option>This year</option>
                  </select>
                </div>
              </div>
              <div class="input-field">
                <div class="input-select">
                  <select data-trigger="" name="choices-single-defaul">
                    <option placeholder="" value="">PROFESSION</option>
                    <option>Subject b</option>
                    <option>Subject c</option>
                  </select>
                </div>
              </div>
       
            </div>
            <div class="row third">
              <div class="input-field">
                <div class="result-count">
                  <span> </span></div>
                <div class="group-btn">
                  <button class="btn-delete" id="delete">RESET</button>
                  <button id="search" class="btn-search">SEARCH</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
    
    <div class="row">
    
   
    
    <%
						String gen = request.getParameter("gen");
						String subC = request.getParameter("caste");
						String rasi = request.getParameter("Rasi");
						String star = request.getParameter("Star");
						String edu = request.getParameter("Edu");
						String city = request.getParameter("City");

						String msg = "";
						profileDAO dao = new profileDAO(DbConnect.getcon());

						List<Users> list = null;
						if ("ge".equals(gen) && "cas".equals(subC) && "rasi".equals(rasi) && "star".equals(star) && "edu".equals(edu) && "city".equals(city)) {
							list = new ArrayList<Users>();
							//list=dao.GetAllUsers();
							msg = "Not Available";
						} else if ("ge".equals(gen) || "cas".equals(subC) || "rasi".equals(rasi) || "star".equals(star) || "edu".equals(edu) ||  "city".equals(city)) {
							list = dao.getUsersByGenOrCaste(gen, subC, rasi, star, edu, city);
						} else
							list = dao.getUsersByGenAndCaste(gen, subC);

						//if (list.isEmpty()) {
						%>
						<!-- <h4 class="text-center text-danger">Not Available</h4> -->
						<%
						//}
						if (list != null) {

						for (Users g : list) {
						%>


						<div class="col-md-4">
							<div class="card-container">

								<img class="round" src="profileimages/<%=g.getImagename()%>"
									style="width: 150px; height: 150px;" alt="user" />
								<h3>
									<%=g.getFname()%>
								</h3>

								<p>
									City:
									<%=g.getCity()%><br> Job:<%=g.getProfession()%><br>
									EDUCATION:<%=g.getEducation()%><br> AGE:<%=g.getAge()%><br>
									SUBCASTE:<%=g.getSubCaste()%><br> <a
										class="btn btn-outline-success"
										href="VIEWPROFILE.jsp?ID=<%=g.getId()%>">Show More</a>
							</div>
						</div>
						<%
						}
						} else {
						%><h4 class="text-center text-danger"><%=msg%></h4>

						<%
						}
						%>
    
     </div>
    <script src="js/extention/choices.js"></script>
    <script>
      const customSelects = document.querySelectorAll("select");
      const deleteBtn = document.getElementById('delete')
      const choices = new Choices('select',
      {
        searchEnabled: false,
        itemSelectText: '',
        removeItemButton: true,
      });
      for (let i = 0; i < customSelects.length; i++)
      {
        customSelects[i].addEventListener('addItem', function(event)
        {
          if (event.detail.value)
          {
            let parent = this.parentNode.parentNode
            parent.classList.add('valid')
            parent.classList.remove('invalid')
          }
          else
          {
            let parent = this.parentNode.parentNode
            parent.classList.add('invalid')
            parent.classList.remove('valid')
          }
        }, false);
      }
      deleteBtn.addEventListener("click", function(e)
      {
        e.preventDefault()
        const deleteAll = document.querySelectorAll('.choices__button')
        for (let i = 0; i < deleteAll.length; i++)
        {
          deleteAll[i].click();
        }
      });

    </script>
    
	<div id="de" class="container">
	<h4  class="text-center ">ALL USERS</h4>
	<div class="row">
	<%
	profileDAO D=new profileDAO(DbConnect.getcon());
	List<Users>list1=D.GetAllUsers();
	for(Users u:list1)
	{%>
	
			<div class="col-md-3">
				<div class="card-container">

					<img class="round" src="profileimages/<%=u.getImagename() %>"
						style="width: 150px; height: 150px;" alt="user" />
					<h3>
						<%=u.getFname() %>
					</h3>
					
					<p  >City: <%=u.getCity() %><br>
					Job:<%=u.getProfession() %><br> 
					EDUCATION:<%=u.getEducation() %><br>
					
					AGE:<%=u.getAge() %><br>
				    

					<a class="btn btn-outline-success" href="VIEWPROFILE.jsp?ID=<%=u.getId()%>">Show More</a>
				</div>
		</div>
		
	
	
		
			
	<%}
	
	%>
		
	</div>
		</div>

 <script type="text/javascript">
$("#search").click(function(){
   

$("#de").hide();
	
});

</script>
</body>
</html>