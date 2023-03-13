import 'package:flutter/material.dart';
import 'package:flutter_100_day_of_code/challenge/day1_music_dashboard/widgets/model.dart';
import 'package:flutter_100_day_of_code/challenge/day1_music_dashboard/widgets/play_btn_painter.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicSquareCard extends StatelessWidget {
  final bool useLabel;
  final MusicData music;

  MusicSquareCard(this.music, {this.useLabel = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                alignment: useLabel ? Alignment.topRight : Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(music.cover!),
                    fit: BoxFit.cover,
                  ),
                ),
                child: !useLabel
                    ? SizedBox(
                        width: 16,
                        height: 16,
                        child: CustomPaint(
                          painter: PlayBtnPainter(),
                          child: Container(),
                        ),
                      )
                    : IntrinsicWidth(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.black54,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.play_arrow_rounded,
                                color: Colors.white60,
                                size: 16,
                              ),
                              Text(
                                ' ${music.rate} ',
                                style: GoogleFonts.roboto(
                                  fontSize: 11,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                music.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MusicLandscapeCard extends StatelessWidget {
  final MusicData music;

  MusicLandscapeCard(this.music);

  @override
  Widget build(BuildContext context) {
    List<Widget> songs = music.song!.map((item) {
      final text = item.split('-');
      final title = text.first;
      final artist = text.last;

      return Padding(
        padding: EdgeInsets.only(bottom: 3.0),
        child: RichText(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            text: title,
            style: GoogleFonts.roboto(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: ' - $artist',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: GestureDetector(
        onTap: () {},
        child: Material(
          color: Color(0xFFF1F1F1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(music.cover!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SizedBox(
                    width: 16,
                    height: 16,
                    child: CustomPaint(
                      painter: PlayBtnPainter(),
                      child: Container(),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        music.title!,
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      ...songs,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
