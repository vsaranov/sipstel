{
  'targets': [
    {
      'target_name': 'sipster',
      'sources': [
        'src/binding.cc',
        'src/SIPSTERAccount.cc',
        'src/SIPSTERCall.cc',
        'src/SIPSTERMedia.cc',
        'src/SIPSTERTransport.cc',
      ],
      'include_dirs': [
        "src",
        "<!(node -e \"require('nan')\")"
      ],
      'cflags_cc+': ['-g3'],
      'conditions': [
        [ 'OS=="linux"', {
          'cflags_cc': [
            '<!@(pkg-config --atleast-version=2.4.5 libpjproject)',
            '<!@(pkg-config --cflags libpjproject)',
            '-fexceptions',
            '-Wno-maybe-uninitialized',
          ],
          'libraries': [
            '<!@(pkg-config --libs libpjproject)',
          ],
        }],
        [ 'OS=="mac"', {
          'cflags_cc': [
            '<!@(pkg-config --atleast-version=2.4.5 libpjproject)',
            '<!@(pkg-config --cflags libpjproject)',
            '-fexceptions',
            '-Wno-maybe-uninitialized',
          ],
          'libraries': [
            # '<!@(pkg-config --libs libpjproject)', # makes "clang: error: no such file or directory: 'AppKit'"
            '-L/usr/local/lib -lpjsua2 -lstdc++ -lpjsua -lpjsip-ua -lpjsip-simple -lpjsip -lpjmedia-codec -lpjmedia -lpjmedia-videodev -lpjmedia-audiodev -lpjmedia -lpjnath -lpjlib-util -lsrtp -lresample -lgsmcodec -lspeex -lilbccodec -lg7221codec -lwebrtc -lpj -lopus -lm -lpthread -framework CoreAudio -framework CoreServices -framework AudioUnit -framework AudioToolbox -framework Foundation -framework AppKit'
          ],
          'xcode_settings': {
            'OTHER_CFLAGS': [
              '-fexceptions',
              '-frtti',
            ]
          },
        }],
      ],
    },
  ],
}
