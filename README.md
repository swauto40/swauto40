# Misc Linux stuff
![Screenshot_2021-07-25_00-22-56](https://user-images.githubusercontent.com/78081080/126874800-3c5a08c0-d232-41e5-870e-0bdf2d34fa2a.png)
* bash  
* post-install  
* rsync backup  
* firejail  
* thunar  
* other  

## firejail

I recommend using multiple profiles for any online account you use. Same with e-mail accounts with Thunderbird
> `firejail --seccomp firefox -ProfileManager %u`  
> `firejail --seccomp thunderbird -ProfileManager %u`  

I don't trust what I download
> `firejail --seccomp transmission-gtk %U`  

I don't trust VeraCrypt, but I still use a few volumes for Windows compatibility
> `firejail --noprofile --net=none /usr/bin/veracrypt`  

Prevent video metadata from phoning home
> `firejail --seccomp --net=none mpv --player-operation-mode=pseudo-gui -- %U`  

## Thunar fm custom actions

Create backup file
> `cp %n %n.old`

Convert image for upload
> `convert -strip -resize 1024x768 %N WEB_%N.jpg`

Convert images to PDF
> `convert %N PDF_%n.pdf`

Convert image to CBT
> `tar -cf %d.cbt %N`

Create tar.xz archive
> `tar -cv -I 'xz -vve8T10' -f %n.tar.xz %N`

Tesseract OCR
> `tesseract %n OCR`

Wipe video metadata
> `ffmpeg -i %N -map_metadata -1 -c:v copy -c:a copy meta_%N`

## youtube-dl
1080p mkv
> `youtube-dl --retries 50 --fragment-retries 50 --no-playlist --ignore-errors --socket-timeout 20 --format "bestvideo[height<=1080]+bestaudio"`  























