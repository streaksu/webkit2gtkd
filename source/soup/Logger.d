module soup.Logger;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import soup.Session;
private import soup.SessionFeatureIF;
private import soup.SessionFeatureT;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupLogger watches a #SoupSession and logs the HTTP traffic that
 * it generates, for debugging purposes. Many applications use an
 * environment variable to determine whether or not to use
 * #SoupLogger, and to determine the amount of debugging output.
 * 
 * To use #SoupLogger, first create a logger with soup_logger_new(),
 * optionally configure it with soup_logger_set_request_filter(),
 * soup_logger_set_response_filter(), and soup_logger_set_printer(),
 * and then attach it to a session (or multiple sessions) with
 * soup_session_add_feature().
 * 
 * By default, the debugging output is sent to
 * <literal>stdout</literal>, and looks something like:
 * 
 * <informalexample><screen>
 * > POST /unauth HTTP/1.1
 * > Soup-Debug-Timestamp: 1200171744
 * > Soup-Debug: SoupSessionAsync 1 (0x612190), SoupMessage 1 (0x617000), SoupSocket 1 (0x612220)
 * > Host: localhost
 * > Content-Type: text/plain
 * > Connection: close
 * >
 * > This is a test.
 * 
 * &lt; HTTP/1.1 201 Created
 * &lt; Soup-Debug-Timestamp: 1200171744
 * &lt; Soup-Debug: SoupMessage 1 (0x617000)
 * &lt; Date: Sun, 12 Jan 2008 21:02:24 GMT
 * &lt; Content-Length: 0
 * </screen></informalexample>
 * 
 * The <literal>Soup-Debug-Timestamp</literal> line gives the time (as
 * a <type>time_t</type>) when the request was sent, or the response fully
 * received.
 * 
 * The <literal>Soup-Debug</literal> line gives further debugging
 * information about the #SoupSession, #SoupMessage, and #SoupSocket
 * involved; the hex numbers are the addresses of the objects in
 * question (which may be useful if you are running in a debugger).
 * The decimal IDs are simply counters that uniquely identify objects
 * across the lifetime of the #SoupLogger. In particular, this can be
 * used to identify when multiple messages are sent across the same
 * connection.
 * 
 * Currently, the request half of the message is logged just before
 * the first byte of the request gets written to the network (from the
 * #SoupMessage::starting signal), which means that if you have
 * not made the complete request body available at that point, it will
 * not be logged.
 * 
 * The response is logged just after the last byte of the response
 * body is read from the network (from the #SoupMessage::got_body or
 * #SoupMessage::got_informational signal), which means that the
 * #SoupMessage::got_headers signal, and anything triggered off it
 * (such as #SoupSession::authenticate) will be emitted
 * <emphasis>before</emphasis> the response headers are actually
 * logged.
 * 
 * If the response doesn't happen to trigger the
 * #SoupMessage::got_body nor #SoupMessage::got_informational signals
 * due to, for example, a cancellation before receiving the last byte
 * of the response body, the response will still be logged on the
 * event of the #SoupMessage::finished signal.
 */
public class Logger : ObjectG, SessionFeatureIF
{
	/** the main Gtk struct */
	protected SoupLogger* soupLogger;

	/** Get the main Gtk struct */
	public SoupLogger* getLoggerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupLogger;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupLogger;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupLogger* soupLogger, bool ownedRef = false)
	{
		this.soupLogger = soupLogger;
		super(cast(GObject*)soupLogger, ownedRef);
	}

	// add the SessionFeature capabilities
	mixin SessionFeatureT!(SoupLogger);


	/** */
	public static GType getType()
	{
		return soup_logger_get_type();
	}

	/**
	 * Creates a new #SoupLogger with the given debug level. If @level is
	 * %SOUP_LOGGER_LOG_BODY, @max_body_size gives the maximum number of
	 * bytes of the body that will be logged. (-1 means "no limit".)
	 *
	 * If you need finer control over what message parts are and aren't
	 * logged, use soup_logger_set_request_filter() and
	 * soup_logger_set_response_filter().
	 *
	 * Params:
	 *     level = the debug level
	 *     maxBodySize = the maximum body size to output, or -1
	 *
	 * Returns: a new #SoupLogger
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SoupLoggerLogLevel level, int maxBodySize)
	{
		auto __p = soup_logger_new(level, maxBodySize);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupLogger*) __p, true);
	}

	/**
	 * Sets @logger to watch @session and print debug information for
	 * its messages.
	 *
	 * (The session will take a reference on @logger, which will be
	 * removed when you call soup_logger_detach(), or when the session is
	 * destroyed.)
	 *
	 * Deprecated: Use soup_session_add_feature() instead.
	 *
	 * Params:
	 *     session = a #SoupSession
	 */
	public void attach(Session session)
	{
		soup_logger_attach(soupLogger, (session is null) ? null : session.getSessionStruct());
	}

	/**
	 * Stops @logger from watching @session.
	 *
	 * Deprecated: Use soup_session_remove_feature() instead.
	 *
	 * Params:
	 *     session = a #SoupSession
	 */
	public void detach(Session session)
	{
		soup_logger_detach(soupLogger, (session is null) ? null : session.getSessionStruct());
	}

	/**
	 * Sets up an alternate log printing routine, if you don't want
	 * the log to go to <literal>stdout</literal>.
	 *
	 * Params:
	 *     printer = the callback for printing logging output
	 *     printerData = data to pass to the callback
	 *     destroy = a #GDestroyNotify to free @printer_data
	 */
	public void setPrinter(SoupLoggerPrinter printer, void* printerData, GDestroyNotify destroy)
	{
		soup_logger_set_printer(soupLogger, printer, printerData, destroy);
	}

	/**
	 * Sets up a filter to determine the log level for a given request.
	 * For each HTTP request @logger will invoke @request_filter to
	 * determine how much (if any) of that request to log. (If you do not
	 * set a request filter, @logger will just always log requests at the
	 * level passed to soup_logger_new().)
	 *
	 * Params:
	 *     requestFilter = the callback for request debugging
	 *     filterData = data to pass to the callback
	 *     destroy = a #GDestroyNotify to free @filter_data
	 */
	public void setRequestFilter(SoupLoggerFilter requestFilter, void* filterData, GDestroyNotify destroy)
	{
		soup_logger_set_request_filter(soupLogger, requestFilter, filterData, destroy);
	}

	/**
	 * Sets up a filter to determine the log level for a given response.
	 * For each HTTP response @logger will invoke @response_filter to
	 * determine how much (if any) of that response to log. (If you do not
	 * set a response filter, @logger will just always log responses at
	 * the level passed to soup_logger_new().)
	 *
	 * Params:
	 *     responseFilter = the callback for response debugging
	 *     filterData = data to pass to the callback
	 *     destroy = a #GDestroyNotify to free @filter_data
	 */
	public void setResponseFilter(SoupLoggerFilter responseFilter, void* filterData, GDestroyNotify destroy)
	{
		soup_logger_set_response_filter(soupLogger, responseFilter, filterData, destroy);
	}
}
