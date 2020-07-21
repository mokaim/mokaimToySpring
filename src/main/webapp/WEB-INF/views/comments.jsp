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

    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <div class="card mt-5">
                    <div class="card-body">

                        <div class="row justify-content-center">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-9 col-xl-9">
                                <div class="row justify-content-center">
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-9 col-xl-9 border">
                                        <ul class="p-0">
                                            <li>
                                                <div class="row comments mb-3">
                                                    <div class="col-1 usr-img border">
                                                        <img class="rounded-circle" src="http://nicesnippets.com/demo/man02.png">
                                                    </div>

                                                    <div class="col-11 comment text-white">
                                                        <h4 class="d-inline-flex p-2 border">test</h4>
                                                        <time class="">2020-07-21</time>

                                                        <p>hello world!</p>

                                                    </div>
                                                </div>
                                            </li>

                                            <ul class="p-0">
                                                <li>
                                                    <div class="row comments mb-3">
                                                        <div class="col-1 usr-img">
                                                            <img class="rounded-circle" src="http://nicesnippets.com/demo/man02.png">
                                                        </div>

                                                        <div class="col-8 test1 text-white">
                                                            <h4 class="d-inline-flex p-2 border">test</h4>
                                                            <time class="">2020-07-21</time>

                                                            <p>hello world!</p>

                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
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
                        <textarea class="form-control" name="story"></textarea>
                    </div>
                    <button type="button" class="btn btn-dark btn-block" id="submit_btn" onclick="send()">전송</button>
                </form>
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
                    alert(data.story);
                }
            })
        }
    </script>


</body>
</html>