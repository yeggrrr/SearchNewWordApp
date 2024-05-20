# 🔎 신조어 검색 앱 만들기 🔎
#
# 📌 앱 설명
### 신조어를 검색하는 앱입니다. 궁금한 신조어를 검색하면, 하단에 뜻이 출력됩니다. 또한 새로운 신조어를 추가할 수 있습니다.
#
## 📌 구성
- StoryBoard, NavigationController
- 검색화면: BarButtonItem, TextField, Button, Label, ImageView
- 추가화면: Label, TextField, Button
#
## 📌 화면 설명
- 데이터는 DataStorage 파일에 따로 만들어 공용 저장소로 사용
## <검색화면>
- 검색어에 따른 설명 문구 출력
- 재검색 시 textField가 초기화되도록 구현
- 상단 추천 버튼을 통해 검색 가능
- 상단 검색어 추천 버튼 클릭 or 검색 버튼 클릭 시 추천 버튼 문구가 랜덤으로 나오도록 구현
- 상단 barButtonItem(+)을 통해 추가하기 화면으로 이동
## <추가화면>
- 추가하고 싶은 신조어와 의미를 적은 후, 추가 버튼을 눌러 추가할 수 있도록 구현
- 추가하기 버튼 클릭 시 alert가 나오도록 구현
- TextField에 내용을 입력하지 않고, 추가 버튼 클릭 시 알맞는 alert가 나오도록 구현
- keyboard return키 클릭 시, 키보드가 내려가도록 구현
#
## 📷 ScreenShot
|런치스크린|검색화면|추가화면|영상|
|:-:|:-:|:-:|:-:|
|<img src="https://github.com/yeggrrr/SearchNewWordApp/assets/161591832/123bca1b-6198-49e0-a0dc-1b766e220754" width="150"/>|<img src="https://github.com/yeggrrr/SearchNewWordApp/assets/161591832/c08fb20d-f922-4c46-b2c8-3685988dfceb" width="150"/>|<img src="https://github.com/yeggrrr/SearchNewWordApp/assets/161591832/ef47681a-26ed-4a83-b0ec-59e2f8e38880" width="150"/>|<img src="https://github.com/yeggrrr/SearchNewWordApp/assets/161591832/2679091f-5e39-4733-a787-9c40b1e0df8b" width="150"/>|

