# Misc Linux stuff
![Screenshot_2021-07-24_23-13-16](https://user-images.githubusercontent.com/78081080/126872817-88fc1872-a86b-445f-9a53-8e8c2d45d599.png)  
* bash  
* post-install  
* rsync backup  
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

Convert image for upload to social media
> `convert -strip -resize 1024x768 %N WEB_%N.jpg`

Convert images to PDF
> `convert %N PDF_%n.pdf`

Convert image to CBT
> `tar -cf %d.cbt %N`

Create tar.xz archive
> `tar -cv -I 'xz -vve8T10' -f %n.tar.xz %N`

tessaract ocr
> `tesseract %n OCR`

Wipte video metadata
> `ffmpeg -i %N -map_metadata -1 -c:v copy -c:a copy meta_%N`

























