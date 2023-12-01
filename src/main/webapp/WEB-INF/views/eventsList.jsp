<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
            integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- TAILWIN CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: "#2dc275",
                        "primary-high": "#23a864",
                        "primary-low": "#c0edd6",
                    },
                },
            },
        };
    </script>
    <style type="text/tailwindcss">
        @layer base {
            :root {
                --header-height: 76px;
                --sidebar-width: 270px;
                --tw-ring-shadow: #fff;
                --tw-ring-color: #fff;
                /* ... */
            }
        }
    </style>
</head>
<body>
<div class="App bg-[#f5f7fc]">
    <!-- Fixed Header -->
    <header
            class="header flex justify-between top-0 fixed h-[--header-height] w-[100%] bg-white shadow px-[32px] z-50"
    >
        <!-- Left -->
        <div class="header-left flex items-center">
            <!-- Logo -->
            <a href="#" class="header-logo mr-[32px]">
                <img
                        src="./assets/img/Ticketbox-Logo.png"
                        alt="Logo"
                        class="h-[44px]"
                />
            </a>

            <!-- Search -->
            <div
                    class="wrapper py-[10px] px-[12px] bg-[#f5f7fc] rounded-[4px] border border-color-transparent caret-primary hover:border-[#afb8c9] focus:border-[#afb8c9] md:w-[372px]"
            >
                <div class="header-search flex items-center">
                    <svg width="24" height="24" fill="none" class="search-icon">
                        <path
                                d="M11 17a6 6 0 100-12 6 6 0 000 12zM18.5 18.5l-3-3"
                                stroke="#2A2D34"
                                stroke-width="2"
                                stroke-miterlimit="10"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                        ></path>
                    </svg>
                    <input
                            type="text"
                            value=""
                            class="bg-transparent outline-none w-[100%] ml-2"
                            placeholder="Search"
                    />
                </div>
            </div>
        </div>

        <!-- Right -->
        <div class="header-right flex items-center">
            <!-- Button -->
            <div class="header-right-btn">
                <button
                        class="bg-transparent text-primary border-2 border-primary mx-2 px-[24px] h-[40px] font-semibold rounded-[20px] hover:text-primary-high hover:border-primary-high"
                >
                    Create Event
                </button>
            </div>

            <!-- Ticket Icon -->
            <div class="header-right-icon mx-3">
                <svg width="24" height="24" fill="none">
                    <path
                            d="M19.758 12a2.91 2.91 0 011.928-2.74c.52-.186.98-.617.98-1.17V5.243a1 1 0 00-1-1H2.334a1 1 0 00-1 1v2.849c0 .552.461.983.981 1.17a2.91 2.91 0 010 5.478c-.52.187-.98.618-.98 1.17v2.848a1 1 0 001 1h19.333a1 1 0 001-1V15.91c0-.552-.461-.983-.981-1.17A2.91 2.91 0 0119.758 12z"
                            stroke="#828BA0"
                            stroke-width="2"
                            stroke-miterlimit="10"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                    ></path>
                    <path
                            d="M8.121 10.06h7.758M8.121 13.94h7.758"
                            stroke="#828BA0"
                            stroke-miterlimit="10"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                    ></path>
                </svg>
            </div>

            <!-- Log in / Sing up -->
            <div class="header-right-log mr-[16px] dropdown" >
                <%--                    <a href="/login" class="px-2">${user1.userName}</a>--%>
                <div class="max-w-lg mx-auto">

                    <button class="text-white bg-green-500 hover:bg-green-300 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2.5 text-center inline-flex items-center" type="button" data-dropdown-toggle="dropdown">${user1.fullName}<svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg></button>

                    <!-- Dropdown menu -->
                    <div class="hidden bg-white text-base z-50 list-none divide-y divide-gray-100 rounded shadow my-4" id="dropdown">
                        <div class="px-4 py-3">
                            <span class="block text-sm">${user1.fullName}</span>
                            <span class="block text-sm font-medium text-gray-900 truncate">${user1.userName}</span>
                        </div>
                        <ul class="py-1" aria-labelledby="dropdown">
                            <li>
                                <a href="/profile/${user1.userId}" class="text-sm hover:bg-gray-100 text-gray-700 block px-4 py-2">Profile</a>
                            </li>
                            </li>
                            <li>
                                <a href="/login" class="text-sm hover:bg-gray-100 text-gray-700 block px-4 py-2">Sign out</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <script src="https://unpkg.com/@themesberg/flowbite@latest/dist/flowbite.bundle.js"></script>

            </div>

            <!-- Language -->
            <div
                    class="header-right-language border-l h-[44px] flex items-center"
            >
                <div class="flex ml-2 p-2 cursor-pointer">
                    <img
                            src="./assets/img/English_Language.svg"
                            alt="English_Language"
                            class="w-[24px] ml-2"
                    />
                    <img
                            src="./assets/img/caret-down.svg"
                            alt="caret-down"
                            class="w-[8px] ml-2"
                    />
                </div>
            </div>
        </div>
    </header>

    <!-- Side bar -->
    <aside
            class="w-[--sidebar-width] h-[calc(100vh-var(--header-height))] block fixed top-[78px] bg-[#f5f7fc] divide-y hover:overflow-auto"
    >
        <!-- Genres -->
        <div class="genres py-[16px]">
            <ul>
                <!-- Active -->
                <li
                        class="genre-item text-[14px] pl-[16px] leading-5 bg-white font-bold"
                >
                    <a href="#" class="flex items-center py-1 px-2">
                        <div class="genre-icon">
                            <img
                                    src="./assets/img/Genres/Home.png"
                                    class="w-[24px] h-[24px]"
                                    alt="Home"
                            />
                        </div>
                        <span class="genre-title ml-2">Home</span>
                    </a>
                </li>
                <!-- Non Actives -->
                <li
                        class="genre-item text-[14px] pl-[16px] leading-5 hover:bg-white"
                >
                    <a href="#" class="flex items-center py-1 px-2">
                        <div class="genre-icon">
                            <img
                                    src="./assets/img/Genres/Guitar.png"
                                    class="w-[24px] h-[24px]"
                                    alt="Home"
                            />
                        </div>
                        <span class="genre-title ml-2">Live music</span>
                    </a>
                </li>
                <li
                        class="genre-item text-[14px] pl-[16px] leading-5 hover:bg-white"
                >
                    <a href="#" class="flex items-center py-1 px-2">
                        <div class="genre-icon">
                            <img
                                    src="./assets/img/Genres/Cocktail.png"
                                    class="w-[24px] h-[24px]"
                                    alt="Home"
                            />
                        </div>
                        <span class="genre-title ml-2">Nightlife</span>
                    </a>
                </li>
                <li
                        class="genre-item text-[14px] pl-[16px] leading-5 hover:bg-white"
                >
                    <a href="#" class="flex items-center py-1 px-2">
                        <div class="genre-icon">
                            <img
                                    src="./assets/img/Genres/ChillCoffee.png"
                                    class="w-[24px] h-[24px]"
                                    alt="Home"
                            />
                        </div>
                        <span class="genre-title ml-2">Community</span>
                    </a>
                </li>
                <li
                        class="genre-item text-[14px] pl-[16px] leading-5 hover:bg-white"
                >
                    <a href="#" class="flex items-center py-1 px-2">
                        <div class="genre-icon">
                            <img
                                    src="./assets/img/Genres/Book.png"
                                    class="w-[24px] h-[24px]"
                                    alt="Home"
                            />
                        </div>
                        <span class="genre-title ml-2">Course</span>
                    </a>
                </li>
            </ul>
        </div>

        <!-- Contact links -->
        <div class="contacts">
            <ul class="">
                <!-- Contact items -->
                <li
                        class="contact-item text-[14px] pl-[16px] leading-5 hover:bg-white"
                >
                    <a href="#" class="flex items-center py-1 px-2 border-b">
                        <div class="contact-icon">
                            <img
                                    src="./assets/img/Contact/About.png"
                                    class="w-[24px] h-[24px]"
                                    alt="Home"
                            />
                        </div>
                        <span class="contact-title ml-2">About us</span>
                    </a>
                </li>
                <li
                        class="contact-item text-[14px] pl-[16px] leading-5 hover:bg-white"
                >
                    <a href="#" class="flex items-center py-1 px-2 border-b">
                        <div class="contact-icon">
                            <img
                                    src="./assets/img/Contact/Users.png"
                                    class="w-[24px] h-[24px]"
                                    alt="Home"
                            />
                        </div>
                        <span class="contact-title ml-2">For Organizer</span>
                    </a>
                </li>
                <li
                        class="contact-item text-[14px] pl-[16px] leading-5 hover:bg-white"
                >
                    <a href="#" class="flex items-center py-1 px-2 border-b">
                        <div class="contact-icon">
                            <img
                                    src="./assets/img/Contact/Question.png"
                                    class="w-[24px] h-[24px]"
                                    alt="Home"
                            />
                        </div>
                        <span class="contact-title ml-2">FAQ</span>
                    </a>
                </li>
            </ul>
        </div>
    </aside>

    <!-- Main Container -->
    <div
            class="main-container w-[calc(100%-var(--sidebar-width))] mt-[calc(var(--header-height))] ml-[calc(var(--sidebar-width))] pb-[24px] pt-[16px]"
    >
        <div class="main-content relative p-4 bg-[#FFFFFF] mx-[28px]">
            <!-- Carousel -->
            <div class="carousel">
                <div
                        id="indicators-carousel"
                        class="relative w-full flex justify-center"
                        data-carousel="static"
                >
                    <!-- Carousel items wrapper -->
                    <div
                            class="relative h-56 overflow-hidden rounded-lg md:h-[270px] md:w-[700px]"
                    >
                        <!-- Item 1 -->
                        <div
                                class="hidden duration-700 ease-in-out"
                                data-carousel-item="active"
                        >
                            <a href="#">
                                <img
                                        src="./assets/img/Carousel/Carousel_1.jpg"
                                        class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
                                        alt="..."
                                />
                            </a>
                        </div>
                        <!-- Item 2-->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <a href="#">
                                <img
                                        src="./assets/img/Carousel/Carousel_2.jpg"
                                        class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
                                        alt="..."
                                />
                            </a>
                        </div>
                        <!-- Item 3 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <a href="#">
                                <img
                                        src="./assets/img/Carousel/Carousel_3.jpg"
                                        class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
                                        alt="..."
                                />
                            </a>
                        </div>
                        <!-- Item 4 -->
                        <div class="hidden duration-700 ease-in-out" data-carousel-item>
                            <a href="#"
                            ><img
                                    src="./assets/img/Carousel/Carousel_4.jpg"
                                    class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
                                    alt="..."
                            /></a>
                        </div>
                    </div>

                    <!-- Slider indicators -->
                    <div
                            class="absolute z-30 flex space-x-3 -translate-x-1/2 bottom-5 left-1/2"
                    >
                        <button
                                type="button"
                                class="w-3 h-3 rounded-full"
                                aria-current="true"
                                aria-label="Slide 1"
                                data-carousel-slide-to="0"
                        ></button>
                        <button
                                type="button"
                                class="w-3 h-3 rounded-full"
                                aria-current="false"
                                aria-label="Slide 2"
                                data-carousel-slide-to="1"
                        ></button>
                        <button
                                type="button"
                                class="w-3 h-3 rounded-full"
                                aria-current="false"
                                aria-label="Slide 3"
                                data-carousel-slide-to="2"
                        ></button>
                        <button
                                type="button"
                                class="w-3 h-3 rounded-full"
                                aria-current="false"
                                aria-label="Slide 4"
                                data-carousel-slide-to="3"
                        ></button>
                    </div>

                    <!-- Slider controls left -->
                    <button
                            type="button"
                            class="absolute top-[50%] -translate-y-[50%] left-0 z-30 flex items-center justify-center px-4 cursor-pointer group focus:outline-none"
                            data-carousel-prev
                    >
                <span
                        class="inline-flex text-primary border-2 border-primary-low items-center justify-center w-12 h-12 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none"
                >
                  <svg
                          class="w-4 h-4 dark:text-gray-800"
                          aria-hidden="true"
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 6 10"
                  >
                    <path
                            stroke="currentColor"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="M5 1 1 5l4 4"
                    />
                  </svg>
                  <span class="sr-only">Previous</span>
                </span>
                    </button>

                    <!-- Slider controls right -->
                    <button
                            type="button"
                            class="absolute top-[50%] -translate-y-[50%] right-0 z-30 flex items-center justify-center px-4 cursor-pointer group focus:outline-none"
                            data-carousel-next
                    >
                <span
                        class="inline-flex text-primary border-2 border-primary-low items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none"
                >
                  <svg
                          class="w-4 h-4 dark:text-gray-800"
                          aria-hidden="true"
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 6 10"
                  >
                    <path
                            stroke="currentColor"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="m1 9 4-4-4-4"
                    />
                  </svg>
                  <span class="sr-only">Next</span>
                </span>
                    </button>
                </div>
            </div>

            <!-- Current Feature Event Img -->
            <div class="current-event flex justify-center">
                <!-- Wrapper -->
                <div
                        class="current-event-wrapper relative inline-flex justify-center items-end mt-10 pt-10 text-[32px] text-primary font-bold border-b-2 border-b-[#2a2d34] before:content-[''] before:block before:absolute before:h-[2px] before:w-[40px] before:-right-[48px] before:-bottom-[2px] before:rounded-[80px] before:bg-[#2a2d34] after:content-[''] after:block after:absolute after:h-[2px] after:w-[40px] after:-left-[48px] after:-bottom-[2px] after:rounded-[80px] after:bg-[#2a2d34]"
                >
                    <img
                            src="./assets/img/CurrentEventImg/heading-img-1-left.svg"
                            alt="some image on left"
                    />
                    <h2 class="mx-4">Featured events</h2>
                    <img
                            src="./assets/img/CurrentEventImg/heading-img-1-right.svg"
                            alt="some image on right"
                    />
                </div>
            </div>

            <!-- Products -->
            <div class="products grid grid-cols-4 mt-12 gap-x-4 gap-y-6">
                <!-- Product item -->
                <c:forEach var="event" items="${events}">
                    <div
                            class="product-item w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-100 dark:border-gray-300"
                    >
                        <a href="eventdetail/${event.pId}" class="product-link group">
                            <!-- Product img -->
                            <div class="product-img h-[120px] rounded-t-lg overflow-hidden">
                                <img
                                        class="rounded-t-lg h-[100%] object-cover ease-out duration-200 group-hover:scale-105"
                                        src=/${event.productimage }
                                        alt=${event.productName}
                                />
                            </div>
                            <!-- Product Description -->
                            <div class="px-2 pb-2">
                                <h5
                                        class="product-title font-semibold tracking-tight text-gray-900 dark:text-black"
                                >
                                        ${event.productName}
                                </h5>
                                <span class="product-date text-[14px]">${event.price} </span>
                                <div class="product-type text-[#828ba0]">${event.ngay}</div>
                            </div>
                        </a>
                    </div>
                </c:forEach>

                <!-- 1 Row -->
            </div>

            <!-- Line end content -->
            <div class="end-content my-10 h-[2px] bg-[#e6ebf5]"></div>
        </div>
    </div>
</div>

<!-- Script flow bite tailwin component -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
</body>
</html>
