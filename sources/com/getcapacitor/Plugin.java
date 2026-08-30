package com.getcapacitor;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.t0;
import com.getcapacitor.annotation.ActivityCallback;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.annotation.Permission;
import com.getcapacitor.annotation.PermissionCallback;
import com.getcapacitor.util.PermissionHelper;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class Plugin {
    private static final String BUNDLE_PERSISTED_OPTIONS_JSON_KEY = "_json";
    protected Bridge bridge;
    protected PluginHandle handle;
    private String lastPluginCallId;

    @Deprecated
    protected PluginCall savedLastCall;
    private final Map<String, d.c> activityLaunchers = new HashMap();
    private final Map<String, d.c> permissionLaunchers = new HashMap();
    private final Map<String, List<PluginCall>> eventListeners = new HashMap();
    private final Map<String, List<JSObject>> retainedEventArguments = new HashMap();

    private void addEventListener(String str, PluginCall pluginCall) {
        List<PluginCall> list = this.eventListeners.get(str);
        if (list != null && !list.isEmpty()) {
            list.add(pluginCall);
            return;
        }
        ArrayList arrayList = new ArrayList();
        this.eventListeners.put(str, arrayList);
        arrayList.add(pluginCall);
        sendRetainedArgumentsForEvent(str);
    }

    private d.c getActivityLauncherOrReject(PluginCall pluginCall, String str) {
        d.c cVar = this.activityLaunchers.get(str);
        if (cVar != null) {
            return cVar;
        }
        Locale locale = Locale.US;
        String str2 = "There is no ActivityCallback method registered for the name: " + str + ". Please define a callback method annotated with @ActivityCallback that receives arguments: (PluginCall, ActivityResult)";
        Logger.error(str2);
        pluginCall.reject(str2);
        return null;
    }

    private d.c getPermissionLauncherOrReject(PluginCall pluginCall, String str) {
        d.c cVar = this.permissionLaunchers.get(str);
        if (cVar != null) {
            return cVar;
        }
        Locale locale = Locale.US;
        String str2 = "There is no PermissionCallback method registered for the name: " + str + ". Please define a callback method annotated with @PermissionCallback that receives arguments: (PluginCall)";
        Logger.error(str2);
        pluginCall.reject(str2);
        return null;
    }

    private String[] getPermissionStringsForAliases(String[] strArr) {
        CapacitorPlugin pluginAnnotation = this.handle.getPluginAnnotation();
        HashSet hashSet = new HashSet();
        for (Permission permission : pluginAnnotation.permissions()) {
            if (Arrays.asList(strArr).contains(permission.alias())) {
                hashSet.addAll(Arrays.asList(permission.strings()));
            }
        }
        return (String[]) hashSet.toArray(new String[0]);
    }

    private void handleLegacyPermission(PluginCall pluginCall) {
        NativePlugin legacyPluginAnnotation = this.handle.getLegacyPluginAnnotation();
        String[] strArrPermissions = legacyPluginAnnotation.permissions();
        if (strArrPermissions.length <= 0) {
            pluginCall.resolve();
        } else {
            saveCall(pluginCall);
            pluginRequestPermissions(strArrPermissions, legacyPluginAnnotation.permissionRequestCode());
        }
    }

    private void permissionActivityResult(PluginCall pluginCall, String[] strArr, String str) {
        d.c permissionLauncherOrReject = getPermissionLauncherOrReject(pluginCall, str);
        if (permissionLauncherOrReject == null) {
            return;
        }
        this.bridge.savePermissionCall(pluginCall);
        permissionLauncherOrReject.a(strArr);
    }

    private void removeEventListener(String str, PluginCall pluginCall) {
        List<PluginCall> list = this.eventListeners.get(str);
        if (list == null) {
            return;
        }
        list.remove(pluginCall);
    }

    private void sendRetainedArgumentsForEvent(String str) {
        List<JSObject> list = this.retainedEventArguments.get(str);
        if (list == null) {
            return;
        }
        this.retainedEventArguments.remove(str);
        Iterator<JSObject> it = list.iterator();
        while (it.hasNext()) {
            notifyListeners(str, it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: triggerActivityCallback, reason: merged with bridge method [inline-methods] */
    public void lambda$initializeActivityLaunchers$0(Method method, d.a aVar) {
        PluginCall savedCall = this.bridge.getSavedCall(this.lastPluginCallId);
        if (savedCall == null) {
            savedCall = this.bridge.getPluginCallForLastActivity();
        }
        try {
            method.setAccessible(true);
            method.invoke(this, savedCall, aVar);
        } catch (IllegalAccessException | InvocationTargetException e9) {
            e9.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: triggerPermissionCallback, reason: merged with bridge method [inline-methods] */
    public void lambda$initializeActivityLaunchers$1(Method method, Map<String, Boolean> map) {
        PluginCall permissionCall = this.bridge.getPermissionCall(this.handle.getId());
        if (this.bridge.validatePermissions(this, permissionCall, map)) {
            try {
                method.setAccessible(true);
                method.invoke(this, permissionCall);
            } catch (IllegalAccessException | InvocationTargetException e9) {
                e9.printStackTrace();
            }
        }
    }

    @PluginMethod(returnType = PluginMethod.RETURN_NONE)
    public void addListener(PluginCall pluginCall) {
        String string = pluginCall.getString("eventName");
        pluginCall.setKeepAlive(Boolean.TRUE);
        addEventListener(string, pluginCall);
    }

    @PluginMethod
    @PermissionCallback
    public void checkPermissions(PluginCall pluginCall) {
        Map<String, PermissionState> permissionStates = getPermissionStates();
        if (permissionStates.size() == 0) {
            pluginCall.resolve();
            return;
        }
        JSObject jSObject = new JSObject();
        for (Map.Entry<String, PermissionState> entry : permissionStates.entrySet()) {
            jSObject.put(entry.getKey(), (Object) entry.getValue());
        }
        pluginCall.resolve(jSObject);
    }

    public void execute(Runnable runnable) {
        this.bridge.execute(runnable);
    }

    @Deprecated
    public void freeSavedCall() {
        this.savedLastCall.release(this.bridge);
        this.savedLastCall = null;
    }

    public g.m getActivity() {
        return this.bridge.getActivity();
    }

    public String getAppId() {
        return getContext().getPackageName();
    }

    public Bridge getBridge() {
        return this.bridge;
    }

    public PluginConfig getConfig() {
        return this.bridge.getConfig().getPluginConfiguration(this.handle.getId());
    }

    @Deprecated
    public Object getConfigValue(String str) {
        try {
            return getConfig().getConfigJSON().get(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    public Context getContext() {
        return this.bridge.getContext();
    }

    public String getLogTag(String... strArr) {
        return Logger.tags(strArr);
    }

    public PermissionState getPermissionState(String str) {
        return getPermissionStates().get(str);
    }

    public Map<String, PermissionState> getPermissionStates() {
        return this.bridge.getPermissionStates(this);
    }

    public PluginHandle getPluginHandle() {
        return this.handle;
    }

    @Deprecated
    public PluginCall getSavedCall() {
        return this.savedLastCall;
    }

    @Deprecated
    public void handleRequestPermissionsResult(int i6, String[] strArr, int[] iArr) {
        if (hasDefinedPermissions(strArr)) {
            return;
        }
        StringBuilder sb = new StringBuilder("Missing the following permissions in AndroidManifest.xml:\n");
        for (String str : PermissionHelper.getUndefinedPermissions(getContext(), strArr)) {
            sb.append(str + "\n");
        }
        this.savedLastCall.reject(sb.toString());
        this.savedLastCall = null;
    }

    @Deprecated
    public boolean hasDefinedPermissions(String[] strArr) {
        for (String str : strArr) {
            if (!PermissionHelper.hasDefinedPermission(getContext(), str)) {
                return false;
            }
        }
        return true;
    }

    @Deprecated
    public boolean hasDefinedRequiredPermissions() {
        CapacitorPlugin pluginAnnotation = this.handle.getPluginAnnotation();
        if (pluginAnnotation == null) {
            return hasDefinedPermissions(this.handle.getLegacyPluginAnnotation().permissions());
        }
        for (Permission permission : pluginAnnotation.permissions()) {
            for (String str : permission.strings()) {
                if (!PermissionHelper.hasDefinedPermission(getContext(), str)) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean hasListeners(String str) {
        if (this.eventListeners.get(str) == null) {
            return false;
        }
        return !r2.isEmpty();
    }

    @Deprecated
    public boolean hasPermission(String str) {
        return z.c.a(getContext(), str) == 0;
    }

    @Deprecated
    public boolean hasRequiredPermissions() {
        CapacitorPlugin pluginAnnotation = this.handle.getPluginAnnotation();
        if (pluginAnnotation == null) {
            for (String str : this.handle.getLegacyPluginAnnotation().permissions()) {
                if (z.c.a(getContext(), str) != 0) {
                    return false;
                }
            }
            return true;
        }
        for (Permission permission : pluginAnnotation.permissions()) {
            for (String str2 : permission.strings()) {
                if (z.c.a(getContext(), str2) != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    public void initializeActivityLaunchers() {
        ArrayList arrayList = new ArrayList();
        for (Class<?> superclass = getClass(); !superclass.getName().equals(Object.class.getName()); superclass = superclass.getSuperclass()) {
            arrayList.addAll(Arrays.asList(superclass.getDeclaredMethods()));
        }
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            Method method = (Method) obj;
            if (method.isAnnotationPresent(ActivityCallback.class)) {
                this.activityLaunchers.put(method.getName(), this.bridge.registerForActivityResult(new t0(2), new q(this, 0, method)));
            } else if (method.isAnnotationPresent(PermissionCallback.class)) {
                this.permissionLaunchers.put(method.getName(), this.bridge.registerForActivityResult(new t0(1), new q(this, 1, method)));
            }
        }
    }

    public boolean isPermissionDeclared(String str) {
        CapacitorPlugin pluginAnnotation = this.handle.getPluginAnnotation();
        if (pluginAnnotation != null) {
            for (Permission permission : pluginAnnotation.permissions()) {
                if (str.equalsIgnoreCase(permission.alias())) {
                    String[] strArrStrings = permission.strings();
                    boolean z5 = true;
                    for (String str2 : strArrStrings) {
                        z5 = z5 && PermissionHelper.hasDefinedPermission(getContext(), str2);
                    }
                    return z5;
                }
            }
        }
        Logger.error("isPermissionDeclared: No alias defined for " + str + " or missing @CapacitorPlugin annotation.");
        return false;
    }

    public void notifyListeners(String str, JSObject jSObject, boolean z5) {
        Logger.verbose(getLogTag(), "Notifying listeners for event " + str);
        List<PluginCall> list = this.eventListeners.get(str);
        if (list != null && !list.isEmpty()) {
            Iterator it = new CopyOnWriteArrayList(list).iterator();
            while (it.hasNext()) {
                ((PluginCall) it.next()).resolve(jSObject);
            }
            return;
        }
        Logger.debug(getLogTag(), "No listeners found for event " + str);
        if (z5) {
            List<JSObject> arrayList = this.retainedEventArguments.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            arrayList.add(jSObject);
            this.retainedEventArguments.put(str, arrayList);
        }
    }

    @Deprecated
    public void pluginRequestAllPermissions() {
        NativePlugin legacyPluginAnnotation = this.handle.getLegacyPluginAnnotation();
        y.b.d(getActivity(), legacyPluginAnnotation.permissions(), legacyPluginAnnotation.permissionRequestCode());
    }

    @Deprecated
    public void pluginRequestPermission(String str, int i6) {
        y.b.d(getActivity(), new String[]{str}, i6);
    }

    @Deprecated
    public void pluginRequestPermissions(String[] strArr, int i6) {
        y.b.d(getActivity(), strArr, i6);
    }

    @PluginMethod(returnType = PluginMethod.RETURN_PROMISE)
    public void removeAllListeners(PluginCall pluginCall) {
        this.eventListeners.clear();
        pluginCall.resolve();
    }

    @PluginMethod(returnType = PluginMethod.RETURN_NONE)
    public void removeListener(PluginCall pluginCall) {
        String string = pluginCall.getString("eventName");
        PluginCall savedCall = this.bridge.getSavedCall(pluginCall.getString("callbackId"));
        if (savedCall != null) {
            removeEventListener(string, savedCall);
            this.bridge.releaseCall(savedCall);
        }
    }

    public void requestAllPermissions(PluginCall pluginCall, String str) {
        CapacitorPlugin pluginAnnotation = this.handle.getPluginAnnotation();
        if (pluginAnnotation != null) {
            HashSet hashSet = new HashSet();
            for (Permission permission : pluginAnnotation.permissions()) {
                hashSet.addAll(Arrays.asList(permission.strings()));
            }
            permissionActivityResult(pluginCall, (String[]) hashSet.toArray(new String[0]), str);
        }
    }

    public void requestPermissionForAlias(String str, PluginCall pluginCall, String str2) {
        requestPermissionForAliases(new String[]{str}, pluginCall, str2);
    }

    public void requestPermissionForAliases(String[] strArr, PluginCall pluginCall, String str) {
        if (strArr.length == 0) {
            Logger.error("No permission alias was provided");
            return;
        }
        String[] permissionStringsForAliases = getPermissionStringsForAliases(strArr);
        if (permissionStringsForAliases.length > 0) {
            permissionActivityResult(pluginCall, permissionStringsForAliases, str);
        }
    }

    @PluginMethod
    public void requestPermissions(PluginCall pluginCall) {
        List list;
        CapacitorPlugin pluginAnnotation = this.handle.getPluginAnnotation();
        if (pluginAnnotation == null) {
            handleLegacyPermission(pluginCall);
            return;
        }
        HashSet hashSet = new HashSet();
        JSArray array = pluginCall.getArray("permissions");
        String[] strArr = null;
        if (array != null) {
            try {
                list = array.toList();
            } catch (JSONException unused) {
                list = null;
            }
        } else {
            list = null;
        }
        HashSet hashSet2 = new HashSet();
        if (list == null || list.isEmpty()) {
            for (Permission permission : pluginAnnotation.permissions()) {
                if (permission.strings().length != 0 && (permission.strings().length != 1 || !permission.strings()[0].isEmpty())) {
                    hashSet2.add(permission.alias());
                } else if (!permission.alias().isEmpty()) {
                    hashSet.add(permission.alias());
                }
            }
            strArr = (String[]) hashSet2.toArray(new String[0]);
        } else {
            for (Permission permission2 : pluginAnnotation.permissions()) {
                if (list.contains(permission2.alias())) {
                    hashSet2.add(permission2.alias());
                }
            }
            if (hashSet2.isEmpty()) {
                pluginCall.reject("No valid permission alias was requested of this plugin.");
            } else {
                strArr = (String[]) hashSet2.toArray(new String[0]);
            }
        }
        if (strArr != null && strArr.length > 0) {
            requestPermissionForAliases(strArr, pluginCall, "checkPermissions");
            return;
        }
        if (hashSet.isEmpty()) {
            pluginCall.resolve();
            return;
        }
        JSObject jSObject = new JSObject();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            jSObject.put((String) it.next(), PermissionState.GRANTED.toString());
        }
        pluginCall.resolve(jSObject);
    }

    @Deprecated
    public void saveCall(PluginCall pluginCall) {
        this.savedLastCall = pluginCall;
    }

    public Bundle saveInstanceState() {
        PluginCall savedCall = this.bridge.getSavedCall(this.lastPluginCallId);
        if (savedCall == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        JSObject data = savedCall.getData();
        if (data != null) {
            bundle.putString(BUNDLE_PERSISTED_OPTIONS_JSON_KEY, data.toString());
        }
        return bundle;
    }

    public void setBridge(Bridge bridge) {
        this.bridge = bridge;
    }

    public void setPluginHandle(PluginHandle pluginHandle) {
        this.handle = pluginHandle;
    }

    public Boolean shouldOverrideLoad(Uri uri) {
        return null;
    }

    public void startActivityForResult(PluginCall pluginCall, Intent intent, String str) {
        d.c activityLauncherOrReject = getActivityLauncherOrReject(pluginCall, str);
        if (activityLauncherOrReject == null) {
            return;
        }
        this.bridge.setPluginCallForLastActivity(pluginCall);
        this.lastPluginCallId = pluginCall.getCallbackId();
        this.bridge.saveCall(pluginCall);
        activityLauncherOrReject.a(intent);
    }

    public String getLogTag() {
        return Logger.tags(getClass().getSimpleName());
    }

    public void removeAllListeners() {
        this.eventListeners.clear();
    }

    @Deprecated
    public void startActivityForResult(PluginCall pluginCall, Intent intent, int i6) {
        this.bridge.startActivityForPluginWithResult(pluginCall, intent, i6);
    }

    public void notifyListeners(String str, JSObject jSObject) {
        notifyListeners(str, jSObject, false);
    }

    public void handleOnDestroy() {
    }

    public void handleOnPause() {
    }

    public void handleOnRestart() {
    }

    public void handleOnResume() {
    }

    public void handleOnStart() {
    }

    public void handleOnStop() {
    }

    public void load() {
    }

    public void handleOnConfigurationChanged(Configuration configuration) {
    }

    public void handleOnNewIntent(Intent intent) {
    }

    public void restoreState(Bundle bundle) {
    }

    @Deprecated
    public void handleOnActivityResult(int i6, int i9, Intent intent) {
    }
}
