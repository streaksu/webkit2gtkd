module soup.CookieJarText;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.CookieJar;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupCookieJarText is a #SoupCookieJar that reads cookies from and
 * writes them to a text file in the Mozilla "cookies.txt" format.
 */
public class CookieJarText : CookieJar
{
	/** the main Gtk struct */
	protected SoupCookieJarText* soupCookieJarText;

	/** Get the main Gtk struct */
	public SoupCookieJarText* getCookieJarTextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupCookieJarText;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupCookieJarText;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupCookieJarText* soupCookieJarText, bool ownedRef = false)
	{
		this.soupCookieJarText = soupCookieJarText;
		super(cast(SoupCookieJar*)soupCookieJarText, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_cookie_jar_text_get_type();
	}

	/**
	 * Creates a #SoupCookieJarText.
	 *
	 * @filename will be read in at startup to create an initial set of
	 * cookies. If @read_only is %FALSE, then the non-session cookies will
	 * be written to @filename when the 'changed' signal is emitted from
	 * the jar. (If @read_only is %TRUE, then the cookie jar will only be
	 * used for this session, and changes made to it will be lost when the
	 * jar is destroyed.)
	 *
	 * Params:
	 *     filename = the filename to read to/write from
	 *     readOnly = %TRUE if @filename is read-only
	 *
	 * Returns: the new #SoupCookieJar
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename, bool readOnly)
	{
		auto __p = soup_cookie_jar_text_new(Str.toStringz(filename), readOnly);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupCookieJarText*) __p, true);
	}
}
