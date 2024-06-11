@extends('layouts.template')
@section('judulh1','Admin - Produk')

@section('konten')
<div class="col-md-6">
    @if ($errors->any())
    <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <div class="card card-warning">
        <div class="card-header">
            <h3 class="card-title">Ubah Data Produk</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form action="{{ route('produk.update',$produk->id) }}" method="POST">
            @csrf
            @method('PUT')

            <div class=" card-body">
                <div class="form-group">
                    <label for="nama">Nama Produk</label>
                    <input type="text" class="form-control" id="nama" name="nama" value="{{$produk->nama}}">
                </div>
                <div class="form-group">
                    <label for="jeniskategori">Jeniskategori</label>
                    <select class="custom-select" id="jeniskategori" name="jeniskategori">
                        <option value="{{$produk->jeniskategori}}" selected> {{$produk->jeniskategori}} </option>
                        <option value="Cair">Cair</option>
                        <option value="Padat">Padat</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="deskripsi">Deskripsi</label>
                    <select class="custom-select" id="deskripsi" name="deskripsi">
                        <option value="{{$produk->deskripsi}}" selected> {{$produk->deskripsi}} </option>
                        <option value="Satuan">Satuan</option>
                        <option value="Paket">Paket</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Suplier</label>
                    <select class="form-control" name="suplier_id">
                        @foreach($suplier as $dt )
                        <option value="{{ $dt->id }}" @if($dt->id===$produk->suplier_id) selected
                            @endif>{{ $dt->nama }}
                        </option>
                        @endforeach
                    </select>
                </div>


                <div class="form-group">
                    <label for="stock">Stock</label>
                    <input type="number" class="form-control" id="stock" name="stock" value="{{$produk->stock}}">
                </div>
                <div class="form-group">
                    <label for="harga">Harga</label>
                    <input type="number" class="form-control" id="harga" name="harga" value="{{$produk->harga}}">
                </div>

            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-warning float-right">Ubah</button>
            </div>
        </form>
    </div>

</div>

@endsection