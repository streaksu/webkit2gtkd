module soup.SessionFeatureIF;

private import soup.Session;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupSessionFeature is the interface used by classes that extend
 * the functionality of a #SoupSession. Some features like HTTP
 * authentication handling are implemented internally via
 * #SoupSessionFeature<!-- -->s. Other features can be added to the session
 * by the application. (Eg, #SoupLogger, #SoupCookieJar.)
 * 
 * See soup_session_add_feature(), etc, to add a feature to a session.
 *
 * Since: 2.24
 */
public interface SessionFeatureIF{
	/** Get the main Gtk struct */
	public SoupSessionFeature* getSessionFeatureStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return soup_session_feature_get_type();
	}

	/**
	 * Adds a "sub-feature" of type @type to the base feature @feature.
	 * This is used for features that can be extended with multiple
	 * different types. Eg, the authentication manager can be extended
	 * with subtypes of #SoupAuth.
	 *
	 * Params:
	 *     type = the #GType of a "sub-feature"
	 *
	 * Returns: %TRUE if @feature accepted @type as a subfeature.
	 *
	 * Since: 2.34
	 */
	public bool addFeature(GType type);

	/** */
	public void attach(Session session);

	/** */
	public void detach(Session session);

	/**
	 * Tests if @feature has a "sub-feature" of type @type. See
	 * soup_session_feature_add_feature().
	 *
	 * Params:
	 *     type = the #GType of a "sub-feature"
	 *
	 * Returns: %TRUE if @feature has a subfeature of type @type
	 *
	 * Since: 2.34
	 */
	public bool hasFeature(GType type);

	/**
	 * Removes the "sub-feature" of type @type from the base feature
	 * @feature. See soup_session_feature_add_feature().
	 *
	 * Params:
	 *     type = the #GType of a "sub-feature"
	 *
	 * Returns: %TRUE if @type was removed from @feature
	 *
	 * Since: 2.34
	 */
	public bool removeFeature(GType type);
}
