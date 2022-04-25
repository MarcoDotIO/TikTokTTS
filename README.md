# TikTokTTS
- Shell script to play the output of TikTok's TTS API
- Based on command posted from @scanlime on [Twitter](https://twitter.com/scanlime/status/1512288857596653568).

# Requirements
- gbase64 for MacOS (coreutils package) or base64 for Linux
- jq
- FFMPEG
- cURL

# Usage
`$ ./TikTokTTS.sh <Phrase to Say>`

# Example
`$ ./TikTokTTS.sh Hi my name is Carmen Winstead. I\'m 17 years old. I am very similar to you. Did I mention to you that I\'m dead.`

# Note
- English contractions use `\'` for the apostrophe
