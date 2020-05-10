@extends('Layouts.masterAdmin')
@section('content')
    @include('Shared.navigationBar')
    <h2>Thêm mới sách</h2>

    <h4>Sách</h4>
    <hr/>
    <div class="row">
        <div class="col-md-4">
            <form action="{{route('book.create')}}" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="code" class="control-label col-sm-3">Mã sách</label>
                    <div class="col-sm-9">
                        <input type="text"
                               id="code"
                               name="code"
                               title="code"
                               class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="name"
                           class="control-label col-sm-3">
                        Tên sách
                    </label>
                    <div class="col-sm-9">
                        <input type="text"
                               id="name"
                               name="name"
                               class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="price"
                           class="control-label col-sm-3">
                        Giá
                    </label>
                    <div class="col-sm-9">
                        <input type="text"
                               id="price"
                               name="price"
                               class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="description"
                           class="control-label col-sm-3">
                        Mô tả sách
                    </label>
                    <div class="col-sm-9">
                        <input type="text"
                               id="description"
                               name="description"
                               class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="image"
                           class="control-label col-sm-3">
                        Ảnh đại diện
                    </label>
                    <div class="col-sm-9">
                        <input type="file"
                               id="image"
                               name="image"
                               class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="category_id" class="control-label col-sm-3">ID Loại sách</label>
                    <div class="col-sm-9">
                        <select class="form-control valid"
                                id="category_id"
                                name="category_id">
                            @foreach($categories as $category)
                                <option value="{{$category['id']}}">
                                    {{$category['name']}}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="supplier_id" class="control-label col-sm-3">ID Nhà xuất bản</label>
                    <div class="col-sm-9">
                        <select class="form-control valid"
                                id="supplier_id"
                                name="supplier_id">
                            @foreach($suppliers as $supplier)
                                <option value="{{$supplier['id']}}">
                                    {{$supplier['name']}}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
                {{ csrf_field() }}
                <div class="form-group" style="text-align: right; margin-right: 0px">
                    <input type="submit" value="Thêm Mới" class="btn btn-default"/>
                </div>
            </form>
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
        </div>
    </div>

    <div>
        <a href="{{route('book.index')}}">Trở lại List</a>
    </div>
    @include('Shared.footer')
@endsection
