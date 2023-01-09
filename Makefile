CXXFLAGS= \
  -std=c++11 \
	-Wall \
	-Wextra \
	-Ivendor \
	-Lvendor \
	-Ivendor/scummvm \
	-Lvendor/scummvm \
	-Ivendor/scummvm/engines \
	-DSCUMM_LITTLE_ENDIAN=true \
	-DSDL_BACKEND=true \
	-DDETECTION_STATIC=true \
	-fno-exceptions

LDLIBS=-lz -lmpg123 -lm
LDFLAGS=
LDFLAGS_RELEASE=-s -Os

OBJS = \
	src/director.cpp \
	vendor/scummvm/backends/graphics/surfacesdl/surfacesdl-graphics.cpp \
	vendor/scummvm/common/archive.cpp \
	vendor/scummvm/common/compression/gzio.cpp \
	vendor/scummvm/common/compression/unzip.cpp \
  vendor/scummvm/common/config-manager.cpp \
	vendor/scummvm/common/debug.cpp \
  vendor/scummvm/common/error.cpp \
	vendor/scummvm/common/encodings/singlebyte.cpp \
	vendor/scummvm/common/file.cpp \
	vendor/scummvm/common/formats/xmlparser.cpp \
	vendor/scummvm/common/fs.cpp \
	vendor/scummvm/common/hashmap.cpp \
	vendor/scummvm/common/macresman.cpp \
	vendor/scummvm/common/memorypool.cpp \
	vendor/scummvm/common/mutex.cpp \
	vendor/scummvm/common/path.cpp \
  vendor/scummvm/common/punycode.cpp \
	vendor/scummvm/common/str.cpp \
	vendor/scummvm/common/str-base.cpp \
	vendor/scummvm/common/stream.cpp \
	vendor/scummvm/common/str-enc.cpp \
	vendor/scummvm/common/system.cpp \
	vendor/scummvm/common/textconsole.cpp \
	vendor/scummvm/common/text-to-speech.cpp \
  vendor/scummvm/common/tokenizer.cpp \
	vendor/scummvm/common/ustr.cpp \
	vendor/scummvm/common/util.cpp \
	vendor/scummvm/common/zip-set.cpp \
	vendor/scummvm/graphics/blit.cpp \
	vendor/scummvm/graphics/blit-scale.cpp \
	vendor/scummvm/graphics/cursorman.cpp \
	vendor/scummvm/graphics/font.cpp \
	vendor/scummvm/graphics/fontman.cpp \
	vendor/scummvm/graphics/fonts/bdf.cpp \
	vendor/scummvm/graphics/fonts/ttf.cpp \
	vendor/scummvm/graphics/fonts/consolefont.cpp \
	vendor/scummvm/graphics/fonts/macfont.cpp \
	vendor/scummvm/graphics/fonts/newfont.cpp \
	vendor/scummvm/graphics/fonts/newfont_big.cpp \
	vendor/scummvm/graphics/macgui/macwindowmanager.cpp \
	vendor/scummvm/graphics/maccursor.cpp \
	vendor/scummvm/graphics/managed_surface.cpp \
	vendor/scummvm/graphics/palette.cpp \
	vendor/scummvm/graphics/pixelformat.cpp \
	vendor/scummvm/graphics/renderer.cpp \
	vendor/scummvm/graphics/surface.cpp \
	vendor/scummvm/graphics/svg.cpp \
	vendor/scummvm/graphics/transparent_surface.cpp \
	vendor/scummvm/graphics/VectorRenderer.cpp \
	vendor/scummvm/graphics/wincursor.cpp \
	vendor/scummvm/graphics/yuv_to_rgb.cpp \
	vendor/scummvm/gui/debugger.cpp \
	vendor/scummvm/gui/dialog.cpp \
	vendor/scummvm/gui/console.cpp \
	vendor/scummvm/gui/gui-manager.cpp \
	vendor/scummvm/gui/ThemeEngine.cpp \
	vendor/scummvm/gui/ThemeEval.cpp \
	vendor/scummvm/gui/ThemeLayout.cpp \
	vendor/scummvm/gui/ThemeParser.cpp \
	vendor/scummvm/gui/widget.cpp \
	vendor/scummvm/gui/widgets/scrollbar.cpp \
	vendor/scummvm/engines/director/archive.cpp \
	vendor/scummvm/engines/director/cast.cpp \
	vendor/scummvm/engines/director/castmember.cpp \
	vendor/scummvm/engines/director/channel.cpp \
	vendor/scummvm/engines/director/cursor.cpp \
	vendor/scummvm/engines/director/debugger.cpp \
	vendor/scummvm/engines/director/detection.cpp \
	vendor/scummvm/engines/director/director.cpp \
	vendor/scummvm/engines/director/events.cpp \
	vendor/scummvm/engines/director/fonts.cpp \
	vendor/scummvm/engines/director/frame.cpp \
	vendor/scummvm/engines/director/game-quirks.cpp \
	vendor/scummvm/engines/director/graphics.cpp \
	vendor/scummvm/engines/director/images.cpp \
	vendor/scummvm/engines/director/lingo/lingo.cpp \
	vendor/scummvm/engines/director/lingo/lingo-builtins.cpp \
	vendor/scummvm/engines/director/lingo/lingo-bytecode.cpp \
	vendor/scummvm/engines/director/lingo/lingo-code.cpp \
	vendor/scummvm/engines/director/lingo/lingo-codegen.cpp \
	vendor/scummvm/engines/director/lingo/lingo-events.cpp \
	vendor/scummvm/engines/director/lingo/lingo-funcs.cpp \
	vendor/scummvm/engines/director/lingo/lingo-gr.cpp \
	vendor/scummvm/engines/director/lingo/lingo-lex.cpp \
	vendor/scummvm/engines/director/lingo/lingo-object.cpp \
	vendor/scummvm/engines/director/lingo/lingo-patcher.cpp \
	vendor/scummvm/engines/director/lingo/lingo-preprocessor.cpp \
	vendor/scummvm/engines/director/lingo/lingo-the.cpp \
	vendor/scummvm/engines/director/lingo/lingo-utils.cpp \
	vendor/scummvm/engines/director/metaengine.cpp \
  vendor/scummvm/engines/director/movie.cpp \
	vendor/scummvm/engines/director/resource.cpp \
  vendor/scummvm/engines/director/score.cpp \
  vendor/scummvm/engines/director/sound.cpp \
	vendor/scummvm/engines/director/sprite.cpp \
	vendor/scummvm/engines/director/stxt.cpp \
	vendor/scummvm/engines/director/util.cpp \
  vendor/scummvm/engines/director/window.cpp \
	vendor/scummvm/image/bmp.cpp \
	vendor/scummvm/image/jpeg.cpp \
	vendor/scummvm/image/codecs/bmp_raw.cpp \
	vendor/scummvm/image/codecs/cinepak.cpp \
	vendor/scummvm/image/codecs/codec.cpp \
	vendor/scummvm/image/codecs/indeo/indeo.cpp \
	vendor/scummvm/image/codecs/indeo/indeo_dsp.cpp \
	vendor/scummvm/image/codecs/indeo/mem.cpp \
	vendor/scummvm/image/codecs/indeo/vlc.cpp \
	vendor/scummvm/image/codecs/indeo3.cpp \
	vendor/scummvm/image/codecs/indeo4.cpp \
	vendor/scummvm/image/codecs/indeo5.cpp \
	vendor/scummvm/image/codecs/jyv1.cpp \
	vendor/scummvm/image/codecs/mjpeg.cpp \
	vendor/scummvm/image/codecs/msrle.cpp \
	vendor/scummvm/image/codecs/msrle4.cpp \
	vendor/scummvm/image/codecs/msvideo1.cpp \
	vendor/scummvm/image/codecs/xan.cpp

UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S),Darwin)
	CXXFLAGS+=-I/opt/homebrew/include -I/opt/homebrew/opt/zlib/include
	LDFLAGS+=-L/opt/homebrew/lib -L/opt/homebrew/opt/zlib/lib
endif

default:
	rm -rf dist/ && \
	mkdir dist/ && \
	em++ -O1 $(OBJS) $(CXXFLAGS) $(LDFLAGS) $(LDFLAGS_RELEASE) $(LDLIBS) -s WASM=1 -s "EXPORTED_FUNCTIONS=['_myFunction']" -o dist/director.wasm

fontmaps/%.h: $(patsubst %.h,%.txt,$@)
	xxd -i $(patsubst %.h,%.txt,$@) > $@

fetch_assets:
	curl -o vendor/repair.dcr 'https://web.archive.org/web/20031017200123oe_/http://www.disney.co.uk/gadget/images/optheatre/repair.dcr' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.5165.179 Safari/537.36' -H 'Accept: */*' -H 'Accept-Language: en-US,en;q=0.5' -H 'Accept-Encoding: gzip, deflate, br' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Sec-Fetch-Dest: empty' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-GPC: 1' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' -H 'TE: trailers'

run_game:
	deno run --allow-read repair.js
