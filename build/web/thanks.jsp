<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanks</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <!-- Logo HCMUTE / Murach -->
    <img src="images/murach_logo.png" alt="HCMUTE Logo" class="logo">

    <h1>Thanks for joining our list</h1>
    <p>Here is the information that you entered:</p>

    <!-- Khối thông tin kết quả -->
    <div style="margin-top: 15px;">
        <p><label style="width: 13em; font-weight: normal;">First Name:</label> <span>${user.firstName}</span></p>
        <p><label style="width: 13em; font-weight: normal;">Last Name:</label> <span>${user.lastName}</span></p>
        <p><label style="width: 13em; font-weight: normal;">Email:</label> <span>${user.email}</span></p>
        <p><label style="width: 13em; font-weight: normal;">Date of Birth:</label> <span>${user.dateOfBirth}</span></p>
        <p><label style="width: 13em; font-weight: normal;">How did you hear about us:</label> <span>${user.hearFrom}</span></p>
        <p><label style="width: 13em; font-weight: normal;">Wants updates:</label> <span>${user.wantsUpdates}</span></p>
        <p><label style="width: 13em; font-weight: normal;">Email announcements:</label> <span>${user.emailAnnouncements}</span></p>
        <p><label style="width: 13em; font-weight: normal;">Contact via:</label> <span>${user.contactVia}</span></p>
    </div>

    <!-- Nút Return quay trở lại trang khảo sát -->
    <form action="index.html" method="get" style="margin-top: 25px;">
        <input type="submit" value="Return">
    </form>
</body>
</html>