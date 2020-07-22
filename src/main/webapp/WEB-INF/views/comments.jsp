<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/comments.css">
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>


</head>
<body>

	<script>
	$(function(){
	    
	    show();
	    
	});
	</script>


    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <div class="card mt-5">
                    <div class="card-body">

                        <div class="row justify-content-center">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-9 col-xl-9">
                                <div class="row justify-content-center">
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-9 col-xl-9">
                                        <ul class="p-0">
											
											<div id="target">
											</div>

                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <hr class="style1">

        <div class="row justify-content-center">
            <div class="col-12">
                <form id="testform">
                    <div class="form-group">
                        <textarea class="form-control" name="comment"></textarea>
                    </div>
                    <button type="button" class="btn btn-dark btn-block" id="submit_btn" onclick="send()">전송</button>
                </form>
            </div>
        </div>
        
        
        <div class="row justify-content-center mt-5">
            <div class="col-12">
                 <button type="button" class="btn btn-primary btn-block" id="show_btn" onclick="show()">댓글 목록 보여주기!</button>
            </div>
        </div>




    </div>


    <script>
    
        function send(){
            $.ajax({
                type : 'POST',
                url : '/mokaim/comments',
                data : $("#testform").serialize(),
                dataType : 'json',
                success : function(data) {
                   show();
                }
            })
        }
        

        
        function show(){
 	
        	var html = [];

            $.getJSON(
                '/mokaim/show' + '.json',
                
                function(data){

					for(i=0; i<data.length; i++){
	                    html.push("<li>" + "<div class='row comments mb-3'>" + "<div class='col-1 usr-img'>");
	                    html.push( "<img class='rounded-circle' src='http://nicesnippets.com/demo/man02.png'>" + "</div>" + "<div class='col-11 comment text-white'>");
	                    html.push("<h4 class='d-inline-flex p-2'>" + data[i].usr_id + "</h4>" +
	                        "<time>" + data[i].reg_date + "</time>" +
	                        "<p>"+ data[i].comments_content + "</p>" + "</div>" + "</div>" + "</li>");


					}
                	
                    $('#target').html(html.join(''));
                }
            ).fail(function(xhr, status, err){
            	if(error){
            		error();
            	}
            })
        }
        

        
    </script>


</body>
</html>