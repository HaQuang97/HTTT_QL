@extends('Layouts.masterAdmin')
@section('content')
    @include('Shared.navigationBar')
    <h2>Quản Lý Sách</h2>

    <p>
        <a href="{{route('book.create')}}">Thêm mới</a>
    </p>
    <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr class="bg-primary">
            <th>
                ID
            </th>
            <th>
                ID Loại Sách
            </th>
            <th>
                Mã Sách
            </th>
            <th>
                Mô Tả Sách
            </th>
            <th>
                Ảnh Đại Diện
            </th>
            <th>
                Tên Sách
            </th>
            <th>
                Giá
            </th>
            <th>
                ID Nhà Xuất Bản
            </th>
            <th>Thao Tác</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($books as $book)
            <tr>
                <td>
                    {{$book->id}}
                </td>
                <td>
                    {{$book->category_id}}
                </td>
                <td>
                    {{$book->code}}
                </td>
                <td>
                    {{$book->description}}
                </td>
                <td>
                    {{$book->image}}
                </td>
                <td>
                    {{$book->name}}
                </td>
                <td>
                    {{$book->price}}
                </td>
                <td>
                    {{$book->supplier_id}}
                </td>
                <td>
                    <a href="{{route('book.edit',['id'=>$book->id])}}" class="btn-warning">Sửa</a>
                    <br><br>
                    <a href="{{route('book.delete', ['id' => $book->id])}}" class="btn-danger">Xóa</a>
                </td>
            </tr>
        @endforeach
        </tbody>

    </table>

    @include('Shared.footer')
@endsection
