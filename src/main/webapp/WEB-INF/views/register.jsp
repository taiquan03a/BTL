<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./resources/css/login.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>Login</title>
</head>
<body>
<div class="sign-in-page">
    <div class="header-login">
        <div class="content-header-login">
            <div class="close-tag">
                <span  class="close" title="Close Modal">
                    <svg width="18" height="18" fill="none" class="sc-1pb1hf-2 hsrArN"><path d="M15 3L3 15M3 3l12 12" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path></svg>
                </span>
            </div>
            <div class="white-space"></div>
            <div class="bot-header">
                <a class="logo-white">
                    <svg width="40" height="40" fill="none" class="sc-1pb1hf-8 eiAVKX"><path d="M0 7c0-3.85 3.15-7 7-7h26c3.85 0 7 3.15 7 7v26c0 3.85-3.15 7-7 7H7c-3.85 0-7-3.15-7-7V7z" fill="#fff"></path><path d="M22.137 18.08l-2.082-2.673L22 14.127c.001 0 .002 0 .003-.002a.572.572 0 00-.631-.954l-2.947 1.94v-3.535-.004a.572.572 0 00-1.143.004v6.858a.572.572 0 001.143-.004v-1.95l.672-.443 2.138 2.745a.572.572 0 10.903-.702zM33.91 26.028l1.67-2.038a.572.572 0 10-.886-.723l-.002.003-1.522 1.857-1.521-1.857s0-.002-.002-.003a.572.572 0 00-.886.723l1.67 2.038-1.67 2.038a.571.571 0 10.886.722l.002-.002 1.521-1.857 1.522 1.857s0 .002.002.002a.572.572 0 00.886-.722l-1.67-2.038zM27.1 23.053A2.974 2.974 0 1027.118 29a2.974 2.974 0 00-.018-5.948zm.012 4.801a1.828 1.828 0 11-.01-3.656 1.828 1.828 0 01.01 3.656zM20.246 23.05a2.96 2.96 0 00-1.822.63v-2.107-.004a.572.572 0 00-1.143.004v4.479a2.972 2.972 0 002.887 2.942.744.744 0 00.137 0 2.973 2.973 0 00-.059-5.944zm.012 4.801a1.828 1.828 0 11-.01-3.655 1.828 1.828 0 01.01 3.655zM10.325 11.687a.572.572 0 10-1.12-.235.572.572 0 001.12.235zM10.342 13.629a.572.572 0 00-1.143.003V18.434a.572.572 0 001.143-.003v-4.799-.003zM14.203 17.858a1.829 1.829 0 01-.211-3.644c.55-.06 1.06.125 1.43.46a.553.553 0 00.686.05l.012-.008a.571.571 0 00.07-.894 2.97 2.97 0 00-2.16-.76 2.985 2.985 0 00-2.798 2.766 2.975 2.975 0 004.958 2.41.572.572 0 00-.069-.892.576.576 0 00-.709.048c-.32.288-.744.463-1.21.464zM28.727 16.096a2.984 2.984 0 00-2.786-3.034 2.974 2.974 0 00-3.153 3.17 2.986 2.986 0 002.875 2.77 2.96 2.96 0 001.58-.397.574.574 0 10-.577-.992 1.827 1.827 0 01-2.586-.847h3.953a.692.692 0 00.694-.67zm-4.755-.473a1.827 1.827 0 013.56 0h-3.56zM7.722 17.858H7.15a.572.572 0 01-.572-.57v-3.089h.572a.572.572 0 000-1.143h-.572v-1.483a.572.572 0 00-1.143 0v1.483h-.572a.572.572 0 000 1.143h.572v3.087c0 .945.77 1.712 1.715 1.712h.573a.57.57 0 000-1.14zM32.435 17.858h-.574a.572.572 0 01-.572-.57v-3.089h.572a.572.572 0 000-1.143h-.572v-1.483a.572.572 0 00-1.143 0v1.483h-.572a.572.572 0 000 1.143h.572v3.087c0 .945.77 1.712 1.715 1.712h.574a.57.57 0 000-1.14z" fill="#2DC275"></path></svg>
                </a>
                <span class="sosip">Xin chào!</span>
                <a class="cute-dog">
                    <svg width="80" height="64" fill="none" class="sc-1pb1hf-9 fCcDFu"><path d="M75.538 76.358s-.678-12.34-9.182-25.508H21.221L21 57.5" fill="#FFD530"></path><path d="M75.538 76.358s-.678-12.34-9.182-25.508H21.221L21 57.5" stroke="#2A2D34" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M23.903 49.471S18.77 29.948 10.172 28.843C1.168 27.683-.855 42.697 20 61" fill="#FFD530"></path><path d="M23.903 49.471S18.77 29.948 10.172 28.843C1.168 27.683-.855 42.697 20 61" stroke="#2A2D34" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M66.071 56.529s2.975 7.218 2.972 14.13c-.004 9.717-2.827 13.444-4.248 17.078 0 0-.005 7.487-1.293 10.553-1.29 3.067-11.386 3.006-14.123 1.01-3.446-2.51-4.592-10.926-4.592-10.926H42.475s-.858 8.413-4.307 10.922c-2.74 1.991-13.04 2.043-14.326-1.026-1.286-3.069-.895-10.556-.895-10.556-1.417-3.636-4.416-7.365-4.411-17.085.004-6.909 2.987-14.125 2.987-14.125" fill="#FFD530"></path><path d="M66.071 56.529s2.975 7.218 2.972 14.13c-.004 9.717-2.827 13.444-4.248 17.078 0 0-.005 7.487-1.293 10.553-1.29 3.067-11.386 3.006-14.123 1.01-3.446-2.51-4.592-10.926-4.592-10.926H42.475s-.858 8.413-4.307 10.922c-2.74 1.991-13.04 2.043-14.326-1.026-1.286-3.069-.895-10.556-.895-10.556-1.417-3.636-4.416-7.365-4.411-17.085.004-6.909 2.987-14.125 2.987-14.125" stroke="#2A2D34" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M43.788 82.767c8.075 0 14.62-8.33 14.62-18.604S51.863 45.56 43.788 45.56c-8.074 0-14.62 8.33-14.62 18.604 0 10.275 6.546 18.604 14.62 18.604z" fill="#fff"></path><path d="M43.79 55.001C31.1 55.008 23.92 52.19 21.224 50.85v-3.123c2.477 1.188 10.662 4.526 22.568 4.52 11.905.006 20.088-3.332 22.567-4.52v3.123C63.662 52.19 56.48 55.008 43.791 55z" fill="#2DC275"></path><path d="M43.79 55.001C31.1 55.008 23.92 52.19 21.224 50.85v-3.123c2.477 1.188 10.662 4.526 22.568 4.52 11.905.006 20.088-3.332 22.567-4.52v3.123C63.662 52.19 56.48 55.008 43.791 55" stroke="#2A2D34" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M46.44 58.62l-1.41 1.41a1.753 1.753 0 01-2.48 0l-1.41-1.41a1.753 1.753 0 010-2.48l1.41-1.41a1.753 1.753 0 012.48 0l1.41 1.41a1.753 1.753 0 010 2.48z" fill="#FFD530" stroke="#2A2D34" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M73.766 18.37C67.816 3.143 52.322 1.495 43.87 1.48h-.162c-8.453.015-23.945 1.663-29.898 16.89-7.636 19.537 7.512 29.359 7.512 29.359a54.56 54.56 0 0022.466 4.52A54.692 54.692 0 0056.125 51a54.642 54.642 0 0010.13-3.272s15.148-9.822 7.511-29.359z" fill="#fff"></path><path d="M43.789 10.268c7.625 0 4.25 7.74 5.064 11.777.816 4.036 2.954 2.384 13.241.702 9.804-1.604 12.719 11.666 12.972 12.74 1.331-4.482 1.492-10.186-1.218-17.117C67.859 3.045 52.202 1.475 43.788 1.48c-8.413-.005-24.07 1.565-30.059 16.89-2.71 6.929-2.549 12.635-1.218 17.117.253-1.071 3.169-14.342 12.972-12.74 10.287 1.684 12.427 3.334 13.241-.702.816-4.037-2.56-11.777 5.065-11.777z" fill="#FFD530"></path><path d="M33.183 27.523s2.366 1.627 4.77.549c2.405-1.078 3.35-1.953 5.835-1.953 2.489.003 3.433.875 5.838 1.955 2.405 1.078 4.77-.547 4.77-.547" stroke="#2A2D34" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M46.697 22.845l.034-.039c.795-.904.352-2.312-.816-2.612-.741-.192-1.543-.246-2.129-.249-.583 0-1.387.055-2.129.247-1.168.3-1.613 1.706-.818 2.61l.034.04c1.55 1.736 4.278 1.738 5.824.003z" fill="#2DC275" stroke="#2A2D34" stroke-miterlimit="10"></path><path d="M32.41 19.945a.525.525 0 00-.506.651 2.804 2.804 0 005.456 0 .525.525 0 00-.507-.65H32.41zM55.17 19.945c.339 0 .585.321.506.651a2.804 2.804 0 01-5.456 0 .525.525 0 01.507-.65h4.443z" fill="#2A2D34"></path><path d="M66.336 47.729c-2.477 1.189-10.644 4.526-22.55 4.52-11.905-.007-20.07-3.33-22.547-4.52 0 0-15.148-9.822-7.512-29.359C19.718 3.045 35.375 1.475 43.789 1.48c8.413-.005 24.07 1.565 30.059 16.89 7.639 19.537-7.512 29.359-7.512 29.359z" stroke="#2A2D34" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M24.72 5.986s-4.64-2.066-7.983 1.1c-3.342 3.166-2.61 6.753-2.11 7.74.971 1.915 6.716 5.386 9.073 3.696 2.622-1.878.755-9.386.755-9.386" fill="#FFD530"></path><path d="M24.72 5.986s-4.64-2.066-7.983 1.1c-3.342 3.166-2.61 6.753-2.11 7.74.971 1.915 6.716 5.386 9.073 3.696 2.622-1.878.755-9.386.755-9.386" stroke="#2A2D34" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M62.858 5.986s4.64-2.066 7.982 1.1c3.342 3.166 2.61 6.753 2.11 7.74-.971 1.915-6.716 5.386-9.073 3.696-2.621-1.878-.755-9.386-.755-9.386" fill="#FFD530"></path><path d="M62.858 5.986s4.64-2.066 7.982 1.1c3.342 3.166 2.61 6.753 2.11 7.74-.971 1.915-6.716 5.386-9.073 3.696-2.621-1.878-.755-9.386-.755-9.386" stroke="#2A2D34" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path></svg>
                </a>
            </div>
        </div>
    </div>
    <form class="sign-in-form" action="/register" method="post">
        <span class="sosip">Fullname: </span>
        <div class="input-phone-number">
            <input
                    id="fullName"
                    name="fullName"
                    class="Input"
                    placeholder="Nhập tên ở đây"
                    type="text"
            >
        </div>
        <span class="sosip">Username: </span>
        <div class="input-phone-number">
            <input
                    id="userName"
                    name="userName"
                    class="Input"
                    placeholder="Nhập email ở đây"
                    type="text"
            >
        </div>
        <span class="sosip">Số điện thoại: </span>
        <div class="input-phone-number">
            <input
                    id="phong"
                    name="phone"
                    class="Input"
                    placeholder="Nhập số điện thoại ở đây"
                    type="text"
            >
        </div>
        <span class="sosip">Passwork: </span>
        <div class="input-phone-number">
            <input
                    id="pass" name="pass"
                    class="Input"
                    placeholder="Nhập passwork ở đây"
                    type="password"
            >
        </div>
        <div class="check-rule">
            <input type="checkbox" class="check" name="" id="">
            <p>
                Tôi đồng ý với <a href="https://ticketbox.vn/information-privacy-policy">Điều khoản sử dụng và mua vé</a> cho
                nguời có độ tuổi phù hợp
            </p>
        </div>
        <div class="bottom">
            <button type="submit" class="next-button">Tiếp tục</button>
        </div>
        <%
            if(request.getAttribute("loginResult") != null && request.getAttribute("loginResult") == "false"){
        %>
        <p style="color:red"> Login Failed. Please try again. </p>
        <%
            }
        %>
    </form>

</div>
</body>
</html>
