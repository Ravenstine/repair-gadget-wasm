#include <emscripten/emscripten.h>
#include <math.h>
#include "common/types.h"
#include "common/file.h"
#include "common/debug.h"
#include "common/memstream.h"
#include "common/stream.h"
#include "engines/director/archive.h"

int main() {
  return 0;
}

extern "C" int myFunction(const byte * buffer, uint32 dataSize) {
  Common::SeekableReadStream * stream = new Common::MemoryReadStream(buffer, dataSize, DisposeAfterUse::NO);
  Director::RIFXArchive archive;

  int didRead = archive.openStream(stream, 0);

  return didRead;
}
