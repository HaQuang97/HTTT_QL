@extends('Layouts.masterAdmin')
@section('content')
    @include('Shared.navigationBar')
    <h2>Sửa Thể Loại Sách</h2>

    <h4>Loại Sách</h4>
    <hr/>
    <div class="row">
        <div class="col-md-4">
            <form href="{{route('category.update', ['id' => $category->id])}}" method="post">
                <div class="form-group">
                    <label for="code" class="control-label">Mã Loại Sách</label>
                    <input
                        type="text"
                        id="code"
                        name="code"
                        value="{{$category['code']}}"
                        class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="name" class="control-label">Tên Loại Sách</label>
                    <input
                        type="text"
                        id="name"
                        name="name"
                        value="{{$category['name']}}"
                        class="form-control"/>
                </div>
                {{ csrf_field() }}
                <input type="hidden" id="id" name="id" value="{{$id}}">
                <div class="form-group">
                    <input type="submit" value="Lưu" class="btn btn-default"/>
                </div>
            </form>
        </div>
    </div>

    <div>
        <a href="{{route('category.index')}}">Trở Lại List</a>
    </div>
    @include('Shared.footer')
@endsection
