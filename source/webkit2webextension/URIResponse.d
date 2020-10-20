module webkit2webextension.URIResponse;

private import glib.Str;
private import gobject.ObjectG;
private import soup.MessageHeaders;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/**
 * A #WebKitURIResponse contains information such as the URI, the
 * status code, the content length, the mime type, the HTTP status or
 * the suggested filename.
 */
public class URIResponse : ObjectG
{
	/** the main Gtk struct */
	protected WebKitURIResponse* webKitURIResponse;

	/** Get the main Gtk struct */
	public WebKitURIResponse* getURIResponseStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitURIResponse;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitURIResponse;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitURIResponse* webKitURIResponse, bool ownedRef = false)
	{
		this.webKitURIResponse = webKitURIResponse;
		super(cast(GObject*)webKitURIResponse, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_uri_response_get_type();
	}

	/**
	 * Get the expected content length of the #WebKitURIResponse. It can
	 * be 0 if the server provided an incorrect or missing Content-Length.
	 *
	 * Returns: the expected content length of @response.
	 */
	public ulong getContentLength()
	{
		return webkit_uri_response_get_content_length(webKitURIResponse);
	}

	/**
	 * Get the HTTP headers of a #WebKitURIResponse as a #SoupMessageHeaders.
	 *
	 * Returns: a #SoupMessageHeaders with the HTTP headers of @response
	 *     or %NULL if @response is not an HTTP response.
	 *
	 * Since: 2.6
	 */
	public MessageHeaders getHttpHeaders()
	{
		auto __p = webkit_uri_response_get_http_headers(webKitURIResponse);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MessageHeaders)(cast(SoupMessageHeaders*) __p);
	}

	/**
	 * Returns: the MIME type of the #WebKitURIResponse
	 */
	public string getMimeType()
	{
		return Str.toString(webkit_uri_response_get_mime_type(webKitURIResponse));
	}

	/**
	 * Get the status code of the #WebKitURIResponse as returned by
	 * the server. It will normally be a #SoupKnownStatusCode, for
	 * example %SOUP_STATUS_OK, though the server can respond with any
	 * unsigned integer.
	 *
	 * Returns: the status code of @response
	 */
	public uint getStatusCode()
	{
		return webkit_uri_response_get_status_code(webKitURIResponse);
	}

	/**
	 * Get the suggested filename for @response, as specified by
	 * the 'Content-Disposition' HTTP header, or %NULL if it's not
	 * present.
	 *
	 * Returns: the suggested filename or %NULL if
	 *     the 'Content-Disposition' HTTP header is not present.
	 */
	public string getSuggestedFilename()
	{
		return Str.toString(webkit_uri_response_get_suggested_filename(webKitURIResponse));
	}

	/**
	 * Returns: the uri of the #WebKitURIResponse
	 */
	public string getUri()
	{
		return Str.toString(webkit_uri_response_get_uri(webKitURIResponse));
	}
}
