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


