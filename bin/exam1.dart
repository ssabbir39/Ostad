class Media{
  void play(){
    print("Playing song");
  }
}

class Song extends Media{
  String artist;
  Song( this.artist);

  @override
  play(){
    print("Playing song by $artist......");
  }

}

void main(){
  Media media = Media();
  Song song = Song("Sabbir");
  media.play();
  song.play();
}