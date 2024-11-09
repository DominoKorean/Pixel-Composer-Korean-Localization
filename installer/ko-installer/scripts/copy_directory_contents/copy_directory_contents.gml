function copy_directory_contents(source_path, dest_path) {
    var file = file_find_first(source_path + "\\*", fa_directory | fa_archive);
    while (file != "") {
        if (file != "." && file != "..") {
            if (directory_exists(source_path + "\\" + file)) {
                directory_create(dest_path + "\\" + file);
                copy_directory_contents(source_path + "\\" + file, dest_path + "\\" + file);
            } else {
                file_copy(source_path + "\\" + file, dest_path + "\\" + file);
            }
        }
        file = file_find_next();
    }
    file_find_close();
}