/**
 * Provides functions to read the WebKit version.
 *
 * This functions are in the library, so it represents the WebKit library
 * your code is running against, not the headers wrapped.
 */
module webkit2gtkd.webkitversion;

private extern (C) {
    uint webkit_get_major_version();
    uint webkit_get_minor_version();
    uint webkit_get_micro_version();
}

/**
 * Returns the major version number of the WebKit library.
 * (e.g. in WebKit version `1.8.3` this is `1`.)
 */
uint getMajorVersion() {
    return webkit_get_major_version();
}

/**
 * Returns the minor version number of the WebKit library.
 * (e.g. in WebKit version `1.8.3` this is `8`.)
 */
uint getMinorVersion() {
    return webkit_get_minor_version();
}

/**
 * Returns the micro version number of the WebKit library.
 * (e.g. in WebKit version `1.8.3` this is `3`.)
 */
uint getMicroVersion() {
    return webkit_get_micro_version();
}
