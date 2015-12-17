# GitFTPTest
1. Git 설치
- Windows
https://git-for-windows.github.io/

- Mac
Mac에 Git을 설치하는 방법 중에서 Xcode Command Line Tools가 설치하기 가장 쉽다. Mavericks(10.9)부터는 Terminal을 열고 바로 git을 실행하는 것으로 시작할 수 있다. git이 설치돼 있지 않으면 설치하라고 안내해준다.
좀 더 최신 버전이 필요하면 바이너리 인스톨러로 설치할 수 있다. OSX용 Git 인스톨러는 Git 웹사이트에서 관리하고 http://git-scm.com/download/mac 에서 내려받는다.
참고 : https://git-scm.com/book/ko/v2/%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0-Git-%EC%84%A4%EC%B9%98

2. Git FTP 설치
- Windows
Git Bash를 이용하여 아래의 명령어를 입력하면 자동으로 설치된다.
$ cd ~
$ git clone https://github.com/git-ftp/git-ftp
$ cd git-ftp && chmod +x git-ftp
$ cd /bin
$ ln -s ~/git-ftp/git-ftp

- Mac
HomeBrew를 이용한다.
( 설치 하는 방법은 터미널을 키고 아래의 명령어를 입력 )
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 
HomeBrew 설치후 아래의 명령어를 입력한다.
# brew install git
# brew install curl --with-ssl --with-libssh2
# brew install git-ftp

참고 : https://github.com/git-ftp/git-ftp

3. Git FTP 배포 방법
- Git Bash를 이용
Git 다음 명령어들은 해당 로컬 git 저장소 경로로 이동한 후에 실행해야 한다.

1)로컬에만 파일이있고 아직 FTP에 아무 파일도 업로드 되지 않은 상태라면 다음 명령어를 사용하여 초기화 한다.

 git ftp init --user [ftp사용자] --passwd [ftp비번] - ftp://www.example.com

2)로컬에 파일이 있으며 이미 동일한 모든 파일이 수동으로 FTP에도 업로드가 되어있는 경우 다음명령어를 통해 초기화 한다.

 git ftp catchup -u [ftp사용자] -p [ftp비번] - ftp://www.example.com
 
3)이미 위의 명령어들을 통해 초기화 되어있는 상황에서, 로컬에 수정사항을 서버로 업로드하고싶을경우 다음 명령어를 사용한다.

 git ftp push -u [ftp사용자] -p [ftp비번] - ftp://www.example.com
 
- SourceTree를 이용하는 방법
SourceTree 를 열고 Preferences/Custom Actions를 누른다.(한글인 경우 도구->옵션으로 들어간 후 커스텀 액션탭으로 이동)
Add를 누르고
Menu Caption : Git FTP Init
Script to run에 다음 파일을 선택한다. gitFtpInit.sh
Parameters : $REPO username password url
Example) $REPO GitTester GitTester ftp://localhost/
 
gitFtpPush.sh도 같은 방법으로 추가한다.(Menu Caption은 Git FTP Push로)


