// Helper functions for reading files and copying directories
function read_file_to_string(file_path) {
    var file = file_text_open_read(file_path);
    var content = "";
    while (!file_text_eof(file)) {
        content += file_text_read_string(file);
        file_text_readln(file);
    }
    file_text_close(file);
    return content;
}