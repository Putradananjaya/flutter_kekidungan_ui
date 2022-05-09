
class Song {
  final String songName;
  final String artist;
  final String image;
  final String duration;
  final int id;

  Song( {required this.id, required this.songName, required this.artist, required this.image, required this.duration,});
}


List<Song> songs = [
  Song(
    id: 1,
    songName: 'Back to Life',
    image: "assets/images/meditation.jpg",
    artist: 'DubVision',
    duration: "04.30",
  ),
  Song(
    id: 2,
    songName: 'Help me lose my mind',
    image: "assets/images/party.jpg",
    artist: 'Disclosure',
    duration: "02.30"
  ),
  Song(
    id: 3,
    songName: 'A million dreams',
    image: "assets/images/colors.jpg",
    artist: 'Ziv Zaifman',
    duration: "01.30"
  ),
  Song(
    id: 4,
    songName: 'Treat you better',
    image: "assets/images/love.jpg",
    artist: 'Paperwhite',
    duration: "04.30"
  ),
  Song(
    id: 5,
    songName: 'Let it go',
    image: "assets/images/colors.jpg",
    artist: 'Demi',
    duration: "05.30"
  ),
  Song(
    id: 6,
    songName: 'Found you',
    image: "assets/images/relax.jpg",
    artist: 'Austin',
    duration: "01.30"
  ),
  Song(
    id: 7,
    songName: 'Shallow',
    image: "assets/images/color.jpg",
    artist: 'Lady Gaga',
    duration: "03.30"
  ),
  Song(
    id: 8,
    songName: 'Photograph',
    image: "assets/images/party.jpg",
    artist: 'Peter',
    duration: "02.30"
  ),
];
