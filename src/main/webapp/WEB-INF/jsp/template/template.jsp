<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Parcel and Luggage Tracking Online [PLUTO]</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrapValidator.min.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.marquee.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrapValidator.min.js"></script>
</head>
<body>
	<div class="container main-container">
		<tiles:insertAttribute name="header" />
		<div class="main">
			<div class="row marquee_div">
			</div>
			<div class="row version">
				<p>
					Website. [ver.17.07.05.01]<br>e.Request Sr.DDM
				</p>
			</div>
			<div class="row">
				<tiles:insertAttribute name="leftsidebar" />
				<tiles:insertAttribute name="center" />
				<tiles:insertAttribute name="rightsidebar" />
			</div>
		</div>
		<tiles:insertAttribute name="footer" />
	</div>
</body>
<script type="text/javascript">
	$('.marquee').marquee({
		allowCss3Support: true,
		easing: 'linear',
		speed: 50,
		gap: 100,
		direction: 'right',
		duplicated: true,
		pauseOnHover: true
	});
	$(document).ready(function() {
	    $('#railway_user').bootstrapValidator({
	        message: 'This value is not valid',
	        feedbackIcons: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	            userId: {
	                message: 'The User Id is not valid',
	                validators: {
	                    notEmpty: {
	                        message: 'The User Id is required and cannot be empty'
	                    },
	                    stringLength: {
	                        min: 3,
	                        max: 10,
	                        message: 'The User Id must be more than 3 and less than 10 characters long'
	                    },
	                    regexp: {
	                        regexp: /^[a-zA-Z0-9_]+$/,
	                        message: 'The User Id can only consist of alphabetical, number and underscore'
	                    }
	                }
	            },
	            password: {
	                message: 'The password is not valid',
	                validators: {
	                    notEmpty: {
	                        message: 'The password is required and cannot be empty'
	                    },
	                    stringLength: {
	                        min: 6,
	                        max: 20,
	                        message: 'The password must be more than 6 and less than 20 characters long'
	                    },
	                    regexp: {
	                        regexp: /^[a-zA-Z0-9_]+$/,
	                        message: 'The password can only consist of alphabetical, number and underscore'
	                    }
	                }
	            },
	            shift: {
	                validators: {
	                    notEmpty: {
	                        message: 'The shift is required'
	                    }
	                }
	            },
	            stationCode: {
	                validators: {
	                    notEmpty: {
	                        message: 'The Station Code is required and cannot be empty'
	                    }
	                }
	            },
	            privateCash: {
	                validators: {
	                    notEmpty: {
	                        message: 'The Station Code is required and cannot be empty'
	                    },
	                    integer: {
	                        message: 'The value is not an integer'
	                    }
	                }
	            },
	            runningStationaryNo: {
	                validators: {
	                    notEmpty: {
	                        message: 'The Running Stationary Number is required and cannot be empty'
	                    },
	                    integer: {
	                        message: 'The value is not an integer'
	                    }
	                }
	            },
	            bookingType: {
	                validators: {
	                    notEmpty: {
	                        message: 'The Booking Type is required'
	                    }
	                }
	            },
	            posTerm: {
	                validators: {
	                    notEmpty: {
	                        message: 'The POS Terms Id is required and cannot be empty'
	                    }
	                }
	            },
	            counterNumber: {
	                validators: {
	                    notEmpty: {
	                        message: 'The Counter Number is required and cannot be empty'
	                    },
	                    integer: {
	                        message: 'The value is not an integer'
	                    }
	                }
	            },
	        }
	    });
	});
</script>
</html>