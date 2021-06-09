<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('Template/plugins/fontawesome-free/css/all.min.css')}}">   

    <!-- Link CSS -->
    <link rel="stylesheet" href="{{asset('Template/dist/css/adminlte.min.css')}}">    

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('Template/plugins/fontawesome-free/css/all.min.css')}}">

    <!-- Link CSS -->
    <link rel="stylesheet" href="{{asset('Template/dist/css/adminlte.min.css')}}"> 


    <title>SIKP | PraKP 21</title>
  </head>
  <body>

    <!-- Navigasi -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-gray">
            <div class="container-fluid">
            <a class="navbar-brand font-weight-bold text-white" href="/mhs">SIKP <span class="sr-only">(current)</span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
        
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                <a class="nav-link text-white font-weight-bold" href="/mhs">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white font-weight-bold" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Layanan
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/mhs/suratketerangan">Pengajuan Surat Keterangan</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/mhs/prakp">Pengajuan Pra KP</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/mhs/kp">Pengajuan KP</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/mhs/ujiankp">Tanggal Ujian</a>
                </div>
            </ul>
            <form class="form-inline my-2 my-lg-0 ml-auto">
                <a href="" class="btn font-weight-bold text-white">Mahasiswa</a>
                <a href="/mhs/usermhs" class="btn text-white"><i class="fas fa-user" data-toggle="tooltip" title="User Profile"></i></a> 
                <a href="" class="btn text-white"><i class="fas fa-sign-out-alt" data-toggle="tooltip" title="Logout"></i></a> 
                
            </form>
            </div>
            </div>
        </nav>
    </header>

      <!-- Main Content -->
      <main>
        <div class="container-fluid mt-2">
            <h2><i class="fas fa-file mr-2"></i>Pengajuan Pengajuan Pra KP</h2><hr>

            <!-- Form -->
            <div class="row container-fluid">
                <div class="col-md-6">
                    <h4>Data Pengajuan Pra KP</h4>
                    <hr>
                    <form action="/mhs/simpanPraKP">
                        <div class="form-group">
                            <label for="" class="font-weight-bold">Tahun</label>
                            <input type="text" class="form-control" name="tahun" id="tahun" placeholder="Masukkan Tahun">
                        </div>
                        <div class="form-group">
                            <label for="" class="font-weight-bold">Semester</label>
                            <select class="form-control" name="semester" id="semester">
                                <option value="1">Gasal</option>
                                <option value="2">Genap</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="" class="font-weight-bold">NIM</label>
                            <input type="text" class="form-control" name="nim" id="nim" placeholder="Masukkan NIM">
                        </div>

                        <div class="form-group">
                            <label for="" class="font-weight-bold">Judul Kerja Praktik</label>
                            <textarea name="judul" id="" cols="30" rows="3" class="form-control" name="judul" id="judul" placeholder="Masukkan Judul KP"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="" class="font-weight-bold">Tools</label>
                            <input type="text" class="form-control" name="tools" id="tools" placeholder="Tools">
                        </div>

                        <div class="form-group">
                            <label for="" class="font-weight-bold">Spesifikasi</label>
                            <input type="text" class="form-control" name="spesifikasi" id="spesifikasi" placeholder="Spesifikasi">
                        </div>

                        <div class="form-group">
                            <label for="" class="font-weight-bold">Dokumen</label>
                            <input type="file" class="form-control" name="dokumen" id="dokumen" placeholder="Dokumen">
                        </div>

                        <div class="form-group">
                            <label for="" class="font-weight-bold">Lembaga</label>
                            <input type="text" class="form-control" name="lembaga" id="lembaga" placeholder="Masukkan Lembaga">
                        </div>

                        <div class="form-group">
                            <label for="" class="font-weight-bold">Pimpinan</label>
                            <input type="text" class="form-control" name="pimpinan" id="pimpinan" placeholder="Masukkan Pimpinan">
                        </div>

                        <div class="form-group">
                            <label for="" class="font-weight-bold">Alamat</label>
                            <input type="text" class="form-control" name="alamat" id="alamat" placeholder="Masukkan Alamat">
                        </div>

                        <div class="form-group">
                            <label for="" class="font-weight-bold">No Telepon</label>
                            <input type="text" class="form-control" name="no_telp" id="no_telp" placeholder="Masukkan No Telp">
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>

                <div class="col-md-6">
                    <h4>Daftar Pengajuan Pra KP</h4><hr>
                    <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">No</th>
                            <th scope="col">Nim</th>
                            <th scope="col">Judul KP</th>
                            <th scope="col">Tahun Akademik</th>
                            <th scope="col">Status</th>
                          </tr>
                        </thead>
                        <tbody>
                        @foreach($prakp as $key)
                          <tr>
                            <th scope="row">{{ $loop->iteration }}</th>
                            <td>{{ $key->nim }}</td>
                            <td>{{ $key->judul }}</td>                           
                            <td>
                                {{ $key->tahun.$key->semester }}
                                (
                                    @if($key->semester == 1)
                                        {{ $key->tahun }} Ganjil
                                    @else
                                        {{ $key->tahun }} Genap
                                    @endif
                                )
                            </td>
                            <td>
                            @if($key->status == 0)
                                Belum Disetujui
                            @else
                                Sudah Disetujui
                            @endif
                        </td>                            
                            @endforeach
                        </tbody>
                      </table>
                </div>
            </div>
            <br>
    </main>

    <footer class="bg-danger text-white text-center">
        <p class="font-weight-bold mt-3">RPL 21</p>
    </footer>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>