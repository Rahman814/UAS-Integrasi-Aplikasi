<?php
function get_CURL($url) 
{
  $curl = curl_init();
  curl_setopt($curl, CURLOPT_URL,$url);
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
  $result = curl_exec($curl);
  curl_close($curl);

  return json_decode($result, true);
}

$result = get_CURL('https://www.googleapis.com/youtube/v3/channels?part=snippet,statistics&id=UCg0vKI2WYz91cDvJ3S-fu_A&key=AIzaSyAsa2JZ2WPCHQ8X8-4TqMPfpiuYmaeUepo');
$youtubeProfilePic = $result['items'][0]['snippet']['thumbnails']['medium']['url'];
$channelname = $result['items'][0]['snippet']['title'];
$subscribers = $result['items'][0]['statistics']['subscriberCount'];


// latest video //
$urlLatestVidio = 'https://www.googleapis.com/youtube/v3/search?key=AIzaSyAsa2JZ2WPCHQ8X8-4TqMPfpiuYmaeUepo&channelId=UCg0vKI2WYz91cDvJ3S-fu_A&maxResults=1&order=date&part=snippet';
$result = get_CURL($urlLatestVidio);
$LatestVidioId = $result['items'][0]['id']['videoId'];

//Instagram API
$clientId = '9557128824410247';
$accessToken = 'IGAAI4ZA4iOKeNBZAFBBdDhVaGRCRjFVY3RNV19PbTdGWXZA3UWNMTldHaHFzUW1fX0VTaENzMkozNWdKUWc4YWo1UWEyRWJTNTBSVW90WDhBYXVDVHRWOTRlQkhEem1oOEhCaWNFMlVsb1lqZAFVXZAVRPUzZAqRFFpTFMyY0R2N1RSQQZDZD';

$result = get_CURL("https://graph.instagram.com/me?fields=id,username,profile_picture_url,followers_count,media{caption,media_url,permalink,timestamp}&access_token=$accessToken");
$usernameIG = $result['username'];
$profilePictureIG = $result['profile_picture_url'];
$followersIG = $result['followers_count'];

//media IG
$media = get_CURL("https://graph.instagram.com/me/media?fields=id,caption,media_url,media_type,timestamp&access_token=$accessToken");
$gambar = "";
if (isset($media['data']) && count($media['data']) >= 1) {
    $gambar = $media['data'][0]['media_url'];
}

?>

    <div class="jumbotron" id="home">
      <div class="container">
        <div class="text-center">
          <img src="<?=base_url();?>/assets/img/thumbs/rahman.jpeg" class="rounded-circle img-thumbnail">
          <h1 class="display-4">Aulia Rahman</h1>
          <h3 class="lead">ProPlayer | Gamer | Youtuber</h3>
        </div>
      </div>
    </div>


    <!-- About -->
    <section class="about" id="about">
      <div class="container">
        <div class="row mb-4">
          <div class="col text-center">
            <h2>About Me</h2>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-5">
            <p>Saya adalah mahasiswa UIN IMAM BONJOL tahun 2022, Disini saya mengambil jurusan sistem informasi dengan harapan bisa menjadi seorang programmer atau data analyis.</p>
          </div>
          <div class="col-md-5">
            <p>Sebelumnya perkenalkan saya AULIA RAHMAN ,saya tinggal di pasaman barat , umur saya 22 tahun dan hobi saya adalah bermain game online serta berolahraga.</p>
          </div>
        </div>
      </div>
    </section>


    <!-- Youtube & IG -->
     <section class="social bg-light" id="social">
      <div class="container">
        <div class="row pt-4 mb-4">
          <div class="col text-center">
            <h2>Social Media</h2>
          </div>
        </div>

        <div class="row justify-content-center">
          <div class="col-md-5">
            <div class="row">
              <div class="col-md-4">
                <img src="<?= $youtubeProfilePic; ?>" width="200" class="rounded-circle img-thumbnail">
              </div>
              <div class="col-md-8">
                <h5><?= $channelname; ?></h5>
                <p><?= $subscribers; ?>Subscribers.</p>
                <div class="g-ytsubscribe" data-channelid="UCg0vKI2WYz91cDvJ3S-fu_A" data-layout="full" data-count="default"></div>
              </div>
            </div>
            <div class="row mt-3 pb-3">
              <div class="col">
                <div class="ratio ratio-16x9">
                <iframe src="https://www.youtube.com/embed/<?= $LatestVidioId; ?>" title="YouTube video" allowfullscreen></iframe>
              </div>
              </div>
            </div>
          </div>
          <div class="col-md-5">
            <div class="row">
              <div class="col-md-4">
                 <img src="<?= $profilePictureIG; ?>" width="200" class="rounded-circle img-thumbnail">
              </div>
              <div class="col-md-8">
                <h5><?= $usernameIG; ?></h5>
                <p><?= $followersIG; ?> followers.</p>
              </div>
            </div>

            <div class="row mt-3 pb-3">
              <div class="col-md-6">
                <img src="<?= $gambar; ?>" width="100" class="img-fluid rounded img-thumbnail">
               </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </section>

<!-- My Project -->
  <div class="container mt-5 mb-5">
  <div class="row mb-4">
    <div class="col text-center">
      <h2>My Project</h2>
    </div>
  </div>

  <!-- Portfolio -->
      <section class="portfolio" id="portfolio">
          <div class="row">
            <div class="col-md mb-4">
              <div class="card">
                <img class="card-img-top" src="<?= base_url(); ?>assets/img/thumbs/1.png" alt="Card image cap">
                <div class="card-body">
                  <h5>json</h5>
                  <p class="card-text">Latihan API menggunakan file JSON.</p>
                  <a href="<?= base_url(); ?>../json/latihan1.php" class="card-link see-detail"data-bs-toggle="modal" data-bs-target="#exampleModal" data-id="`+ data.imdbID +`" >See Project</a>
                </div>
              </div>
            </div>

            <div class="col-md mb-4">
              <div class="card">
                <img class="card-img-top" src="<?= base_url(); ?>assets/img/thumbs/2.png" alt="Card image cap">
                <div class="card-body">
                  <h5>WPU-HUT</h5>
                  <p class="card-text">Latihan API menggunakan file JSON untuk data pizza dengan web.</p>
                  <a href="<?= base_url(); ?>../wpu-hut/latihan2.html" class="card-link see-detail"data-bs-toggle="modal" data-bs-target="#exampleModal" data-id="`+ data.imdbID +`" >See Project</a>
                </div>
              </div>
            </div>

            <div class="col-md mb-4">
              <div class="card">
                <img class="card-img-top" src="<?= base_url(); ?>assets/img/thumbs/3.png" alt="Card image cap">
                <div class="card-body">
                  <h5>WPU-MOVIE</h5>
                  <p class="card-text">Latihan API menggunakan OMDb API untuk data movie dengan web.</p>
                  <a href="<?= base_url(); ?>../wpu-movie/index.html" class="card-link see-detail"data-bs-toggle="modal" data-bs-target="#exampleModal" data-id="`+ data.imdbID +`" >See Project</a>
                </div>
              </div>
            </div>   
          </div>

          <div class="row">
            <div class="col-md mb-4">
              <div class="card">
                <img class="card-img-top" src="<?= base_url(); ?>assets/img/thumbs/4.png" alt="Card image cap">
                <div class="card-body">
                  <h5>WPU-PORTFOLIO</h5>
                  <p class="card-text">Latihan API menggunakan API Youtube dan Instagram memakai cURL untuk data akun berbasis web.</p>
                  <a href="<?= base_url(); ?>../wpu-portofolio/index.php" class="card-link see-detail"data-bs-toggle="modal" data-bs-target="#exampleModal" data-id="`+ data.imdbID +`" >See Project</a>
                </div>
              </div>
            </div> 
            <div class="col-md mb-4">
              <div class="card">
                <img class="card-img-top" src="<?= base_url(); ?>assets/img/thumbs/5.png" alt="Card image cap">
                <div class="card-body">
                  <h5>WPU-REST-SERVER</h5>
                  <p class="card-text">Membuat Rest Server menggunakan CodeIgniter.
                  </p>
                  <a href="<?= base_url(); ?>../wpu-rest-server/" class="card-link see-detail"data-bs-toggle="modal" data-bs-target="#exampleModal" data-id="`+ data.imdbID +`" >See Project</a>
                </div>
              </div>
            </div>

            <div class="col-md mb-4">
              <div class="card">
                <img class="card-img-top" src="<?= base_url(); ?>assets/img/thumbs/6.png" alt="Card image cap">
                <div class="card-body">
                  <h5>WPU-REST-CLIENT</h5>
                  <p class="card-text">Membuat Rest Client menggunakan CodeIgniter</p>
                  <a href="<?= base_url(); ?>home" class="card-link see-detail"data-bs-toggle="modal" data-bs-target="#exampleModal" data-id="`+ data.imdbID +`" >See Project</a>
                </div>
              </div>
            </div>
          </div>
      </section>
  </div>


    <!-- Contact -->
    <section class="contact bg-light" id="contact">
      <div class="container">
        <div class="row pt-4 mb-4">
          <div class="col text-center">
            <h2>Contact</h2>
          </div>
        </div>

        <div class="row justify-content-center">
          <div class="col-lg-4">
            <div class="card bg-primary text-white mb-4 text-center">
              <div class="card-body">
                <h5 class="card-title">Contact Me</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              </div>
            </div>
            
            <ul class="list-group mb-4">
              <li class="list-group-item"><h3>Location</h3></li>
              <li class="list-group-item">My Office</li>
              <li class="list-group-item">Jl. Setiabudhi No. 193, Bandung</li>
              <li class="list-group-item">West Java, Indonesia</li>
            </ul>
          </div>

          <div class="col-lg-6">
            
            <form>
              <div class="form-group">
                <label for="nama">Nama</label>
                <input type="text" class="form-control" id="nama">
              </div>
              <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email">
              </div>
              <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="text" class="form-control" id="phone">
              </div>
              <div class="form-group">
                <label for="message">Message</label>
                <textarea class="form-control" id="message" rows="3"></textarea>
              </div>
              <div class="form-group">
                <button type="button" class="btn btn-primary">Send Message</button>
              </div>
            </form>

          </div>
        </div>
      </div>
    </section>


    <!-- footer -->
    <footer class="bg-dark text-white mt-5">
      <div class="container">
        <div class="row">
          <div class="col text-center">
            <p>Copyright &copy; 2018.</p>
          </div>
        </div>
      </div>
    </footer>







    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <script src="https://apis.google.com/js/platform.js"></script>
  </body>
</html>