class Main
{
  static function main()
  {
    // Use a different way of fetching bytes for non-sys platforms
    var bmp = new BMP(sys.io.File.getBytes('./baboon.bmp'));

    // Store channels separately for later reuse
    var r : Channel = bmp.r;
    var g : Channel = bmp.g;
    var b : Channel = bmp.b;
    // Create an 'empty' channel
    var zeroes : Channel = [ for (i in 0...bmp.dibHeader.imageHeight) [ for (j in 0...bmp.dibHeader.imageWidth) 0x00 ] ];

    // Isolate red channel
    bmp.b = zeroes;
    bmp.g = zeroes;
    bmp.save('./baboon_r.bmp');
    // Isolate green channel
    bmp.g = g;
    bmp.r = zeroes;
    bmp.save('./baboon_g.bmp');
    // Isolate blue channel
    bmp.b = b;
    bmp.g = zeroes;
    bmp.save('./baboon_b.bmp');
  }
}