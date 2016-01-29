# GitFTPTest<br/>
1.Git 설치 <br/>

- Windows<br/>
https://git-for-windows.github.io/<br/>

- Mac<br/>
Mac에 Git을 설치하는 방법 중에서 Xcode Command Line Tools가 설치하기 가장 쉽다. Mavericks(10.9)부터는 Terminal을 열고 바로 git을 실행하는 것으로 시작할 수 있다. git이 설치돼 있지 않으면 설치하라고 안내해준다.<br/>
좀 더 최신 버전이 필요하면 바이너리 인스톨러로 설치할 수 있다. OSX용 Git 인스톨러는 Git 웹사이트에서 관리하고 http://git-scm.com/download/mac 에서 내려받는다.<br/>
참고 : https://git-scm.com/book/ko/v2/%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0-Git-%EC%84%A4%EC%B9%98<br/>
<br/>
2.Git FTP 설치<br/>
- Windows<br/>
Git Bash를 이용하여 아래의 명령어를 입력하면 자동으로 설치된다.<br/>
$ cd ~<br/>
$ git clone https://github.com/git-ftp/git-ftp<br/>
$ cd git-ftp && chmod +x git-ftp<br/>
$ cd /bin<br/>
$ ln -s ~/git-ftp/git-ftp<br/>
<br/>
- Mac<br/>
HomeBrew를 이용한다.<br/>
( 설치 하는 방법은 터미널을 키고 아래의 명령어를 입력 )<br/>
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" <br/>
HomeBrew 설치후 아래의 명령어를 입력한다.<br/>
# brew install git<br/>
# brew install curl --with-ssl --with-libssh2<br/>
# brew install git-ftp<br/>
<br/>
참고 : https://github.com/git-ftp/git-ftp<br/>
<br/>
3.Git FTP 배포 방법<br/>
- Git Bash를 이용<br/>
Git 다음 명령어들은 해당 로컬 git 저장소 경로로 이동한 후에 실행해야 한다.<br/>
<br/>
1)로컬에만 파일이있고 아직 FTP에 아무 파일도 업로드 되지 않은 상태라면 다음 명령어를 사용하여 초기화 한다.<br/>
<br/>
 git ftp init --user [ftp사용자] --passwd [ftp비번] - ftp://www.example.com<br/>
<br/>
2)로컬에 파일이 있으며 이미 동일한 모든 파일이 수동으로 FTP에도 업로드가 되어있는 경우 다음명령어를 통해 초기화 한다.<br/>
<br/>
 git ftp catchup -u [ftp사용자] -p [ftp비번] - ftp://www.example.com<br/>
 <br/>
3)이미 위의 명령어들을 통해 초기화 되어있는 상황에서, 로컬에 수정사항을 서버로 업로드하고싶을경우 다음 명령어를 사용한다.<br/>
<br/>
 git ftp push -u [ftp사용자] -p [ftp비번] - ftp://www.example.com<br/>
<br/>
깃 설정을 통해 미리 아이디, 패스워드, 소스경로, FTP경로를 설정할 수 있다.<br/>
 $ git config git-ftp.user john<br/>
 $ git config git-ftp.url ftp.example.com<br/>
 $ git config git-ftp.password secr3t<br/>
 $ git config git-ftp.syncroot path/dir<br/>

<br/>
- SourceTree를 이용하는 방법<br/>
1) Mac<br/>
gitFtpInit.sh, gitFtpPush.sh 파일을 다운받고 /usr/local/bin 경로로 복사한다.<br/>
두 파일을 사용가능하도록 권한을 준다.<br/>
chmod +x /usr/local/bin/gitFtpInit.sh<br/>
chmod +x /usr/local/bin/gitFtpPush.sh<br/>
<br/>
SourceTree 를 열고 Preferences/Custom Actions를 누른다.(한글인 경우 도구->옵션으로 들어간 후 커스텀 액션탭으로 이동)<br/>
Add를 누르고 <br/><br/>
Menu Caption : Git FTP Init<br/>
Script to run에 다음 파일을 선택한다. /usr/local/bin/gitFtpInit.sh<br/>
Parameters : $REPO username password url<br/>
Example) $REPO GitTester GitTester ftp://localhost/<br/>
 <br/>
gitFtpPush.sh도 같은 방법으로 추가한다.(Menu Caption은 Git FTP Push로)<br/>
<br/>
저장소 경로가 초기화 되지 않았을 경우에는 Actions -> Custom Actions에 있는 Git FTP Init버튼을<br/>
수정사항을 서버로 업로드 하고 싶을 경우 Actions -> Custom Actions에 있는 Git FTP Push를 이용한다.<br/>
<br/>

참고 : http://eppz.eu/blog/git-to-ftp/
