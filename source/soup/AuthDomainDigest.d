module soup.AuthDomainDigest;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.AuthDomain;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupAuthDomainDigest handles the server side of HTTP "Digest"
 * authentication.
 */
public class AuthDomainDigest : AuthDomain
{
	/** the main Gtk struct */
	protected SoupAuthDomainDigest* soupAuthDomainDigest;

	/** Get the main Gtk struct */
	public SoupAuthDomainDigest* getAuthDomainDigestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAuthDomainDigest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAuthDomainDigest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAuthDomainDigest* soupAuthDomainDigest, bool ownedRef = false)
	{
		this.soupAuthDomainDigest = soupAuthDomainDigest;
		super(cast(SoupAuthDomain*)soupAuthDomainDigest, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_auth_domain_digest_get_type();
	}

	/**
	 * Encodes the username/realm/password triplet for Digest
	 * authentication. (That is, it returns a stringified MD5 hash of
	 * @username, @realm, and @password concatenated together). This is
	 * the form that is needed as the return value of
	 * #SoupAuthDomainDigest's auth handler.
	 *
	 * For security reasons, you should store the encoded hash, rather
	 * than storing the cleartext password itself and calling this method
	 * only when you need to verify it. This way, if your server is
	 * compromised, the attackers will not gain access to cleartext
	 * passwords which might also be usable at other sites. (Note also
	 * that the encoded password returned by this method is identical to
	 * the encoded password stored in an Apache .htdigest file.)
	 *
	 * Params:
	 *     username = a username
	 *     realm = an auth realm name
	 *     password = the password for @username in @realm
	 *
	 * Returns: the encoded password
	 */
	public static string encodePassword(string username, string realm, string password)
	{
		auto retStr = soup_auth_domain_digest_encode_password(Str.toStringz(username), Str.toStringz(realm), Str.toStringz(password));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Sets the callback that @domain will use to authenticate incoming
	 * requests. For each request containing authorization, @domain will
	 * invoke the callback, and then either accept or reject the request
	 * based on @callback's return value.
	 *
	 * You can also set the auth callback by setting the
	 * %SOUP_AUTH_DOMAIN_DIGEST_AUTH_CALLBACK and
	 * %SOUP_AUTH_DOMAIN_DIGEST_AUTH_DATA properties, which can also be
	 * used to set the callback at construct time.
	 *
	 * Params:
	 *     callback = the callback
	 *     userData = data to pass to @auth_callback
	 *     dnotify = destroy notifier to free @user_data when @domain
	 *         is destroyed
	 */
	public void setAuthCallback(SoupAuthDomainDigestAuthCallback callback, void* userData, GDestroyNotify dnotify)
	{
		soup_auth_domain_digest_set_auth_callback(cast(SoupAuthDomain*)soupAuthDomainDigest, callback, userData, dnotify);
	}
}
