part of 'pages.dart';

class Meditation extends StatefulWidget {
  const Meditation({ Key? key }) : super(key: key);

  @override
  _MeditationState createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
  late AudioPlayer _audioPlayer;

  final _playlist = ConcatenatingAudioSource(
    children: [
      AudioSource.uri(
        Uri.parse('asset:///lib/audios/1.mp3'),
        tag: MediaItem(
          id: '1', 
          title: 'Semoga Semua Mahluk Bahagia',
          artist: 'Pelita Buddha',
          artUri: Uri.parse(
            'https://images.unsplash.com/photo-1616435577207-ca90abc6b732?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bG90dXN8ZW58MHx8MHx8fDA%3D&w=1000&q=80'
          )
        )
      ),
      AudioSource.uri(
        Uri.parse('asset:///lib/audios/2.mp3'),
        tag: MediaItem(
          id: '2', 
          title: '10 Minute Super Deep Meditation Music',
          artist: 'Deep Breath - Relaxing Music',
          artUri: Uri.parse(
            'https://img.youtube.com/vi/Kk7--moip1w/maxresdefault.jpg'
          )
        )
      ),
      AudioSource.uri(
        Uri.parse('asset:///lib/audios/3.mp3'),
        tag: MediaItem(
          id: '3', 
          title: 'Inner Self',
          artist: 'Nu Meditation Music',
          artUri: Uri.parse(
            'https://media.istockphoto.com/id/1188396818/id/vektor/siddhartha-gautama-tercerahkan-di-bawah-pohon-bodhi.jpg?s=170667a&w=0&k=20&c=oyXHnVx3OaFrNIXuadGgtTMKLK8pZ7k5oRNECSowaOE='
          )
        )
      ),
    ]
  );

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        _audioPlayer.positionStream,
        _audioPlayer.bufferedPositionStream,
        _audioPlayer.durationStream,
        (position, bufferedPosition, duration) => PositionData(
          position, 
          bufferedPosition, 
          duration ?? Duration.zero
        )
      );
  
  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _init();
  }

  Future<void> _init() async {
    await _audioPlayer.setLoopMode(LoopMode.all);
    await _audioPlayer.setAudioSource(_playlist);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<SequenceState?>(
              stream: _audioPlayer.sequenceStateStream,
              builder: (context, snapshot) {
                final state = snapshot.data;
                if (state?.sequence.isEmpty ?? true) {
                  return const SizedBox();
                }
                final metadata = state!.currentSource!.tag as MediaItem;
                return MediaMetaData(
                  title: metadata.title, 
                  artist: metadata.artist ?? '', 
                  imageUrl: metadata.artUri.toString()
                );
              }
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.fromLTRB(25,0,25,0),
              child: StreamBuilder<PositionData>(
                stream: _positionDataStream,
                builder: (context, snapshot) {
                  final positionData = snapshot.data;
                  return ProgressBar(
                    barHeight: 8,
                    baseBarColor: Colors.grey[600],
                    bufferedBarColor: Colors.grey,
                    progressBarColor: Colors.orange,
                    thumbColor: Colors.orange,
                    timeLabelTextStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                    progress: positionData?.position ?? Duration.zero, 
                    buffered: positionData?.bufferedPosition ?? Duration.zero,
                    total: positionData?.duration ?? Duration.zero,
                    onSeek: _audioPlayer.seek,
                  );
                }
              ),
            ),
            const SizedBox(height: 20),
            Controls(audioPlayer: _audioPlayer)
          ],
        ),
      ),
    );
  }
}

class PositionData {
  const PositionData(
    this.position,
    this.bufferedPosition,
    this.duration
  );

  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;
}

class MediaMetaData extends StatelessWidget {
  const MediaMetaData({
    super.key,
    required this.title,
    required this.artist,
    required this.imageUrl
  });

  final String title;
  final String artist;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(2, 4),
                blurRadius: 4
              )
            ],
            borderRadius: BorderRadius.circular(10)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: 300,
              width: 300,
              fit: BoxFit.cover
            )
          ),
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          artist,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20
          ),
          textAlign: TextAlign.center,
        ),
      ]
    );
  }
}

class Controls extends StatelessWidget {
  const Controls({
    super.key,
    required this.audioPlayer,
  });

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: audioPlayer.seekToPrevious,
          iconSize: 60, 
          color: Colors.black,
          icon: Icon(Icons.skip_previous_rounded)
        ),
        StreamBuilder<PlayerState>(
          stream: audioPlayer.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;
            if (!(playing ?? false)) {
              return IconButton(
                onPressed: audioPlayer.play, 
                iconSize: 80,
                color: Colors.black,
                icon: const Icon(Icons.play_arrow_rounded)
              );
            } else if (processingState != ProcessingState.completed) {
              return IconButton(
                onPressed: audioPlayer.pause, 
                iconSize: 80,
                color: Colors.black,
                icon: const Icon(Icons.pause_rounded)
              );
            }
            return const Icon(
              Icons.play_arrow_rounded,
              size: 80,
              color: Colors.black,
            );
          }
        ),
        IconButton(
          onPressed: audioPlayer.seekToNext,
          iconSize: 60, 
          color: Colors.black,
          icon: Icon(Icons.skip_next_rounded)
        ),
      ],
    );
  }

}
