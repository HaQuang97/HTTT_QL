@extends('Layouts.masterAdmin')
@section('content')
    @include('Shared.navigationBar')
    <h2><span class="glyphicon glyphicon glyphicon-shopping-cart"></span>Giỏ Hàng Của Bạn</h2>

    <table id="cart">

    </table>
    <div class="container">
        <?php $total = 0 ?>

        @if(session('cart'))
            @foreach(session('cart') as $id => $details)

                <?php $total += $details['price'] * $details['quantity'] ?>
                <div class="row" style="border-bottom: solid 1px #ccc; padding: 10px">
                    <div class="col-sm-12 col-lg-2" style="text-align:center">
                        <img src="{{ asset('images/'.$details['image']) }}" style="width: 120px" alt="image"/>
                    </div>

                    <div class="col-sm-12 col-lg-6">
                        <ul>
                            <li style="color: #0066C0; font-weight:bold">{{ $details['name'] }}</li>
                            <li style="color: #739900"><span class="glyphicon glyphicon-ok"></span> Còn Hàng</li>
                            <li>Đặt hàng <span style="font-weight: bold">ngay bây giờ</span> và sản phẩm sẽ được chuyển đi <span
                                    style="font-weight: bold">vào ngày mai</span>!
                            </li>
                            <li><a class="btn btn-warning remove-from-cart"
                                   data-id="{{ $id }}">
                                    Xóa Sản Phẩm
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-12 col-lg-2" style="text-align: right">
                        <a href="{{route('remove-from-cart', ['id' => $id])}}">
                    <span class="glyphicon glyphicon-minus-sign">

                    </span>
                        </a>
                        <span>{{ $details['quantity'] }}</span>
                        <a href="{{ route('add-to-cart', ['id' => $id]) }}">
                    <span class="glyphicon glyphicon-plus-sign">

                    </span>
                        </a>
                    </div>

                    <div class="col-sm-12 col-lg-2" style="text-align: right; color: #E84F05; font-weight: bold">
                        {{ $details['price'] * $details['quantity'] }} vnđ
                    </div>

                </div>
            @endforeach

            <div class="row" style="text-align:right">
                <div class="col-sm-12 col-lg-10" style="font-weight: bold">
                    <ul>
                        <li>Giá SP :</li>
                        <li>Thuế GTGT(15%) :</li>
                        <li>Tổng Tiền :</li>
                    </ul>
                    <a class="btn btn-danger" href="{{route('empty-cart')}}">
                        Giỏ Hàng Trống <span class="glyphicon glyphicon-step-forward"></span>
                    </a>
                </div>
                <div class="col-sm-12 col-lg-2">
                    <ul style="color: #E84F05; font-weight: bold">
                        <li>{{ $total }} vnđ</li>
                        <li>{{ $total * 0.15 }} vnđ</li>
                        <li>{{ $total + $total*0.15 }} vnđ</li>
                    </ul>
                    @if(Auth::check())
                        <a href="{{route('order.create')}}" class="btn btn-success">
                            Thanh Toán
                            <span class="glyphicon glyphicon-step-forward"></span>
                        </a>
                    @else
                        <a href="{{route('login')}}" class="btn btn-success">
                            Thanh Toán
                            <span class="glyphicon glyphicon-step-forward"></span>
                        </a>
                    @endif
                </div>
            </div>
        @endif
        @if(!session('cart'))
            <h3 style="text-align: center">Giỏ Hàng Của Bạn Đang Rỗng!</h3>
        @endif
    </div>
    <script type="text/javascript">
        $(".remove-from-cart").click(function (e) {
            e.preventDefault();

            var ele = $(this);


            $.ajax({
                url: '{{ url('remove-from-cart') }}',
                method: "DELETE",
                data: {_token: '{{ csrf_token() }}', id: ele.attr("data-id")},
                success: function (response) {
                    window.location.reload();
                }
            });

        });

    </script>
    @include('Shared.footer')
@endsection
