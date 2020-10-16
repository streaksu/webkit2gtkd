/**
 * Utility functions provided by WebKit to manipulate URIs.
 */
module webkit2gtkd.uriutilities;

import std.string: toStringz;

private extern (C) {
    immutable(char)* webkit_uri_for_display(immutable(char)*);
}

/**
 * Use this function to format a URI for display.
 *
 * The URIs used internally by WebKit may contain percent-encoded characters or
 * Punycode, which are not generally suitable to display to users. This
 * function provides protection against IDN homograph attacks, so in some
 * cases the host part of the returned URI may be in Punycode if the safety
 * check fails.
 *
 * Params:
 *      uri = URI to convert.
 *
 * Returns: A URI suitable for display, or `null` in case of failure.
 */
string getURIForDisplay(string uri) {
    return webkit_uri_for_display(toStringz(uri));
}
