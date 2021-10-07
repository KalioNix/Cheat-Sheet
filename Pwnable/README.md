# Cheat Sheet - Pwnable

### /bin/sh 주소 찾기   
* ```ldd 파일명```으로 어떤 라이브러리 쓰는지 체크 후 ```strings -tx 사용라이브러리 | grep "/bin/sh"```   
* gdb에서 ```find src_address, dst_address, "/bin/sh"```로 검색
  
### gdb 명령어 모음   
* gdb에 ```-p PID```혹은 ```--pid=PID```를 인자로 전달하면 PID에 해당하는 프로세스에 gdb를 attach할 수 있다.
* ```info proc map``` 현재 진행되는 프로세서에서 맵핑된 메모리 정보를 보여준다.
