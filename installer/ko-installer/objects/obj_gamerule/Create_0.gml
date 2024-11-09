global.kr_reg = font_add("NotoSansKR-Regular.otf", 12, false, false, 32, 128);
global.kr_black = font_add("NotoSansKR-Black.otf", 20, false, false, 32, 128);

global.error_code = 0

var file_path = "langfiles/ko.json";
if (file_exists(file_path)) {
    var file = file_text_open_read(file_path);
    var json_string = "";
    while (!file_text_eof(file)) {
        json_string += file_text_read_string(file);
        file_text_readln(file);
    }
    file_text_close(file);

    var json_data = json_parse(json_string);
    if (is_struct(json_data) && variable_struct_exists(json_data, "version")) {
        global.version = json_data.version;
    } else {
        show_error("Version key not found in ko.json", true);
    }
} else {
    show_error("ko.json file not found in langfiles folder", true);
}
