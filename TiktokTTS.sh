STR=""

for word in "$@"
do
    STR+=${word}
    STR+="%20"
done

unameOut="$(uname -s)"

case "${unameOut}" in
    Linux*)     curl -s -X POST 'https''://api16-normal-useast5.us.tiktokv.com/media/api/text/speech/invoke/?text_speaker=en_us_002&req_text=HelloWorld'| jq .data.v_str | base64 -di | ffplay -autoexit -volume 10 -f mp3 -;;
    Darwin*)    curl -s -X POST 'https''://api16-normal-useast5.us.tiktokv.com/media/api/text/speech/invoke/?text_speaker=en_us_002&req_text='${STR} | jq .data.v_str | gbase64 -di | ffplay -autoexit -volume 10 -f mp3 -;;
    *)          echo "THIS MACHINE DOES NOT SUPPORT THIS SCRIPT!!!;;"
esac
