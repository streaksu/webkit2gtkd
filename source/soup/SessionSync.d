module soup.SessionSync;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.Session;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupSessionSync is an implementation of #SoupSession that uses
 * synchronous I/O, intended for use in multi-threaded programs.
 * 
 * Deprecated: Use the #SoupSession class (which uses both asynchronous
 * and synchronous I/O, depending on the API used). See the
 * <link linkend="libsoup-session-porting">porting guide</link>.
 */
public class SessionSync : Session
{
	/** the main Gtk struct */
	protected SoupSessionSync* soupSessionSync;

	/** Get the main Gtk struct */
	public SoupSessionSync* getSessionSyncStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupSessionSync;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupSessionSync;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupSessionSync* soupSessionSync, bool ownedRef = false)
	{
		this.soupSessionSync = soupSessionSync;
		super(cast(SoupSession*)soupSessionSync, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_session_sync_get_type();
	}

	/**
	 * Creates an synchronous #SoupSession with the default options.
	 *
	 * Deprecated: #SoupSessionSync is deprecated; use a plain
	 * #SoupSession, created with soup_session_new(). See the <link
	 * linkend="libsoup-session-porting">porting guide</link>.
	 *
	 * Returns: the new session.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = soup_session_sync_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupSessionSync*) __p, true);
	}
}
