<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: white;
            border-radius: 12px;
            padding: 40px;
            width: 400px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .data-field {
            margin-bottom: 15px;
            font-size: 16px;
        }

        .label {
            font-weight: bold;
            color: #555;
        }

        .value {
            color: #222;
            margin-left: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Registration Successful ✅</h2>

    <div class="data-field">
        <span class="label">Name:</span>
        <span class="value">${data.name}</span>
    </div>

    <div class="data-field">
        <span class="label">ID:</span>
        <span class="value">${data.id}</span>
    </div>

    <div class="data-field">
        <span class="label">Village:</span>
        <span class="value">${data.vill}</span>
    </div>

</div>

</body>
</html>