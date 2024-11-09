function install_ko() {
    var local_path = "C:\\Users\\user\\AppData\\Local\\PixelComposer\\Locale\\ko.json";
    var langfiles_path = "langfiles/ko.json";
    var dest_locale_path = "C:\\Users\\user\\AppData\\Local\\PixelComposer\\Locale";
    var dest_welcome_path = "C:\\Users\\user\\AppData\\Local\\PixelComposer\\Welcome files";
    var getting_started_path = "langfiles/Getting started_ko/시작하기";

    // Check if langfiles/ko.json exists
    if (file_exists(langfiles_path)) {
        var ko_json = json_parse(read_file_to_string(langfiles_path));
        var ko_version = ko_json.version;

        // Check if C:\\Users\\user\\AppData\\Local\\PixelComposer\\Locale\\ko.json exists
        if (file_exists(local_path)) {
            var local_json = json_parse(read_file_to_string(local_path));
            var local_version = local_json.version;

            if (compare_versions(local_version, ko_version) > 0) {
                // Local version is higher
                global.error_code = 1;
                return;
            } else if (compare_versions(local_version, ko_version) == 0) {
                // Versions are equal
                global.error_code = 2;
                return;
            } else {
                // Local version is lower
                file_delete(local_path);
                file_copy(langfiles_path, local_path);
            }
        } else {
            // No ko.json in the local path
            if (!directory_exists(dest_locale_path)) {
                global.error_code = 3;
                return;
            }
            directory_create(dest_locale_path);
            file_copy(langfiles_path, local_path);
        }

        // Handle copying the ko folder
        var ko_folder_path = "langfiles/ko";
        if (directory_exists(dest_locale_path + "\\ko")) {
            directory_destroy(dest_locale_path + "\\ko");
        }
        directory_create(dest_locale_path + "\\ko");
        copy_directory_contents(ko_folder_path, dest_locale_path + "\\ko");

        // Handle copying the Getting started folder
        if (directory_exists(dest_welcome_path + "\\시작하기")) {
            directory_destroy(dest_welcome_path + "\\시작하기");
        }
        directory_create(dest_welcome_path + "\\시작하기");
        copy_directory_contents(getting_started_path, dest_welcome_path + "\\시작하기");

        // If all files were placed successfully, set error_code to -1
        global.error_code = -1;
    } else {
        show_error("langfiles/ko.json file not found.", true);
    }
}