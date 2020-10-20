module soup.MessageHeadersIter;

private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import soup.MessageHeaders;
private import soup.c.functions;
public  import soup.c.types;


/**
 * An opaque type used to iterate over a %SoupMessageHeaders
 * structure.
 * 
 * After intializing the iterator with
 * soup_message_headers_iter_init(), call
 * soup_message_headers_iter_next() to fetch data from it.
 * 
 * You may not modify the headers while iterating over them.
 */
public class MessageHeadersIter
{
	/** the main Gtk struct */
	protected SoupMessageHeadersIter* soupMessageHeadersIter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SoupMessageHeadersIter* getMessageHeadersIterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupMessageHeadersIter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)soupMessageHeadersIter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupMessageHeadersIter* soupMessageHeadersIter, bool ownedRef = false)
	{
		this.soupMessageHeadersIter = soupMessageHeadersIter;
		this.ownedRef = ownedRef;
	}


	/**
	 * Yields the next name/value pair in the %SoupMessageHeaders being
	 * iterated by @iter. If @iter has already yielded the last header,
	 * then soup_message_headers_iter_next() will return %FALSE and @name
	 * and @value will be unchanged.
	 *
	 * Params:
	 *     name = pointer to a variable to return
	 *         the header name in
	 *     value = pointer to a variable to return
	 *         the header value in
	 *
	 * Returns: %TRUE if another name and value were returned, %FALSE
	 *     if the end of the headers has been reached.
	 */
	public bool next(out string name, out string value)
	{
		char* outname = null;
		char* outvalue = null;

		auto __p = soup_message_headers_iter_next(soupMessageHeadersIter, &outname, &outvalue) != 0;

		name = Str.toString(outname);
		value = Str.toString(outvalue);

		return __p;
	}

	/**
	 * Initializes @iter for iterating @hdrs.
	 *
	 * Params:
	 *     iter = a pointer to a %SoupMessageHeadersIter
	 *         structure
	 *     hdrs = a %SoupMessageHeaders
	 */
	public static void init(out MessageHeadersIter iter, MessageHeaders hdrs)
	{
		SoupMessageHeadersIter* outiter = sliceNew!SoupMessageHeadersIter();

		soup_message_headers_iter_init(outiter, (hdrs is null) ? null : hdrs.getMessageHeadersStruct());

		iter = ObjectG.getDObject!(MessageHeadersIter)(outiter, true);
	}
}
