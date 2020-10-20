module webkit2.AutomationSession;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.ApplicationInfo;
private import webkit2.WebView;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitAutomationSession represents an automation session of a WebKitWebContext.
 * When a new session is requested, a WebKitAutomationSession is created and the signal
 * WebKitWebContext::automation-started is emitted with the WebKitAutomationSession as
 * argument. Then, the automation client can request the session to create a new
 * #WebKitWebView to interact with it. When this happens the signal #WebKitAutomationSession::create-web-view
 * is emitted.
 *
 * Since: 2.18
 */
public class AutomationSession : ObjectG
{
	/** the main Gtk struct */
	protected WebKitAutomationSession* webKitAutomationSession;

	/** Get the main Gtk struct */
	public WebKitAutomationSession* getAutomationSessionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitAutomationSession;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitAutomationSession;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitAutomationSession* webKitAutomationSession, bool ownedRef = false)
	{
		this.webKitAutomationSession = webKitAutomationSession;
		super(cast(GObject*)webKitAutomationSession, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_automation_session_get_type();
	}

	/**
	 * Get the #WebKitAutomationSession previously set with webkit_automation_session_set_application_info().
	 *
	 * Returns: the #WebKitAutomationSession of @session, or %NULL if no one has been set.
	 *
	 * Since: 2.18
	 */
	public ApplicationInfo getApplicationInfo()
	{
		auto __p = webkit_automation_session_get_application_info(webKitAutomationSession);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ApplicationInfo)(cast(WebKitApplicationInfo*) __p);
	}

	/**
	 * Get the unique identifier of a #WebKitAutomationSession
	 *
	 * Returns: the unique identifier of @session
	 *
	 * Since: 2.18
	 */
	public string getId()
	{
		return Str.toString(webkit_automation_session_get_id(webKitAutomationSession));
	}

	/**
	 * Set the application information to @session. This information will be used by the driver service
	 * to match the requested capabilities with the actual application information. If this information
	 * is not provided to the session when a new automation session is requested, the creation might fail
	 * if the client requested a specific browser name or version. This will not have any effect when called
	 * after the automation session has been fully created, so this must be called in the callback of
	 * #WebKitWebContext::automation-started signal.
	 *
	 * Params:
	 *     info = a #WebKitApplicationInfo
	 *
	 * Since: 2.18
	 */
	public void setApplicationInfo(ApplicationInfo info)
	{
		webkit_automation_session_set_application_info(webKitAutomationSession, (info is null) ? null : info.getApplicationInfoStruct());
	}

	/**
	 * This signal is emitted when the automation client requests a new
	 * browsing context to interact with it. The callback handler should
	 * return a #WebKitWebView created with #WebKitWebView:is-controlled-by-automation
	 * construct property enabled and #WebKitWebView:automation-presentation-type construct
	 * property set if needed.
	 *
	 * If the signal is emitted with "tab" detail, the returned #WebKitWebView should be
	 * a new web view added to a new tab of the current browsing context window.
	 * If the signal is emitted with "window" detail, the returned #WebKitWebView should be
	 * a new web view added to a new window.
	 * When creating a new web view and there's an active browsing context, the new window
	 * or tab shouldn't be focused.
	 *
	 * Returns: a #WebKitWebView widget.
	 *
	 * Since: 2.18
	 */
	gulong addOnCreateWebView(WebView delegate(AutomationSession) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "create-web-view", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
