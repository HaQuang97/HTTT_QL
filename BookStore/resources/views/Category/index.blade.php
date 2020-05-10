@extends('Layouts.masterAdmin')
@section('content')
    @include('Shared.navigationBar')
    <h2>Quản Lý Thể Loại Sách</h2>

    <p>
        <a href="{{route('category.create')}}">Thêm Mới</a>
    </p>
    <table class="table">
        <thead>
        <tr>
            <th>
                Mã Loại Sách
            </th>
            <th>
                Tên Loại Sách
            </th>
            <th>Thao Tác</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($categories as $category)
            <tr>
                <td>
                    {{$category->code}}
                </td>
                <td>
                    {{$category->name}}
                </td>
                <td>
                    <a href="{{route('category.edit', ['id' => $category->id])}}" class="btn-warning">Sửa</a><br><br>
                    <a href="{{route('category.delete',['id' => $category->id] )}}" class="btn-danger">Xóa</a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    @include('Shared.footer')
@endsection
