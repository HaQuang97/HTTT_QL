@extends('Layouts.masterAdmin')
@section('content')
    @include('Shared.navigationBar')
    <h2>Quản Lý Đơn Hàng</h2>

    <table class="table">
        <thead>
        <tr>
            <th>
                Họ & Tên Đệm
            </th>
            <th>
                Tên
            </th>
            <th>
                Số Điện Thoại
            </th>
            <th>
                Địa Chỉ
            </th>
            <th>
                Ngày Đặt Hàng
            </th>
            <th>
                Trạng Thái
            </th>
        </tr>
        </thead>
        <tbody>
        @foreach($orders as $order)
            <tr>
                <td>
                    {{$order->firstName}}
                </td>
                <td>
                    {{$order->lastName}}
                </td>
                <td>
                    {{$order->phone}}
                </td>
                <td>
                    {{$order->address}}
                </td>
                <td>
                    {{$order->created_at}}
                </td>
                <td>
                    @if($order->status == 0)
                        <p class="btn-success">Đã giao hàng</p>
                    @else
                        <p class="btn-info">Đang giao hàng</p>
                    @endif
                </td>
                <td>
                    <a href="{{route('orderDetail.index',['id'=> $order->id])}}"
                       class="btn-primary">Chi Tiết</a>
                    <a href="{{route('order.update',['id'=>$order->id])}}" class="btn-warning">Sửa</a><br><br>
                    <a href="{{route('order.delete',['id' => $order->id])}}" class="btn-danger">Xóa</a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    @include('Shared.footer')
@endsection
