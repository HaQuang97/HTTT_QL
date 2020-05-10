<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{route('bt.index')}}">
{{--                <img style="max-height:25px" src="{{asset('images\bookstore_logo.png')}}" alt="Book Store"/>--}}
                BOOKSTORE
            </a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="{{route('bt.index')}}">Trang Chủ</a></li>
                <li><a href="{{route('bt.indexDetail')}}">Bộ Sưu Tập</a></li>
                <li><a href="{{route('home.about')}}">Về Chúng Tôi</a></li>
                <li><a href="{{route('home.about')}}">Liên Hệ</a></li>
                @if(Auth::check() && (Auth::user()->admin == '1'))
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Admin
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="{{route('book.index')}}">Quản Lý Sách</a></li>
                            <li><a href="{{route('supplier.index')}}">Quản Lý Nhà Xuất Bản</a></li>
                            <li><a href="{{route('category.index')}}">Quản Lý Thể Loại Sách</a></li>
                            <li><a href="{{route('order.index')}}">Quản Lý Đơn Hàng</a></li>
                        </ul>
                    </li>

                @endif
            </ul>


            <ul class="nav navbar-nav navbar-right">
                @if(!Auth::check())
                    <li><a href="{{ route('register') }}">ĐĂNG KÍ</a></li>
                    <li><a href="{{ route('login') }}">ĐĂNG NHẬP</a></li>
                @else

                    <li><a class="dropdown-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                            Xin Chào -> {{Auth::user()->email}} => ĐĂNG XUẤT
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </li>
                @endif
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="{{route('shoppingCart.index')}}">
                        <span id="item_count">
                            <?php
                            $count = 0;
                            $cart = session()->get('cart');
                            if ($cart) {
                                $count = count($cart);
                            }
                            ?>
                            {{$count}}
                        </span>
                        <span class="glyphicon glyphicon-shopping-cart">

                        </span> Giỏ Hàng
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
