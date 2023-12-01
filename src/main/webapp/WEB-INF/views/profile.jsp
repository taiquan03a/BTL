<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/css/profile.css">
    <title>Document</title>
</head>
<body>
<div class="profile">
    <div class="space"></div>
    <div class="form-profile">
        <a href="#" class="close"><svg width="18" height="18" fill="none" class="sc-1pb1hf-2 hsrArN"><path d="M15 3L3 15M3 3l12 12" stroke="white" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path></svg></a>
        <div class="avatar">
            <div className="file-upload">
                <a href=""><svg width="48" height="48" fill="none" class="hrmnxt-2 halgkN"><path d="M47 24c0 12.703-10.297 23-23 23S1 36.703 1 24 11.297 1 24 1s23 10.297 23 23z" fill="#2DC275" stroke="#2DC275" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><g clip-path="url(#camera_svg__clip0)"><path fill-rule="evenodd" clip-rule="evenodd" d="M12.954 35.813h22.091c.651 0 1.276-.25 1.736-.692.46-.443.719-1.044.719-1.67V18.093c0-.627-.259-1.228-.72-1.67a2.504 2.504 0 00-1.735-.693H30.66a1 1 0 01-.822-.43l-1.858-2.683a1 1 0 00-.822-.43h-6.316a1 1 0 00-.822.43l-1.858 2.683a1 1 0 01-.822.43h-4.386c-.65 0-1.275.25-1.735.692a2.319 2.319 0 00-.72 1.67V33.45c0 .627.26 1.228.72 1.67.46.444 1.084.693 1.735.693zm16.108-10.125a5.063 5.063 0 11-10.125 0 5.063 5.063 0 0110.125 0z" fill="#fff"></path></g><defs><clipPath id="camera_svg__clip0"><path fill="#fff" d="M10.5 10.5h27v27h-27z"></path></clipPath></defs></svg></a>
                <!-- <input
                  className="input-profile"
                  type="file"
                  accept="image/*"
                > -->
            </div>
        </div>
    </div>

    <div class="user-name-profile">
        <span>Họ và tên: </span>
        <div class="name-input">
            <input
                    name="name"
                    class="input-profile phone"
                    value=""
                    placeholder="Vd: Nguyễn Văn A"
                    type="text"
                    maxLength="100"
            />
        </div>
    </div>

    <div class="phonenumber">
        <span>Số điện thoại: </span>
        <div class="phone-input">
            <input
                    name="phone-number"
                    class="input-profile phone"
                    value=""
                    placeholder="Vd: 0123456789"
                    type="text"
                    maxLength="10"
            />
        </div>
    </div>

    <div class="user-email">
        <span>Email nhận vé: </span>
        <div class="mail-input">
            <input
                    name="email"
                    class="input-profile mail"
                    value=""
                    placeholder="Vd: nguyenvana@gmail.com"
                    type="email"
                    maxLength="100"
                    required
            />
        </div>
    </div>

    <div class="user-birth">
        <span>Ngày tháng năm sinh: </span>
        <div class="name-input">
            <input
                    name="name"
                    class="input-profile phone"
                    value=""
                    placeholder="01/01/2000"
                    type="text"
                    maxLength="100"
            />
        </div>
    </div>

    <div class="user-sex">
        <span for="sexs">Giới tính: </span>
        <select id="sexs" class="wrap-radio" style="width: 100px;">
            <option value="nam">Nam</option>
            <option value="nu">Nữ</option>
        </select>
    </div>
    <div class="bottom">
        <Button
                type="submit"
                class="next-button"
        >
            Hoàn thành
        </Button>
    </div>
</div>
</div>
</body>
</html>