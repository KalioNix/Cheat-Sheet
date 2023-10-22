//윈도우 오류 처리
WSAGetLastError()

//오류 코드를 문자열로 바꾸기
DWORD FormatMessage(
    DWORD   dwFlags,        // FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM
    LPCVOID lpSource,       // NULL
    DWORD   dwMessageId,    // WSAGetLastError() 리턴값(오류코드)
    DWORD   dwLanguageId,   // MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT) 오류 메시지언어, 시스템 기본 언어
    LPTSTR  lpBuffer,       // 오류 메시지의 시작 주소값 저장 변수, LocalFree()로 메모리 반환 필요
    DWORD   nSize,          // 0
    va_list *Arguments      // NULL
);

void err_quit(const char *msg){
    LPVOID lpMsgBuf;
    FormatMessage(
        FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM,
        NULL,
        WSAGetLastError(),
        MAKELAGNID(LANG_NEUTRAL, SUBLANG_DEFAULT),
        (char*)&lpMsgBuf, 0, NULL
    );
    MessageBoxA(NULL, (const char*)lpMsgBuf, msg, MB_ICONERROR);
    LocalFree(lpMsgBuf);
    exit(1);
}


// 윈속 초기화와 종료
int WSAStartup(
    WORD wVersionRequested, // 프로그램이 요구하는 최상위 윈속 버전
                            // 하위 8비트 = major 버전, 상위 8비트 minor 버전
    LPWSDATA lpWSAData      // WSADATA 구조체
);

WSADATA wsa;
WSAStartup(MAKEWORD(2,2), &wsa);
WSACleanup();

// socket
SOCKET socket(
    int af,         // 주소체계 AF_INET, AF_INET6, AF_BTH
    int type,       // SOCK_STREAM, SOCK_DGRAM
    int protocol    // 0
);

SOCKET sock = socket(AF_INET, SOCK_STREAM, 0);
closesocket(sock);


//소켓 주소 구조체
struct sockaddr{
    unsigned short   sa_family;     // 주소 체계(AF_INET)
    char             sa_data[14];   // 실제 주소 저장하기 위한 변수
}

struct sockaddr_in{
    short           sin_family;     // 주소 체계
    unsigned short  sin_port;       // 포트 번호
    struct in_addr  sin_addr;       // IP 주소(32비트의 in_addr 구조체)
    char            sin_zero[8];    // 0
}

struct sockaddr_in addr;
addr.sin_family = AF_INET;
addr.sin_port = htons(2000);
addr.sin_addr.s_addr = htonl(INADDR_ANY);

struct sockaddr_in6{
    short           sin6_family;   
    u_short         sin6_port;
    u_long          sin6_flowinfo;  // 0
    struct in6_addr sin6_addr;
    u_long          sin6_scope_id;  // 0
}


//바이트 정렬 함수
hton*() // host -> network
ntoh*() // network -> host


//IP 주소 변환 함수
inet_addr() // IPv4만 지원
inet_ntoa()

inet_addr("18.34.1.5");
inet_ntoa(addr.sin_addr);

WSAStringToAddress()  // 윈도우 전용 함수
WSAAddressToString()


int inet_pton(int af, const char *src, void *dst);
const char *inet_ntop(int af, const void *src, char *dst, size_t size);

inet_pton(AF_INET, "18.34.1.6", &addr.sin_addr);
addr.sin_port = htons(9000);

char ipaddr[INET_ADDRSTRLEN];
inet_ntop(AF_INET, &clientaddr.sin_addr, ipaddr, sizeof(ipaddr));
ntohs(clientaddr.sin_port);


//DNS 변환 함수
struct hostent *gethostbyname(  // domain -> ip
    const char *name // 도메인 이름
);

struct hostent *gethostbyaddr(
    const char *addr;   // IP 주소(네트워크 바이트 정)
    int        len,     // IP 주소 길이
    int        type     // 주소 체계(AF_INET)
);

struct hostent{
    char    *h_name;        // 공식 도메인 이름
    char    **h_aliases;    // 별명
    short   h_addrtype;     // 주소 체계
    short   h_length;       // IP 주소 길이
    short   **h_addr_list;  // 네트워크 정렬된 IP 주소
#define h_addr h_addr_list[0]
};

const char *name;
struct in_addr *addr;
struct hostent *ptr = gethostbyname(name);
memcpy(addr, ptr->h_addr, ptr->h_length);

struct in_addr addr, char *name, int namelen;
struct hostent *ptr = gethostbyaddr((const char *)&addr, sizeof(addr), AF_INET);
strncpy(name, ptr->h_name, namelen)


netstat -a -n -p tcp | findstr 9000

//TCP 서버 클라이언트 함수
int bind(
    int sock,                       // 클라이언트 접속을 위한 소켓
    const struct sockaddr *addr,    // 소켓 주소 구조체
    socklen_t addrlen               // 소켓 주소 구조체의 길이
);

bind(listen_sock, (struct sockaddr *)&serveraddr, sizeof(serveraddr));

int listen(
    SOCKET sock,    // 클라이언트 접속을 위한 소켓(bind로 설정한 상태)
    int backlog     // 서버에 접속 가능한 클라이언트 수(SOMAXCONN = 프로토콜에서 지원 가능한 최댓값)
);

listen(listen_sock, SOMAXCONN);

SOCKET accept(
    SOCKET sock,            // 클라이언트 접속을 위한 소켓
    struct sockaddr *addr,  // 클라이언트 주소 구조체 전달
    int *addrlen            // 소켓 주소 구조체 크기
);

client sock = accept(listen_sock, (struct sockaddr *)&clientaddr, &addrlen);

itn connect(
    SOCKET sock,                    // 서버와 통신을 위한 소켓
    const struct sockaddr *addr,    // 소켓 주소 구조체
    int addrlen                     // 소켓 주소 구조 길이
);

connect(sock, (struct sockaddr *)&serveraddr, sizeof(serveraddr));


//TCP 데이터 전송 함수
TCP : send(), recv();
UDP : sendto(), recvfrom();
윈도우 : WSASend*(), WSARecv*();
리눅스 : write(), read();

int send(
    SOCK sock,          // 통신할 대상과 연결된 소켓
    const char *buf,    // 보낼 버퍼의 주소
    int len,            // 데이터 크기
    int flags           // 0
);

int recv(
    SOCKET sock,    // 연결된 소켓
    char *buf,      // 받을 버퍼의 주소
    int len,        // 데이터 크기
    int flags       // MSG_PEEK / MSG_WAITALL
);


//구조체 멤버 맞춤
#pragma pack(1)
구조체 작성
#pragma pack()


//스레드 생성과 종료
HANDLE CreateThread(
    LPSECURITY_ATTRIBUTES lpThreadAttributes,   // SECURITY_ATTRIBUTES 구조체를 통해 정보 전달, 일반적으로 NULL 사용
    SIZE_T dwStackSize,                         // 스레드에 할당되는 스택 크기, 0 : 헤더에 들어있는 기본 크기 사용(1MB)
    SPTHREAD_START_ROUTINE lpStartAddress,      // 스레드 함수의 시작 주소
    LPVOID lpParameter,                         // 스레드 함수에 전달할 인자
    DWORD dwCreationFlags,                      // 스레드 생성을 제어, 0(곧바로 실행) 또는 CREATE_SUSPENDED(ResumeThread() 함수 호출 전까지 실행되지 않음)
    LPDWORD lpThreadId                          // NULL
);

void ExitThread(
    DWORD dwExitCode    // 종료 코드
);

BOOL TerminateThread(
    HANDLE hThread,     // 종료할 스레드를 가리키는 핸들
    DWORD dwExitCode    // 종료 코드
);

CloseHandle();  // 스레드 사용하지 않음 선언

Point3D pt1 = {10,20,30};
HANDLE hThread = CreateThread(NULL, 0, MyThreadFunction, &pt1, 0, NULL);
CloseHandle(hThread);


//우선순위 클래스
REALTIME_PRIORITY_CLASS(실시간)
HIGH_PRIORITY_CLASS(높음)
ABOVE_NORMAL_PRIORITY_CLASS(높은 우선순위)
NORMAL_PRIORITY_CLASS(보통)
BELOW_NORMAL_PRIORITY_CLASS(낮은 우선순위)
IDLE_PRIOIRY_CLASS(낮음)

//우선순위 레벨
THREAD_PRIORITY_TIME_CRITICAL
THREAD_PRIORITY_HIGHEST
THREAD_PRIORITY_ABOVE_NORMAL
THREAD_PRIORITY_NORMAL
THREAD_PRIORITY_BELOW_NORMAL
THREAD_PRIORITY_LOWEST
THREAD_PRIORITY_IDLE

//스레드 우선순위 변경
BOOL SetThreadPriority(
    HANDLE hThread, // 스레드 핸들
    int nPriority   // 우선순위 레벨
);

int GetThreadPriority(
    HANDLE hThread  // 스레드 핸들
);

SetThreadPriority(hThread, THREAD_PRIORITY_ABOVE_NORMAL);
GetThreadPriority(hThread);


//스레드 종료 기다리기
DWORD WaitForSingleObject(
    HADNLE hHandle,         // 기다릴 대상 스레드
    DWORD dwMilliseconds    // 대기시간, INFINITE 설정시 무한 대기
);

WaitForSingleObject(hThread, 1000);

WaitForMultipleObjects(
    DWORD nCount,               // 배열 원소 개수
    const HANDLE *lpHandles,    // 배열 시작 주소
    BOOL bWaitAll,              // TRUE: 모든 스레드 종료할 때까지 대기, FALSE: 한 스레드 종료시 즉시 리턴
    DWORD dwMilliseconds        // 대기시간(WaitForSingleObject와 동일)
);

HANDLE hThread[2];
hThread[0] = CreateThread(....);
hThread[1] = CreateThread(....);
WaitForMultipleObjects(2, hThread, TRUE, INFINITE);

DWORD SuspendThread(
    HANDLE hThread  // 일시 중지할 스레드 핸들
);

DWORD ResumeThread(
    HANDLE hThread  // 재시작할 스레드 핸들
);

void Sleep(
    DWORD dwMilliseconds    //밀리초
);


//임계 영역
CRITICAL_SECTION case   // 전역 변수

InitializeCriticalSection(&cs); // 임계 영역 사용 전 초기화
스레드 작업 진행
DeleteCriticalSection(&cs);     // 임계 영역 삭제

EnterCriticalSection(&cs);      // 공유자원 접근 전 호출
공유자원 접근
LeaveCriticalSection(&cs);      // 공유자원 사용 마침


//이벤트
자동 리셋 이벤트 : 신호 상태로 바꾸면 기다리는 스레드 중 하나만 자동으로 깨움, ResetEvent() 필요없음
수동 리셋 이벤트 : 신호 상태로 바꾸면 모두 깨운 후 신호 상태 유지, ResetEvent() 필요

HANDLE CreateEvent(
    LPSECURITY_ATTRIBUTES lpEventAttributes,    // 보안 디스크립터
    BOOL bManualReset,                          // True: 자동 리셋, False: 수동 리셋
    BOOL bInitialState,                         // True: 신호, False: 비신호
    LPCTSTR lpName                              // 이벤트에 부여할 내용, NULL: 같은 프로세스에 속한 스레드만 동기화
);




