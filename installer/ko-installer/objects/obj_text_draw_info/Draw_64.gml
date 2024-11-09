draw_set_font(global.kr_reg);
draw_set_color(#ffffff);

if global.error_code == 0 {
	draw_text(x, y, "한글 패치 설치 도우미 버전: 1.0.0.0 ");
	draw_text(x, y+text_lenght_size, "한글 패치 버전: " + string(global.version));
} else if global.error_code == -1  {
	draw_text(x, y, @"한글 패치가 성공적으로 설치되었습니다.
	
	pixel composer을 키신 후 좌측 상단에서
	File -> Preferences -> Interface
	순으로 들어간 후 Interface Language에서 ko를 선택한 다음
	Pixel Composer을 재시작 해주시길 바랍니다.

	기초 사용 가이드는 스플래시 화면에서 확인하실 수 있습니다.
	스플레시화면은 좌측 상단의
	파일 -> 스플래시에서도 여실 수 있습니다." )
} else if global.error_code == 1  {
	draw_text(x, y,"에러코드: " + string(global.error_code) )
	draw_text(x, y+text_lenght_size,"더 높은 버전의 한글 패치가 이미 설치되어있습니다." );
} else if global.error_code == 2  {
	draw_text(x, y, "에러코드: " + string(global.error_code) );
	draw_text(x, y+text_lenght_size,"동일한 버전의 한글 패치가 이미 설치되어있습니다." );
} else if global.error_code == 3  {
	draw_text(x, y, "에러코드: " + string(global.error_code) );
	draw_text(x, y+text_lenght_size,@"한글 패치를 설치하기 위한 경로를 찾을 수 없습니다.
	C:\Users\user\AppData\Local\PixelComposer\Locale
	C:\Users\user\AppData\Local\PixelComposer\Welcome files
	해당 경로가 존재하는지 또는 손상되었는지 확인해주십시오.
	
	만약 경로가 정상적으로 존재한다면
	깃허브의 issues에 버그 리포트를 한 후
	수동 설치 가이드를 따라주시길 바랍니다.
	" );
}
