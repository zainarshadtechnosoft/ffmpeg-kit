# 16KB Page Size Update
This fork only aims to make ffmpeg-kit compatible with new android versions (API 35) which request all binaries to be rebuilt.
Google request developers to build new with new r27 and r28 ndk but ffmpeg-kit has its own NDK compatibility table which supports only upto r25.</p>
<i>Edit: As original devs said, master branch has been tested upto NDK r27.</i>

</p>
Lucky for us, there is a version of ndk r23 and r25 in CI which supports 16KB page sizes too.
make sure to download this ndk version and compile ffmpeg-kit with this ndk only.<br/>
NDK : <a href="https://ci.android.com/builds/branches/aosp-ndk-release-r23/grid">R23</a> <a href="https://ci.android.com/builds/branches/aosp-ndk-r25-release/grid">R25</a>
</p>
You can find all details related to this update here. https://developer.android.com/guide/practices/page-sizes
</br>

# FFmpegKit ![GitHub release](https://img.shields.io/badge/release-v6.0-blue.svg) ![Maven Central](https://img.shields.io/maven-central/v/com.arthenica/ffmpeg-kit-min) ![CocoaPods](https://img.shields.io/cocoapods/v/ffmpeg-kit-ios-min) ![pub](https://img.shields.io/pub/v/ffmpeg_kit_flutter.svg) ![npm](https://img.shields.io/npm/v/ffmpeg-kit-react-native.svg)

## Notice
FFmpegKit has been officially retired. There will be no further `ffmpeg-kit` releases.

See [Saying Goodbye to FFmpegKit @ medium](https://medium.com/@tanersener/saying-goodbye-to-ffmpegkit-33ae939767e1) to learn why we made this decision.

All previously released `ffmpeg-kit` binaries will be removed according to the following schedule.

| FFmpegKit Version |  Available Until   |
|:-----------------:|:------------------:|
|   Less than 6.0   | February 1st, 2025 |
|        6.0        |  April 1st, 2025   |

Thank you for your support and interest in this project.

If you're looking for a replacement, please check out the community-maintained forks available through the package managers below.

|                          Platform                           |
|:-------------------------------------------------------:|
| [Android](https://central.sonatype.com/search?q=ffmpeg+kit) |
| [Flutter](https://pub.dev/packages?q=ffmpeg+kit) |
| [React Native](https://www.npmjs.com/search?q=ffmpeg%20kit) |

<img src="https://github.com/arthenica/ffmpeg-kit/blob/main/docs/assets/ffmpeg-kit-icon-v9.png" width="240">

`FFmpegKit` is a collection of tools to use `FFmpeg`<sup>1</sup> in `Android`, `iOS`, `Linux`, `macOS`, `tvOS`, `Flutter` and `React Native` applications.

It includes scripts to build `FFmpeg` native libraries, a wrapper library to run `FFmpeg`/`FFprobe` commands in
 applications and 8 prebuilt binary packages available at [Github](https://github.com/arthenica/ffmpeg-kit/releases),
 [Maven Central](https://search.maven.org), [CocoaPods](https://cocoapods.org), [pub](https://pub.dev) and [npm](https://www.npmjs.com).

### 1. Features
- Scripts to build FFmpeg native libraries
- `FFmpegKit` wrapper library to run `FFmpeg`/`FFprobe` commands in applications
- Supports native platforms: Android, iOS, Linux, macOS and tvOS
- Supports hybrid platforms: Flutter, React Native
- Based on FFmpeg `v4.5-dev` or later with optional system and external libraries
- 8 prebuilt binary packages available at [Github](https://github.com/arthenica/ffmpeg-kit/releases), [Maven Central](https://search.maven.org), [CocoaPods](https://cocoapods.org), [pub](https://pub.dev) and [npm](https://www.npmjs.com)
- Licensed under `LGPL 3.0` by default, `GPL v3.0` if GPL licensed libraries are enabled

### 2. Android

See [Android](android) to learn more about `FFmpegKit` for `Android`.

### 3. iOS, macOS, tvOS

See [Apple](apple) to use `FFmpegKit` on `Apple` platforms (`iOS`, `macOS`, `tvOS`).

### 4. Flutter

See [Flutter](flutter/flutter) to learn more about `FFmpegKit` for `Flutter`.

### 5. Linux

See [Linux](linux) to learn more about `FFmpegKit` for `Linux`.

### 6. React Native

See [React Native](react-native) to learn more about `FFmpegKit` for `React Native`.

### 7. Build Scripts

Use `android.sh`, `ios.sh`, `linux.sh`, `macos.sh` and `tvos.sh` to build `FFmpegKit` for each native platform.

All scripts support additional options to enable optional libraries and disable platform architectures. See
[Building](https://github.com/arthenica/ffmpeg-kit/wiki/Building) wiki page for the details.

### 8. FFmpegKit Library

`FFmpegKit` is a wrapper library that allows you to easily run `FFmpeg`/`FFprobe` commands in applications. It 
provides additional features on top of `FFmpeg` to enable platform specific resources, control how commands are 
executed and how the results are handled.

`Android` library of `FFmpegKit` has a `Java` API, `Apple` libraries (`iOS`, `macOS`, `tvOS`) have an `Objective-C`
 API, `Flutter` library comes with a `Dart` API, `Linux` library has a `C++` API and `React Native` library provides
a `JavaScript` API with `Typescript` definitions, which are identical in terms of features and capabilities.

### 9. Packages

There are eight different `ffmpeg-kit` packages distributed on 
[Github](https://github.com/arthenica/ffmpeg-kit/releases), 
[Maven Central](https://search.maven.org), [CocoaPods](https://cocoapods.org), [pub](https://pub.dev) and
 [npm](https://www.npmjs.com).
Below you can see which system libraries and external libraries are enabled in each one of them.

Please remember that some parts of `FFmpeg` are licensed under the `GPL` and only `GPL` licensed `ffmpeg-kit` packages 
include them.

<table>
<thead>
<tr>
<th align="center"></th>
<th align="center"><sup>min</sup></th>
<th align="center"><sup>min-gpl</sup></th>
<th align="center"><sup>https</sup></th>
<th align="center"><sup>https-gpl</sup></th>
<th align="center"><sup>audio</sup></th>
<th align="center"><sup>video</sup></th>
<th align="center"><sup>full</sup></th>
<th align="center"><sup>full-gpl</sup></th>
</tr>
</thead>
<tbody>
<tr>
<td align="center"><sup>external libraries</sup></td>
<td align="center">-</td>
<td align="center"><sup>vid.stab</sup><br><sup>x264</sup><br><sup>x265</sup><br><sup>xvidcore</sup></td>
<td align="center"><sup>gmp</sup><br><sup>gnutls</sup></td>
<td align="center"><sup>gmp</sup><br><sup>gnutls</sup><br><sup>vid.stab</sup><br><sup>x264</sup><br><sup>x265</sup><br><sup>xvidcore</sup></td>
<td align="center"><sup>lame</sup><br><sup>libilbc</sup><br><sup>libvorbis</sup><br><sup>opencore-amr</sup><br><sup>opus</sup><br><sup>shine</sup><br><sup>soxr</sup><br><sup>speex</sup><br><sup>twolame</sup><br><sup>vo-amrwbenc</sup></td>
<td align="center"><sup>dav1d</sup><br><sup>fontconfig</sup><br><sup>freetype</sup><br><sup>fribidi</sup><br><sup>kvazaar</sup><br><sup>libass</sup><br><sup>libiconv</sup><br><sup>libtheora</sup><br><sup>libvpx</sup><br><sup>libwebp</sup><br><sup>snappy</sup><br><sup>zimg</sup></td>
<td align="center"><sup>dav1d</sup><br><sup>fontconfig</sup><br><sup>freetype</sup><br><sup>fribidi</sup><br><sup>gmp</sup><br><sup>gnutls</sup><br><sup>kvazaar</sup><br><sup>lame</sup><br><sup>libass</sup><br><sup>libiconv</sup><br><sup>libilbc</sup><br><sup>libtheora</sup><br><sup>libvorbis</sup><br><sup>libvpx</sup><br><sup>libwebp</sup><br><sup>libxml2</sup><br><sup>opencore-amr</sup><br><sup>opus</sup><br><sup>shine</sup><br><sup>snappy</sup><br><sup>soxr</sup><br><sup>speex</sup><br><sup>twolame</sup><br><sup>vo-amrwbenc</sup><br><sup>zimg</sup></td>
<td align="center"><sup>dav1d</sup><br><sup>fontconfig</sup><br><sup>freetype</sup><br><sup>fribidi</sup><br><sup>gmp</sup><br><sup>gnutls</sup><br><sup>kvazaar</sup><br><sup>lame</sup><br><sup>libass</sup><br><sup>libiconv</sup><br><sup>libilbc</sup><br><sup>libtheora</sup><br><sup>libvorbis</sup><br><sup>libvpx</sup><br><sup>libwebp</sup><br><sup>libxml2</sup><br><sup>opencore-amr</sup><br><sup>opus</sup><br><sup>shine</sup><br><sup>snappy</sup><br><sup>soxr</sup><br><sup>speex</sup><br><sup>twolame</sup><br><sup>vid.stab</sup><br><sup>vo-amrwbenc</sup><br><sup>x264</sup><br><sup>x265</sup><br><sup>xvidcore</sup><br><sup>zimg</sup></td>
</tr>
<tr>
<td align="center"><sup>android system libraries</sup></td>
<td align="center" colspan=8><sup>zlib</sup><br><sup>MediaCodec</sup></td>
</tr>
<tr>
<td align="center"><sup>ios system libraries</sup></td>
<td align="center" colspan=8><sup>bzip2</sup><br><sup>AudioToolbox</sup><br><sup>AVFoundation</sup><br><sup>iconv</sup><br><sup>VideoToolbox</sup><br><sup>zlib</sup></td>
</tr>
<tr>
<tr>
<td align="center"><sup>macos system libraries</sup></td>
<td align="center" colspan=8><sup>bzip2</sup><br><sup>AudioToolbox</sup><br><sup>AVFoundation</sup><br><sup>Core Image</sup><br><sup>iconv</sup><br><sup>OpenCL</sup><br><sup>OpenGL</sup><br><sup>VideoToolbox</sup><br><sup>zlib</sup></td>
</tr>
<tr>
<td align="center"><sup>tvos system libraries</sup></td>
<td align="center" colspan=8><sup>bzip2</sup><br><sup>AudioToolbox</sup><br><sup>iconv</sup><br><sup>VideoToolbox</sup><br><sup>zlib</sup></td>
</tr>
</tbody>
</table>

 - `AVFoundation` is not available on `tvOS`
 - `VideoToolbox` is not available on LTS releases of `iOS` and `tvOS`
 - `zimg` is supported since `v4.5.1`

### 10. Versions

`FFmpegKit` binaries generated use the same major and minor version numbers as the upstream `FFmpeg` project. The
third and last number in the version string, if exists, is specific to `FFmpegKit`. It shows different releases from
the same `FFmpeg` release branch. 

`dev` part in the version string indicates that `FFmpeg` source code is cloned from the `FFmpeg` `master` branch and
the exact version number of `FFmpeg` is obtained using the `git describe --tags` command.

|    Platforms     |                                 FFmpegKit Version                                 | FFmpeg Version | Release Date |
|:----------------:|:---------------------------------------------------------------------------------:|:--------------:|:------------:|
|     Flutter      |   [6.0.3](https://github.com/arthenica/ffmpeg-kit/releases/tag/flutter.v6.0.3)    |      6.0       | Sep 19, 2023 |
|   React Native   | [6.0.2](https://github.com/arthenica/ffmpeg-kit/releases/tag/react.native.v6.0.2) |      6.0       | Sep 19, 2023 |
|     Flutter      |   [6.0.2](https://github.com/arthenica/ffmpeg-kit/releases/tag/flutter.v6.0.2)    |      6.0       | Sep 03, 2023 |
|   React Native   | [6.0.1](https://github.com/arthenica/ffmpeg-kit/releases/tag/react.native.v6.0.1) |      6.0       | Sep 03, 2023 |
|     Flutter      |   [6.0.1](https://github.com/arthenica/ffmpeg-kit/releases/tag/flutter.v6.0.1)    |      6.0       | Sep 03, 2023 |
|   React Native   | [6.0.0](https://github.com/arthenica/ffmpeg-kit/releases/tag/react.native.v6.0.0) |      6.0       | Aug 27, 2023 |
|     Flutter      |   [6.0.0](https://github.com/arthenica/ffmpeg-kit/releases/tag/flutter.v6.0.0)    |      6.0       | Aug 27, 2023 |
|      Android<br>Apple       |         [6.0](https://github.com/arthenica/ffmpeg-kit/releases/tag/v6.0)          |      6.0       | Aug 21, 2023 |
|   React Native   | [5.1.0](https://github.com/arthenica/ffmpeg-kit/releases/tag/react.native.v5.1.0) |     5.1.2      | Oct 02, 2022 |
|     Flutter      |   [5.1.0](https://github.com/arthenica/ffmpeg-kit/releases/tag/flutter.v5.1.0)    |     5.1.2      | Oct 02, 2022 |
|     Android<br>Apple      |         [5.1](https://github.com/arthenica/ffmpeg-kit/releases/tag/v5.1)          |     5.1.2      | Sep 29, 2022 |
|   React Native   | [4.5.2](https://github.com/arthenica/ffmpeg-kit/releases/tag/react.native.v4.5.2) |  4.5-dev-3393  | May 25, 2022 |
|     Flutter      |   [4.5.1](https://github.com/arthenica/ffmpeg-kit/releases/tag/flutter.v4.5.1)    |  4.5-dev-3393  | Jan 02, 2022 |
|   React Native   | [4.5.1](https://github.com/arthenica/ffmpeg-kit/releases/tag/react.native.v4.5.1) |  4.5-dev-3393  | Jan 02, 2022 |
|     Android      |       [4.5.1](https://github.com/arthenica/ffmpeg-kit/releases/tag/v4.5.1)        |  4.5-dev-3393  | Jan 01, 2022 |
|      Apple       |       [4.5.1](https://github.com/arthenica/ffmpeg-kit/releases/tag/v4.5.1)        |  4.5-dev-3393  | Dec 30, 2021 |
|     Flutter      |   [4.5.0](https://github.com/arthenica/ffmpeg-kit/releases/tag/flutter.v4.5.0)    |  4.5-dev-2008  | Oct 05, 2021 |
|   React Native   | [4.5.0](https://github.com/arthenica/ffmpeg-kit/releases/tag/react.native.v4.5.0) |  4.5-dev-2008  | Oct 01, 2021 |
| Android<br>Apple |         [4.5](https://github.com/arthenica/ffmpeg-kit/releases/tag/v4.5)          |  4.5-dev-2008  | Sep 18, 2021 |
| Android<br>Apple |         [4.4](https://github.com/arthenica/ffmpeg-kit/releases/tag/v4.4)          |  4.4-dev-3015  | Mar 03, 2021 |

### 11. LTS Releases

`FFmpegKit` binaries are published in two release variants: `Main Release` and `LTS Release`. 

- Main releases include complete functionality of the library and support the latest SDK/API features.

- LTS releases are customized to support a wider range of devices. They are built using older API/SDK versions, so some features are not available on them.

This table shows the differences between two variants.

|        | Main Release |                        LTS Release                        |
| :----: | :----: |:---------------------------------------------------------:|
| Android API Level | 24 |                            16                             | 
| Android Camera Access | Yes |                             -                             |
| Android Architectures | arm-v7a-neon<br/>arm64-v8a<br/>x86<br/>x86-64 | arm-v7a<br/>arm-v7a-neon<br/>arm64-v8a<br/>x86<br/>x86-64 |
| iOS Min SDK | 12.1 |                            10                             |
| iOS VideoToolbox | Yes |                             -                             |
| iOS AVFoundation | Yes |                             -                             |
| iOS Architectures | arm64<br/>arm64-simulator<br/>arm64-mac-catalyst<br/>x86-64<br/>x86-64-mac-catalyst |            armv7<br/>arm64<br/>i386<br/>x86-64            |
| iOS Bundle Format | XCFrameworks |                        Frameworks                         |
| Mac Catalyst Min Version | 14.0 |                             -                             |
| macOS Min SDK | 10.15 |                           10.12                           |
| macOS AVFoundation | Yes |                             -                             |
| macOS Architectures | arm64<br/>x86-64 |                          x86-64                           |
| macOS Bundle Format | XCFrameworks |                        Frameworks                         |
| tvOS Min SDK | 11.0 |                           10.0                            |
| tvOS VideoToolbox | Yes |                             -                             |
| tvOS Architectures | arm64<br/>x86-64<br/>arm64-simulator |                     arm64<br/>x86-64                      |
| tvOS Bundle Format | XCFrameworks |                        Frameworks                         |

### 12. Documentation

A more detailed documentation is available under [Wiki](https://github.com/arthenica/ffmpeg-kit/wiki).

### 13. Test Applications

You can see how `FFmpegKit` is used inside an application by running test applications created under 
[FFmpegKit Test](https://github.com/arthenica/ffmpeg-kit-test) project.

All applications are identical and supports command execution, video encoding, accessing https urls, encoding audio,
burning subtitles, video stabilisation, pipe operations and concurrent command execution.

### 14. License

`FFmpegKit` library alone is licensed under the `LGPL v3.0`.

`FFmpegKit` bundles (`.aar` archives, `frameworks`, `xcframeworks`), which include both  `FFmpegKit` and `FFmpeg`
libraries, are also licensed under the `LGPL v3.0`. However, if the source code is built using the optional
`--enable-gpl` flag or prebuilt binaries with `-gpl` postfix are used, then `FFmpegKit` bundles become subject to the
`GPL v3.0`. Because, `FFmpeg` is licensed under the `GPL v3.0` in those bundles. And that makes the whole bundle
effectively subject to the `GPL v3.0`.

`FFmpegKit` build scripts always configure `FFmpeg` with `--enable-version3` option. And never enable non-free
libraries. Thus, `FFmpeg` libraries created by `FFmpegKit` are licensed under the `LGPL v3.0` by default. Only when
`--enable-gpl` is provided they become subject to `GPL v3.0`. That is how prebuilt binaries with `-gpl` postfix are
compiled.

Refer to [Licenses](https://github.com/arthenica/ffmpeg-kit/wiki/Licenses) to see the licenses of all libraries.
[Trademark](https://github.com/arthenica/ffmpeg-kit/wiki/Trademark) lists the trademarks used in the `FFmpegKit`
documentation.

### 15. Patents

It is not clearly explained in their documentation, but it is believed that `FFmpeg`, `kvazaar`, `x264` and `x265`
include algorithms which are subject to software patents. If you live in a country where software algorithms are
patentable then you'll probably need to pay royalty fees to patent holders. We are not lawyers though, so we recommend
that you seek legal advice first. See [FFmpeg Patent Mini-FAQ](https://ffmpeg.org/legal.html).

`openh264` clearly states that it uses patented algorithms. Therefore, if you build `ffmpeg-kit` with `openh264` and
distribute that library, then you are subject to pay MPEG LA licensing fees. Refer to
[OpenH264 FAQ](https://www.openh264.org/faq.html) page for the details.

### 16. Trademarks

<sup>1</sup> `FFmpeg` is a trademark of [Fabrice Bellard](http://www.bellard.org/). `FFmpegKit` is an independent project and not affiliated with the `FFmpeg` trademark holder.

### 17. Contributing

See our [CONTRIBUTING](CONTRIBUTING.md) guide.

### 18. See Also

- [FFmpeg API Documentation](https://ffmpeg.org/doxygen/4.0/index.html)
- [FFmpeg Wiki](https://trac.ffmpeg.org/wiki/WikiStart)
- [FFmpeg External Library Licenses](https://www.ffmpeg.org/doxygen/4.0/md_LICENSE.html)


---

# FFmpeg-Kit Universal

Independent build of FFmpeg-Kit with all modules for React Native projects. This package provides pre-compiled FFmpeg libraries for iOS and Android, eliminating the need for external dependencies or third-party repositories.

## 🎯 Features

- **All Modules Included**: min, audio, video, https, full, full-gpl
- **Independent Build**: No external repository dependencies
- **Universal Package**: Single package for all your React Native projects
- **Pre-compiled Binaries**: iOS XCFrameworks and Android native libraries
- **Module Selection**: Choose only the modules you need
- **Easy Integration**: Automated configuration scripts

## 📋 System Requirements

### macOS (for iOS/Android development)
```bash
# Required packages
brew install git
brew install node
brew install npm
brew install cocoapods
brew install --cask android-studio

# Xcode (from App Store)
# Xcode Command Line Tools
xcode-select --install

# React Native CLI
npm install -g react-native-cli
# or
npm install -g @react-native-community/cli
```

### Linux (for Android development only)
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install git nodejs npm openjdk-11-jdk wget unzip

# CentOS/RHEL/Fedora
sudo yum install git nodejs npm java-11-openjdk-devel wget unzip
# or on newer versions:
sudo dnf install git nodejs npm java-11-openjdk-devel wget unzip

# Android SDK/NDK setup
# Download Android Studio or SDK tools
# Set environment variables:
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# React Native CLI
npm install -g react-native-cli
```

## 🚀 Quick Start

### 1. Build the Universal Package

```bash
# Clone the ffmpeg-kit repository
git clone https://github.com/your-repo/ffmpeg-kit-16KB.git
cd ffmpeg-kit-16KB

# Create the universal package
./create-universal-package.sh
```

This will create a `ffmpeg-kit-universal` directory with all modules and platforms.

### 2. Install in Your React Native Project

```bash
# Navigate to your React Native project
cd /path/to/your/react-native-project

# Remove any existing ffmpeg-kit packages
npm uninstall ffmpeg-kit-react-native ffmpeg-kit-react-native-audio

# Install the universal package
npm install /path/to/ffmpeg-kit-16KB/ffmpeg-kit-universal/ReactNative --legacy-peer-deps

# Configure the module you want to use
npx ffmpeg-kit-universal install-module audio
```

### 3. Configure iOS (macOS only)

```bash
# Follow the generated configuration in ffmpeg-kit-ios-config.txt
# Or manually add to ios/Podfile:

pod 'ffmpeg-kit-react-native-universal/audio', :path => '../node_modules/ffmpeg-kit-universal/ReactNative'

# Install pods
cd ios
pod install
cd ..
```

### 4. Configure Android

```bash
# Follow the generated configuration in ffmpeg-kit-android-config.txt
# Or manually configure:

# 1. Add to android/settings.gradle:
include ':ffmpeg-kit-universal'
project(':ffmpeg-kit-universal').projectDir = new File(rootProject.projectDir, '../node_modules/ffmpeg-kit-universal/ReactNative/android')

# 2. Add to android/app/build.gradle dependencies:
dependencies {
    implementation project(':ffmpeg-kit-universal')
}

# 3. Add to android/app/build.gradle android section:
android {
    sourceSets {
        main {
            jniLibs.srcDirs += ["../../node_modules/ffmpeg-kit-universal/Android/audio/libs"]
        }
    }
}
```

### 5. Update Your Code

```javascript
// Import the universal package
import { FFmpegKit, FFprobeKit, ReturnCode } from 'ffmpeg-kit-universal';

// Example usage
const convertAudio = async () => {
  const session = await FFmpegKit.execute('-i input.mp3 -c:a aac output.aac');
  const returnCode = await session.getReturnCode();
  
  if (ReturnCode.isSuccess(returnCode)) {
    console.log('✅ Conversion successful!');
  } else {
    console.log('❌ Conversion failed');
  }
};
```

## 📦 Available Modules

| Module | Size | Description | Features |
|--------|------|-------------|----------|
| `min` | ~30MB | Basic functionality | iOS AudioToolbox, VideoToolbox, Core codecs |
| `audio` | ~45MB | Audio processing | MP3, AAC, Opus, Vorbis, Speex, Audio filters |
| `video` | ~60MB | Video processing | WebP, LibASS, FontConfig, FreeType, VP8/VP9 |
| `https` | ~50MB | Network streaming | HTTPS/TLS, GnuTLS, Secure protocols |
| `full` | ~80MB | Complete LGPL | All non-GPL libraries, Maximum compatibility |
| `full-gpl` | ~90MB | Complete with GPL | x264, x265, XviD, All features |

## 🛠 Build Scripts

### Main Build Script
```bash
# Location: /path/to/ffmpeg-kit-16KB/create-universal-package.sh
# Purpose: Creates the universal package with all modules and platforms
# Usage:
./create-universal-package.sh
```

### Module Installer Script
```bash
# Location: Inside the generated package
# Purpose: Configures a specific module for your project
# Usage:
npx ffmpeg-kit-universal install-module <module-name>

# Examples:
npx ffmpeg-kit-universal install-module audio
npx ffmpeg-kit-universal install-module full-gpl
npx ffmpeg-kit-universal help
```

## 📁 Package Structure

```
ffmpeg-kit-universal/
├── iOS/                           # iOS XCFrameworks
│   ├── audio/                     # Audio module frameworks
│   ├── video/                     # Video module frameworks
│   ├── full/                      # Full module frameworks
│   └── ...                        # Other modules
├── Android/                       # Android native libraries
│   ├── audio/libs/                # Audio module .so files
│   │   ├── arm64-v8a/            # ARM64 libraries
│   │   ├── armeabi-v7a/          # ARM libraries
│   │   ├── x86/                  # x86 libraries
│   │   └── x86_64/               # x86_64 libraries
│   └── ...                        # Other modules
└── ReactNative/                   # React Native package
    ├── src/                       # TypeScript/JavaScript source
    ├── ios/                       # iOS bridge files
    ├── android/                   # Android bridge files
    ├── package.json               # npm package configuration
    ├── ffmpeg-kit-react-native-universal.podspec
    └── install-module.js          # CLI installer
```

## 🔧 Commands Reference

### Essential Commands

```bash
# Build universal package
cd /path/to/ffmpeg-kit-16KB
./create-universal-package.sh

# Install in React Native project
npm install /path/to/ffmpeg-kit-16KB/ffmpeg-kit-universal/ReactNative --legacy-peer-deps

# Configure module
npx ffmpeg-kit-universal install-module audio

# iOS setup
cd ios && pod install && cd ..

# Android setup (follow generated config files)
# Build project
npx react-native run-ios
npx react-native run-android
```

### Troubleshooting Commands

```bash
# Clean iOS
cd ios
rm -rf Pods Podfile.lock DerivedData
pod install --repo-update
cd ..

# Clean Android
cd android
./gradlew clean
cd ..

# Clean React Native
rm -rf node_modules
npm install

# Verify package installation
ls -la node_modules/ffmpeg-kit-universal
```

## 🎯 Usage Examples

### Basic Audio Conversion
```javascript
import { FFmpegKit } from 'ffmpeg-kit-universal';

const convertAudio = async () => {
  await FFmpegKit.execute('-i input.mp3 -c:a aac output.aac');
};
```

### Get Media Information
```javascript
import { FFprobeKit } from 'ffmpeg-kit-universal';

const getMediaInfo = async () => {
  const session = await FFprobeKit.getMediaInformation('video.mp4');
  const info = await session.getMediaInformation();
  console.log('Duration:', info.getDuration());
};
```

### Video Processing (video module)
```javascript
import { FFmpegKit } from 'ffmpeg-kit-universal';

const convertVideo = async () => {
  await FFmpegKit.execute('-i input.mp4 -c:v libx264 -c:a aac output.mp4');
};
```

## ⚠️ Important Notes

1. **Module Selection**: Choose the smallest module that meets your needs to minimize app size
2. **iOS Requirements**: Requires Xcode and macOS for iOS development
3. **Android Requirements**: Works on macOS, Linux, and Windows
4. **Legacy Peer Deps**: Always use `--legacy-peer-deps` flag when installing
5. **Clean Builds**: Always clean previous builds when switching modules

## 🚀 Distribution

To distribute this package to colleagues:

1. **Share the Repository**:
```bash
git clone https://github.com/your-repo/ffmpeg-kit-16KB.git
cd ffmpeg-kit-16KB
./create-universal-package.sh
```

2. **Share the Built Package**:
```bash
# Compress the built package
tar -czf ffmpeg-kit-universal.tar.gz ffmpeg-kit-universal/
# Share ffmpeg-kit-universal.tar.gz

# Extract and use
tar -xzf ffmpeg-kit-universal.tar.gz
npm install ./ffmpeg-kit-universal/ReactNative --legacy-peer-deps
```

3. **Publish to Private NPM** (Optional):
```bash
cd ffmpeg-kit-universal/ReactNative
npm publish --registry=https://your-private-registry.com
```

## 📞 Support

- Generated configuration files: `ffmpeg-kit-ios-config.txt`, `ffmpeg-kit-android-config.txt`
- Usage examples: `ffmpeg-kit-usage-example.js`
- Module help: `npx ffmpeg-kit-universal help`

## 📄 License

- LGPL-3.0 for most modules
- GPL-3.0 for `full-gpl` module (includes GPL libraries like x264, x265)