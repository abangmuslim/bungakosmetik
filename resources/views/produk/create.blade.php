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

    <div class="card card-success">
        <div class="card-header">
            <h3 class="card-title">Tambah Data Produk</h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
        <form action="{{ route('produk.store') }}" method="POST">
            @csrf

            <div class=" card-body">
                <div class="form-group">
                    <label for="nama">Nama Produk</label>
                    <input type="text" class="form-control" id="nama" name="nama" placeholder="">
                </div>
                <div class="form-group">
                    <label for="jeniskategori">Jeniskategori</label>
                    <select class="custom-select" id="jeniskategori" name="jeniskategori">
                        <option selected>Pilih Kategori</option>
                        <option value="Cair">Cair</option>
                        <option value="Padat">Padat</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="deskripsi">Deskripsi</label>
                    <select class="custom-select" id="deskripsi" name="deskripsi">
                        <option selected>Pilih Deskripsi</option>
                        <option value="Satuan">Satuan</option>
                        <option value="Paket">Paket</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Suplier</label>
                    <select class="form-control" name="suplier_id">
                        @foreach($suplier as $dt )
                        <option value="{{ $dt->id }}">{{ $dt->nama }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="stock">Stock</label>
                    <input type="number" class="form-control" id="stock" name="stock">
                </div>
                <div class="form-group">
                    <label for="harga">Harga</label>
                    <input type="number" class="form-control" id="harga" name="harga">
                </div>

            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-success float-right">Simpan</button>
            </div>
        </form>
    </div>
</div>
@endsection