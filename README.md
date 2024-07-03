<p align="center">
  <img src="https://github.com/DominoKorean/Pixel-Composer-Korean-Localization/raw/main/img/ko_banner.png" alt="Pixel Composer"/>
</p>

# Pixel-Composer-Korean-Localization
[Pixel Composer](https://github.com/Ttanasart-pt/Pixel-Composer)의 번역작업 및 공식 문서, 영상등의 한국어 번역작업을 위한 레퍼지토리입니다.

</br>

* [인터페이스 번역 다운로드](https://github.com/DominoKorean/Pixel-Composer-Korean-Localization/releases)

* [README 번역](/readme/README.md)

## 번역 현황
> 1.17.5 스팀 en 폴더 비교 기준


> [!NOTE]
> 이미 번역된 작업 검토 필요

* 인터페이스 번역
    * [X] UI.json
    * [X] words.json
    * [ ] nodes.json

* 문서 번역
  * [X] Getting started
  * [ ] [공식 문서](https://pixel-composer-doc.readthedocs.io)

* 영상 번역 ( 진행 안됨 )


</br>
</br>

# 한글패치 적용법 (윈도우)
윈도우 검색창또는 `Window + R` 단축키로 열리는 실행창에  
`%appdata%`라고 적은뒤 엔터를 치면  
`C:\Users\user\AppData\Roaming` 경로로 와지는데 여기서 AppData폴더로 빠진 뒤  
`C:\Users\user\AppData\Local`로 이동합니다.  
그 후 `C:\Users\user\AppData\Local\PixelComposer\Locale`로 이동합니다.  

그다음 [Realese](https://github.com/DominoKorean/Pixel-Composer-Korean-Localization/releases)로 이동해 **ko.zip**를 다운로드 받아 압축을 풀어줍니다.  
압축을 풀었다면 **ko**폴더를 `C:\Users\user\AppData\Local\PixelComposer\Locale`  
에 넣어준 후 Pixel Composer을 킵니다.  
( Pixel Composer가 이미 켜져 있었다면 재시작 해주셔야합니다. )  

이제 Pixel Composer에서 좌측 상단에 `File`에서 `Preferences`에 들어간 후  
좌측 패널에 `Interface`에서 `Interface Language`에서 ko 선택 후  
Pixel Composer을 재시작 해주시면 됩니다.

</br>

## 기초 사용 가이드 한국어 적용
> 한국어 패치를 먼저 적용해야 보입니다.  
> 처음 시작시 보시는걸 추천드립니다.

[이 파일](https://github.com/DominoKorean/Pixel-Composer-Korean-Localization/raw/main/Getting%20started.zip)을 먼저 다운로드 한 후 zip압축을 푼다음  
`C:\Users\user\AppData\Local\PixelComposer\Welcome files\Getting started`에  
내용물을 집어넣습니다.  

처음 프로그램을 실행시 나오는 스플래시 화면( 좌특 상단 `파일 / 스플레시화면` 에서도 열 수 있음 )  
에서 열 수 있습니다.
![](/img/src2024-07-03%20230635.png)



</br>
</br>

# 번역 기여하는 법
오역이나 더 나은 번역이 있다면 [Issues](https://github.com/DominoKorean/Pixel-Composer-Korean-Localization/issues)에서 재시할 수 있습니다.  
직접 번역을 수정하여 기여하고 싶을땐 [Pull Request](https://github.com/DominoKorean/Pixel-Composer-Korean-Localization/pulls)를 이용해주세요.

</br>
</br>

# 오류 해결법
만약 번역적용 후 인터페이스가 제대로 안불러와지고 설정이 안들어가진다면  
`C:\Users\user\AppData\Local\PixelComposer` 폴더를 삭제한 다음  
PixelComposer을 재설치해주시면 됩니다.  

</br>
</br>

# Pixel Composer 설치
Github에서 무료로 설치가 가능합니다.  
https://github.com/Ttanasart-pt/Pixel-Composer  

</br>

releases에 올라오지 않은 최신버전을 사용하고 싶다면  
레퍼지토리에서 폴더 위 좌측 상단에 code에서 Download ZIP로  
소스코드 다운받은 후  
[Gamemaker Studio 2](https://gamemaker.io/en)를 설치한 다음 직접 불러와서 패키징하시면 됩니다.