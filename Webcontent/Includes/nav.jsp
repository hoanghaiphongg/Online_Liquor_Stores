<div class=hd>
<header class="header">
            <div class="grid wide">
                <nav class="header__navbar hide-on-mobile-tablet">
                    <ul class="header__navbar-list">
                        <li class="header__navbar-item">
                            <a href="index.jsp"
                                class="header__navbar-item-link header__navbar-item--separate">Home</a>
                        </li>
                        <li class="header__navbar-item">
                            <a href="cart.jsp"
                                class="header__navbar-item-link header__navbar-item--separate">Customer</a>
                        </li>
                       
                        <li class="header__navbar-item">
                            <a href="order.jsp"
                                class="header__navbar-item-link header__navbar-item--separate">Order</a>
                        </li>
                        <li class="header__navbar-item header__navbar-item--has-qr header__navbar-item--separate">
                            Download App

                            <!-- Header QR Code -->
                            <div class="header__qr">
                                <img class="header__qr-img" src="./assets/img/qr_code.png" alt="QR code">
                                <div class="header__qr-apps">
                                    <a href="" class="header__qr-link">
                                        <img src="./assets/img/googleplay.png" alt="Google Play"
                                            class="header__qr-download-img">
                                    </a>
                                    <a href="" class="header__qr-link">
                                        <img src="./assets/img/appstore.png" alt="Appstore"
                                            class="header__qr-download-img">
                                    </a>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <ul class="header__navbar-list">
                        <li class="header__navbar-item header__navbar-item--has-notify">
                            <a href="#" class="header__navbar-item-link">
                                <i class="header__navbar-icon far fa-bell"></i>
                                Notification
                            </a>

                            <!-- Header Notification  -->
                            <div class="header__notify">
                                <header class="header__notify-header">
                                    <h3>Lastest</h3>
                                </header>
                                <ul class="header__notify-list">
                                    <li class="header__notify-item header__notify-item--viewed">
                                        <a href="" class="header__notify-link">
                                            <img src="https://www.vietskin.vn/wp-content/uploads/2020/08/image-skincare-9.jpg"
                                                alt="" class="header__notify-img">
                                            <div class="header__notify-info">
                                                <span class="header__notify-name">not1</span>
                                                <span class="header__notify-description">not2</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="header__notify-item">
                                        <a href="" class="header__notify-link">
                                            <img src="https://luanvanviet.com/wp-content/uploads/2020/08/hinh-anh-san-pham-la-gi-4.jpg"
                                                alt="" class="header__notify-img">
                                            <div class="header__notify-info">
                                                <span class="header__notify-name">not3</span>
                                                <span class="header__notify-description">not4</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="header__notify-item">
                                        <a href="" class="header__notify-link">
                                            <img src="http://d20aeo683mqd6t.cloudfront.net/vi/articles/title_images/000/040/760/medium/Hadalabo-5822.jpg?2021"
                                                alt="" class="header__notify-img">
                                            <div class="header__notify-info">
                                                <span class="header__notify-name">not5</span>
                                                <span class="header__notify-description">not 6</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="header__notify-item">
                                        <a href="" class="header__notify-link">
                                            <img src="https://www.thmilk.vn/wp-content/uploads/2021/03/RICE_464x297.jpg"
                                                alt="" class="header__notify-img">
                                            <div class="header__notify-info">
                                                <span class="header__notify-name">not7</span>
                                                <span class="header__notify-description">not8</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <footer class="header__notify-footer">
                                    <a href="#" class="header__notify-footer-btn">
                                        See all
                                    </a>
                                </footer>
                            </div>
                        </li>
                        <li class="header__navbar-item">
                            <a href="#" class="header__navbar-item-link">
                                <i class="header__navbar-icon far fa-circle-question"></i>
                                Help
                            </a>
                        </li>
                        <!-- <li class="header__navbar-item header__navbar-item--bold header__navbar-item--separate">
                            Đăng ký
                        </li>
                        <li class="header__navbar-item header__navbar-item--bold">
                            Đăng nhập
                        </li> -->
                        <li class="header__navbar-item header__navbar-user">
                            <img src="https://i.pinimg.com/736x/13/2e/a7/132ea72d2bc3b85d90409c9e8f2d0f4a.jpg" alt=""
                                class="header__navbar-user-img">
                            <span class="header__navbar-user-name">Hoang Hai Phong </span>

                            <ul class="header__navbar-user-menu">
                                <li class="header__navbar-user-item">
                                    <a href="">My account</a>
                                </li>
                                <li class="header__navbar-user-item">
                                    <a href="">My address</a>
                                </li>
                                <li class="header__navbar-user-item">
                                    <a href="">Orders</a>
                                </li>
                                <li class="header__navbar-user-item header__navbar-user-item--separate">
                                    <a href="Selectrole.jsp">Logout</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>

                <!-- Header with search -->
                <div class="header-with-search">
                    <label for="mobile-search-checkbox" class="header__mobile-search">
                        <i class="header__mobile-search-icon fa-solid fa-magnifying-glass"></i>
                    </label>

                    <div class="header__logo hide-on-tablet">
                        <a href="./" class="header__logo-link">
                            
                        </a>
                    </div>

                    <input type="checkbox" hidden id="mobile-search-checkbox" class="mobile-search-checkbox">

                    <div class="header__search">
                        <div class="header__search-input-wrap">
                            <!-- Header search input -->
                            <input type="text" class="header__search-input" placeholder="Search">

                            <!-- History search box -->
                            <div class="header__search-history">
                                <h3 class="header__search-history-heading">Search History</h3>
                                <ul class="header__search-history-list">
                                    <li class="header__search-history-item">
                                        <a href="#">
                                            Wine1
                                            <img src="https://cf.shopee.vn/file/491389dce9eabc3510a3e8a21cc40ef7"
                                                alt="Sale">
                                        </a>
                                    </li>
                                    <li class="header__search-history-item">
                                        <a href="#">Wine2</a>
                                    </li>
                                    <li class="header__search-history-item">
                                        <a href="#">Wine3</a>
                                    </li>
                                    <li class="header__search-history-item">
                                        <a href="#">Wine4</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="header__search-select">
                            <span class="header__search-select-label">
                                In shop
                                <i class="header__search-select-icon fa-solid fa-angle-down"></i>
                            </span>

                            <!-- Search option box -->
                            <ul class="header__search-option">
                                <li class="header__search-option-item header__search-option-item--active">
                                    <span>In shop</span>
                                    <i class="fa-solid fa-check"></i>
                                </li>
                                <li class="header__search-option-item">
                                    <span>Out shop</span>
                                    <i class="fa-solid fa-check"></i>
                                </li>
                            </ul>
                        </div>
                        <button class="header__search-btn">
                            <i class="header__search-btn-icon fa-solid fa-magnifying-glass"></i>
                        </button>

                        <!-- Header search suggest -->
                        <ul class="header__search-suggest-list hide-on-mobile-tablet">
                            <li class="header__search-suggest-list-item">
                                <a href="gin.jsp" class="header__search-suggest-link">Gin</a>
                            </li>
                            <li class="header__search-suggest-list-item">
                                <a href="champange.jsp" class="header__search-suggest-link">Champange</a>
                            </li>
                            <li class="header__search-suggest-list-item">
                                <a href="vodka.jsp" class="header__search-suggest-link">Vodka</a>
                            </li>
                            <li class="header__search-suggest-list-item">
                                <a href="rum.jsp" class="header__search-suggest-link">Rum</a>
                            </li>
                            
                        </ul>
                    </div>

                    <!-- Cart layout -->
                    <div class="header__cart">
                        <div class="header__cart-wrap">
                            <i class="header__cart-icon fa-solid fa-cart-shopping"></i>

                            <span class="header__cart-notice">3</span>

                            <!-- No cart: header__cart-list--no-cart -->
                            <div class="header__cart-list">
                                <img src="./assets/img/no_cart.png" alt="No cart" class="header__cart-no-cart-img">
                                <span class="header__cart-no-cart-msg">Chưa có sản phẩm</span>

                                <h4 class="header__cart-heading">Added products</h4>
                                <ul class="header__cart-list-item">
                                    <!-- Cart item -->
                                    <li class="header__cart-item">
                                        <img src="https://runningwithmiles.boardingarea.com/wp-content/uploads/2015/02/Screen-Shot-2015-02-26-at-3.57.06-PM.png"
                                            alt="" class="header__cart-img">
                                        <div class="header__cart-item-info">
                                            <div class="header__cart-item-head">
                                                <h5 class="header__cart-item-name">Red Wine Spirito</h5>
                                                <div class="divheader__cart-item-price-wrap">
                                                    <span class="header__cart-item-price">$100</span>
                                                    <span class="header__cart-item-multiply">x</span>
                                                    <span class="header__cart-item-qnt">2</span>
                                                </div>
                                            </div>
                                            <div class="header__cart-item-body">
                                                <span class="header__cart-item-description">
                                                    Gin
                                                </span>
                                                <span class="header__cart-item-remove">
                                                    Delete
                                                </span>
                                            </div>
                                        </div>
                                    </li>

                                    <!-- Cart item -->
                                    <li class="header__cart-item">
                                        <img src="http://scontent.webpluscnd.net/photos-df/a-0/3764-2194538-1/laptop-asus-gaming-rog-strix-g-g731gth7114t.png?atk=4eb081075dd7d7faad048034c002a610"
                                            alt="" class="header__cart-img">
                                        <div class="header__cart-item-info">
                                            <div class="header__cart-item-head">
                                                <h5 class="header__cart-item-name">
                                                    
												Rose Wine VinoVerse </h5>
                                                <div class="divheader__cart-item-price-wrap">
                                                    <span class="header__cart-item-price">$75</span>
                                                    <span class="header__cart-item-multiply">x</span>
                                                    <span class="header__cart-item-qnt">1</span>
                                                </div>
                                            </div>
                                            <div class="header__cart-item-body">
                                                <span class="header__cart-item-description">
                                                    Gin
                                                </span>
                                                <span class="header__cart-item-remove">
                                                    Delete
                                                </span>
                                            </div>
                                        </div>
                                    </li>

                                    <!-- Cart item -->
                                    <li class="header__cart-item">
                                        <img src="data:image/jpeg;base64,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"
                                            alt="" class="header__cart-img">
                                        <div class="header__cart-item-info">
                                            <div class="header__cart-item-head">
                                                <h5 class="header__cart-item-name">
                                                    Champagne WineCraft
                                                </h5>
                                                <div class="divheader__cart-item-price-wrap">
                                                    <span class="header__cart-item-price">$180</span>
                                                    <span class="header__cart-item-multiply">x</span>
                                                    <span class="header__cart-item-qnt">1</span>
                                                </div>
                                            </div>
                                            <div class="header__cart-item-body">
                                                <span class="header__cart-item-description">
                                                    Gin
                                                </span>
                                                <span class="header__cart-item-remove">
                                                    Delete
                                                </span>
                                            </div>
                                        </div>
                                    </li>
                                </ul>

                                <a href="#" class="header__cart-view-cart btn btn--primary">Pay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <ul class="header__sort-bar">
                <li class="header__sort-item">
                    <a href="" class="header__sort-link">Related</a>
                </li>
                <li class="header__sort-item header__sort-item--active">
                    <a href="" class="header__sort-link">Latest</a>
                </li>
                <li class="header__sort-item">
                    <a href="" class="header__sort-link">Selling</a>
                </li>
                <li class="header__sort-item">
                    <a href="" class="header__sort-link">Price</a>
                </li>
            </ul>
        </header>
             </div>
 