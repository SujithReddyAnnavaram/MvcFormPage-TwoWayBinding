<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .form-container {
            background: white;
            border-radius: 12px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            padding: 40px;
            width: 100%;
            max-width: 500px;
        }

        .form-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .form-header h1 {
            color: #333;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .form-header p {
            color: #666;
            font-size: 14px;
        }

        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            display: block;
            color: #333;
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 14px;
        }

        .form-group label .required {
            color: #e74c3c;
            margin-left: 3px;
        }

        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e0e0e0;
            border-radius: 6px;
            font-size: 15px;
            transition: all 0.3s ease;
            font-family: inherit;
        }

        .form-control:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }

        .form-control:hover {
            border-color: #b0b0b0;
        }

        .error-message {
            color: #e74c3c;
            font-size: 12px;
            margin-top: 5px;
            display: none;
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 10px;
        }

        .submit-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(102, 126, 234, 0.3);
        }

        .submit-btn:active {
            transform: translateY(0);
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
            color: #666;
            font-size: 13px;
        }

        @media (max-width: 576px) {
            .form-container {
                padding: 30px 20px;
            }

            .form-header h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <div class="form-header">
            <h1>Registration Form</h1>
            <p>Please fill in your details to register</p>
        </div>

        <form:form action="/DoubleBi/Registration" method="POST" modelAttribute="data">
            
            <div class="form-group">
                <label for="name">
                    Full Name
                    <span class="required">*</span>
                </label>
                <form:input path="name" id="name" cssClass="form-control" 
                           placeholder="Enter your full name" required="required"/>
                <form:errors path="name" cssClass="error-message"/>
            </div>

            <div class="form-group">
                <label for="id">
                    ID Number
                    <span class="required">*</span>
                </label>
                <form:input path="id" id="id" type="number" cssClass="form-control" 
                           placeholder="Enter your ID number" required="required"/>
                <form:errors path="id" cssClass="error-message"/>
            </div>

            <div class="form-group">
                <label for="vill">
                    Village
                    <span class="required">*</span>
                </label>
                <form:input path="vill" id="vill" cssClass="form-control" 
                           placeholder="Enter your village name" required="required"/>
                <form:errors path="vill" cssClass="error-message"/>
            </div>

            <button type="submit" class="submit-btn">
                Submit Registration
            </button>

            <div class="form-footer">
                All fields marked with <span style="color: #e74c3c;">*</span> are required
            </div>

        </form:form>
    </div>
</body>
</html>