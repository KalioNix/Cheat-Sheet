 # Return-to-Csu  
   
64bit 바이너리는 함수를 호출할 때 인자를 레지스터로 전달한다.   
이러한 특이점 때문에 흔히 볼 수 있는 문제가 gadget 부족이다.   
<br/>

이러한 상황에서 사용할 수 있는 기법이 Return to Csu이다.   
<br/>

## Return to Csu란?
![](1.PNG)   
위 사진을 보면 알 수 있듯이 __libc_csu_init()에서는 __init_array에 설정된 함수 포인터를 읽어서 호출하는 과정이 있는데 이 부분을 이용하여 rsi, rdi, rdx를 쉽게 구성할 수 있다.
