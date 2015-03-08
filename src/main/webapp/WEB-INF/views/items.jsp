<%@include file="includes/header.jsp"%>
<c:choose>
	<c:when test="${isfilteredArea}">
	<div class="md-col-12 banner-form" id="shownArea">
      <div class="container message">
        <h4>Showing available food items near <span style="color:green;">${locality}, ${city}.</span></h4>
        <h4><button class='btn btn-small' id="changeArea">Click to change</button></h4>
      </div>
    </div>
    </c:when>
    
	<c:otherwise>
     <div class="md-col-12 banner-form" id="">
      <div class="container message">
        <h4>Locate yourself to find people that deliver to you.</h4>
        <form class="form-horizontal" method="post" action="filter-area">
          <div class="form-group">
            <label for="userCity" style="margin:10px">City</label>
            <input type="text" placeholder="Select your City" id="userCity" class="textbox" style="height: 10%;" name="city">
            <label for="userArea" style="margin:10px">Area</label>
            <input type="text" placeholder="Select your Area" id="userArea" class="textbox" style="height: 10%;" name="locality">
            <input type="submit" class="btn btn-primary" value="Submit">
          </div>
        </form>
      </div>
    </div>
	</c:otherwise>
</c:choose>

   <div class="md-col-12 banner-form" id="selectArea" style="display: none;">
      <div class="container message">
        <h4>Locate yourself to find people that deliver to you.</h4>
        <form class="form-horizontal" method="post" action="filter-area">
          <div class="form-group">
            <label for="userCity" style="margin:10px">City</label>
            <input type="text" placeholder="Select your City" id="userCity" class="textbox" style="height: 10%;" name="city">
            <label for="userArea" style="margin:10px">Area</label>
            <input type="text" placeholder="Select your Area" id="userArea" class="textbox" style="height: 10%;" name="locality">
            <input type="submit" class="btn btn-primary" value="Submit">
          </div>
        </form>
      </div>
    </div>
    
      <div class="single">
         <div class="container">
        	<%@include file="includes/aside.jsp"%>
 	  		  <div class="cont span_2_of_3">
                <div class="row">
              <div style="margin-top:2%">
                Sort By: <a href="#">Relevance</a> | <a href="#">Rating</a> | <a href="#">Price</a>
              </div>
              
              <c:forEach var="item" varStatus="loop" items="${itemsList}">
              
                <div class="col-md-2">
                    <div class="grid">
                        <div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
                            <div class="portfolio-wrapper">     
                                <a data-toggle="modal" data-target="#itemsModal${item.id}" href="#" class="b-link-stripe b-animate-go  thickbox">
                                 <img src="resources/images/cont2.jpg" /><div class="b-wrapper"><h2 class="b-animate b-from-left    b-delay03 "><img src="resources/images/link-ico.png" alt=""/></h2>
                                </div></a>
                            </div>
                        </div>      
                        <p class="text-center">${item.title}</p>
                        <h2 class="text-center"><span>&#8377; </span>${item.price}</h2>
                        <p class="text-center"><a href="item-details?item=${item.id}">Buy</a></p>
                    </div>
                </div>
                
                
            <div class="modal fade" id="itemsModal${item.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header banner-title">
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                     <h3 class="modal-title" id="itemNameModal">${item.title}</h3>
                     <h4 class="modal-title" id="myModalLabel">${item.description}</h4>
                  </div>
                  <div class="modal-body">
                    <div class="ratebox" data-id="1" data-rating="2.2" style="float:right" id="itemAttrModal"></div>
					    Order Till : ${item.validTill} <br>
					    Max Serving: ${item.quantity} <br>
					    Price: &#8377;  ${item.price} per serving <br>
                  </div>
                  <div class="modal-footer">
                     <button type="button" href="item-details?item=${item.id}" class="btn btn-primary">Buy</button>
                  </div>
               </div>
            </div>
         </div>
             </c:forEach>
</div>
            </div>

         </div>
      </div>
<%@include file="includes/footer.jsp"%>