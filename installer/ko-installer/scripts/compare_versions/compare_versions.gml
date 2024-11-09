function compare_versions(version1, version2) {
    var v1 = string_split(version1, ".");
    var v2 = string_split(version2, ".");

    for (var i = 0; i < max(array_length(v1), array_length(v2)); i++) {
        var num1 = (i < array_length(v1)) ? real(v1[i]) : 0;
        var num2 = (i < array_length(v2)) ? real(v2[i]) : 0;
        
        if (num1 > num2) return 1;
        if (num1 < num2) return -1;
    }
    return 0;
}