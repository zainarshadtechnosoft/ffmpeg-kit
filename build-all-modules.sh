#!/bin/bash
# build-all-modules.sh

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FFMPEG_KIT_PATH="${SCRIPT_DIR}"
OUTPUT_DIR="$(pwd)/ffmpeg-kit-builds"
BUILD_DATE=$(date +%Y%m%d)

cd "${FFMPEG_KIT_PATH}"

echo "Building all FFmpeg-kit modules..."

# Create output structure
mkdir -p "${OUTPUT_DIR}"/{ios,android,react-native}

# Build all iOS modules
echo "Building iOS modules..."

# 1. MIN module
echo "Building iOS MIN..."
./ios.sh --xcframework --enable-ios-audiotoolbox --enable-ios-videotoolbox
mkdir -p "${OUTPUT_DIR}/ios/min"
cp -r prebuilt/bundle-apple-xcframework-ios/* "${OUTPUT_DIR}/ios/min/"

# 2. AUDIO module  
echo "Building iOS AUDIO..."
./ios.sh --xcframework --enable-ios-audiotoolbox --enable-ios-videotoolbox \
  --enable-lame --enable-shine --enable-speex --enable-libvorbis --enable-opus
mkdir -p "${OUTPUT_DIR}/ios/audio"
cp -r prebuilt/bundle-apple-xcframework-ios/* "${OUTPUT_DIR}/ios/audio/"

# 3. VIDEO module
echo "Building iOS VIDEO..."
./ios.sh --xcframework --enable-ios-audiotoolbox --enable-ios-videotoolbox \
  --enable-libwebp --enable-libass --enable-fontconfig --enable-freetype \
  --enable-fribidi --enable-kvazaar --enable-libtheora --enable-libvpx
mkdir -p "${OUTPUT_DIR}/ios/video"
cp -r prebuilt/bundle-apple-xcframework-ios/* "${OUTPUT_DIR}/ios/video/"

# 4. HTTPS module
echo "Building iOS HTTPS..."
./ios.sh --xcframework --enable-ios-audiotoolbox --enable-ios-videotoolbox \
  --enable-gnutls --enable-gmp
mkdir -p "${OUTPUT_DIR}/ios/https"
cp -r prebuilt/bundle-apple-xcframework-ios/* "${OUTPUT_DIR}/ios/https/"

# 5. FULL module (non-GPL)
echo "Building iOS FULL..."
./ios.sh --xcframework --enable-ios-audiotoolbox --enable-ios-videotoolbox \
  --enable-fontconfig --enable-freetype --enable-fribidi --enable-gmp \
  --enable-gnutls --enable-lame --enable-libass --enable-libiconv \
  --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libwebp \
  --enable-libxml2 --enable-opencoreamr --enable-opus --enable-shine \
  --enable-speex --enable-dav1d --enable-kvazaar
mkdir -p "${OUTPUT_DIR}/ios/full"
cp -r prebuilt/bundle-apple-xcframework-ios/* "${OUTPUT_DIR}/ios/full/"

# 6. FULL-GPL module
echo "Building iOS FULL-GPL..."
./ios.sh --xcframework --enable-gpl --enable-ios-audiotoolbox --enable-ios-videotoolbox \
  --enable-fontconfig --enable-freetype --enable-fribidi --enable-gmp \
  --enable-gnutls --enable-lame --enable-libass --enable-libiconv \
  --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libwebp \
  --enable-libxml2 --enable-opencoreamr --enable-opus --enable-shine \
  --enable-speex --enable-dav1d --enable-kvazaar --enable-x264 --enable-x265 \
  --enable-xvidcore
mkdir -p "${OUTPUT_DIR}/ios/full-gpl"
cp -r prebuilt/bundle-apple-xcframework-ios/* "${OUTPUT_DIR}/ios/full-gpl/"

# Build Android modules
echo "Building Android modules..."

# 1. MIN module
echo "Building Android MIN..."
./android.sh --api-level=24
mkdir -p "${OUTPUT_DIR}/android/min/libs"
cp -r prebuilt/android-*/ffmpeg-kit/* "${OUTPUT_DIR}/android/min/libs/"

# 2. AUDIO module
echo "Building Android AUDIO..."
./android.sh --api-level=24 --enable-lame --enable-shine --enable-speex \
  --enable-libvorbis --enable-opus
mkdir -p "${OUTPUT_DIR}/android/audio/libs"
cp -r prebuilt/android-*/ffmpeg-kit/* "${OUTPUT_DIR}/android/audio/libs/"

# 3. VIDEO module
echo "Building Android VIDEO..."
./android.sh --api-level=24 --enable-libwebp --enable-libass --enable-fontconfig \
  --enable-freetype --enable-fribidi --enable-kvazaar --enable-libtheora --enable-libvpx
mkdir -p "${OUTPUT_DIR}/android/video/libs"
cp -r prebuilt/android-*/ffmpeg-kit/* "${OUTPUT_DIR}/android/video/libs/"

# 4. HTTPS module
echo "Building Android HTTPS..."
./android.sh --api-level=24 --enable-gnutls --enable-gmp
mkdir -p "${OUTPUT_DIR}/android/https/libs"
cp -r prebuilt/android-*/ffmpeg-kit/* "${OUTPUT_DIR}/android/https/libs/"

# 5. FULL module
echo "Building Android FULL..."
./android.sh --api-level=24 --enable-fontconfig --enable-freetype --enable-fribidi \
  --enable-gmp --enable-gnutls --enable-lame --enable-libass --enable-libiconv \
  --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libwebp \
  --enable-libxml2 --enable-opencoreamr --enable-opus --enable-shine \
  --enable-speex --enable-dav1d --enable-kvazaar
mkdir -p "${OUTPUT_DIR}/android/full/libs"
cp -r prebuilt/android-*/ffmpeg-kit/* "${OUTPUT_DIR}/android/full/libs/"

# 6. FULL-GPL module
echo "Building Android FULL-GPL..."
./android.sh --api-level=24 --enable-gpl --enable-fontconfig --enable-freetype \
  --enable-fribidi --enable-gmp --enable-gnutls --enable-lame --enable-libass \
  --enable-libiconv --enable-libtheora --enable-libvorbis --enable-libvpx \
  --enable-libwebp --enable-libxml2 --enable-opencoreamr --enable-opus \
  --enable-shine --enable-speex --enable-dav1d --enable-kvazaar --enable-x264 \
  --enable-x265 --enable-xvidcore
mkdir -p "${OUTPUT_DIR}/android/full-gpl/libs"
cp -r prebuilt/android-*/ffmpeg-kit/* "${OUTPUT_DIR}/android/full-gpl/libs/"

# Copy React Native JS interface
echo "Copying React Native interface..."
cp -r react-native/src "${OUTPUT_DIR}/react-native/"
cp react-native/package.json "${OUTPUT_DIR}/react-native/"

echo "All modules built successfully in ${OUTPUT_DIR}"