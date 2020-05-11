@extends('Layouts.master')
@section('content')
    @include('Shared.navigationBar')
    <style>
        .title{
            font-weight: bold;
        }
    </style>
    <div class="container" style="margin-top: 65px">
     <div class="col-md-6">
        <img class="img-responsive" src="{{'images\ourhistoryB.jpg'}}" alt="history" />
    </div>
        <div class="col-lg-5">

            <h3>CỬA HÀNG SÁCH UY TÍN NHẤT TẠI HÀ NỘI</h3>

            <p align="justify">
                Hiệu sách với nhiều loại sách, đa dạng phong phú về thể loại và nội dung
            </p>

            <p align="justify">Bây giờ, chúng tôi xây dựng dựa trên thế mạnh thương hiệu của mình với tầm nhìn:</p>
            <h2>“Trở thành của hàng sách lớn nhất Hà Nội”</h2>
            <p align="justify">
                Sách chất lượng đã đạt được danh tiếng ở Quốc gia về chất lượng cao và dịch vụ . Chúng tôi yêu sách. Hai lần cửa hàng của chúng tôi đã được lọt vào top 100 cửa hàng uy tín tại Hà Nội
            </p>
            <br>
            <br>
                <ul>
                <li>
                    <h3 class="title">Liên Hệ :</h3>
                </li>
                <li>
                    <p class="col-lg-3 title">Cửa Hàng :</p>
                    <p class="col-lg-8">Km 10, Đường Nguyễn Trãi, Quận Hà Đông, Thành Phố Hà Nội</p>
                </li>
                <li>
                    <p class="col-lg-3 title">SĐT :</p>
                    <p class="col-lg-8">(+84) 123 456 789</p>
                </li>
                <li>
                    <p class="col-lg-3 title">Email :</p>
                    <p class="col-lg-8">d16ptit@htttql.com</p>
                </li>
            </ul>
        </div>
    </div>
    @include('Shared.footer')
@endsection
