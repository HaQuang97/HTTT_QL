@extends('Layouts.masterAdmin')
@section('content')
    @include('Shared.navigationBar')
    <h2>Thêm mới thể loại sách</h2>

    <h4>Loại sách</h4>
    <hr/>
    <div class="row">
        <div class="col-md-4">
            <form href="{{route('category.create')}}" method="post">
                <div class="form-group">
                    <label for="code" class="control-label">Mã loại sách</label>
                    <input type="text" id="code" name="code" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="name" class="control-label">Tên loại sách</label>
                    <input type="text" id="name" name="name" class="form-control"/>
                </div>
                {{ csrf_field() }}
                <div class="form-group">
                    <input type="submit" value="Create" class="btn btn-default"/>
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
        <a href="{{route('category.index')}}">Trở lại List</a>
    </div>
    @include('Shared.footer')
@endsection
