package y0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.util.Log;
import com.engagelab.privates.core.constants.MTCoreConstants;
import g.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import u3.o;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f6099f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static b f6100g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f6101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f6102b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f6103c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f6104d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final g f6105e;

    public b(Context context) {
        this.f6101a = context;
        this.f6105e = new g(this, context.getMainLooper());
    }

    public static b a(Context context) {
        b bVar;
        synchronized (f6099f) {
            try {
                if (f6100g == null) {
                    f6100g = new b(context.getApplicationContext());
                }
                bVar = f6100g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    public final void b(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f6102b) {
            try {
                a aVar = new a(broadcastReceiver, intentFilter);
                ArrayList arrayList = (ArrayList) this.f6102b.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    this.f6102b.put(broadcastReceiver, arrayList);
                }
                arrayList.add(aVar);
                for (int i6 = 0; i6 < intentFilter.countActions(); i6++) {
                    String action = intentFilter.getAction(i6);
                    ArrayList arrayList2 = (ArrayList) this.f6103c.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        this.f6103c.put(action, arrayList2);
                    }
                    arrayList2.add(aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(Intent intent) {
        ArrayList arrayList;
        synchronized (this.f6102b) {
            try {
                String action = intent.getAction();
                String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f6101a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z5 = (intent.getFlags() & 8) != 0;
                if (z5) {
                    Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
                }
                ArrayList arrayList2 = (ArrayList) this.f6103c.get(intent.getAction());
                if (arrayList2 != null) {
                    if (z5) {
                        Log.v("LocalBroadcastManager", "Action list: " + arrayList2);
                    }
                    ArrayList arrayList3 = null;
                    int i6 = 0;
                    while (i6 < arrayList2.size()) {
                        a aVar = (a) arrayList2.get(i6);
                        if (z5) {
                            Log.v("LocalBroadcastManager", "Matching against filter " + aVar.f6095a);
                        }
                        if (aVar.f6097c) {
                            if (z5) {
                                Log.v("LocalBroadcastManager", "  Filter's target already added");
                            }
                            arrayList = arrayList2;
                        } else {
                            int iMatch = aVar.f6095a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                            if (iMatch >= 0) {
                                if (z5) {
                                    StringBuilder sb = new StringBuilder();
                                    arrayList = arrayList2;
                                    sb.append("  Filter matched!  match=0x");
                                    sb.append(Integer.toHexString(iMatch));
                                    Log.v("LocalBroadcastManager", sb.toString());
                                } else {
                                    arrayList = arrayList2;
                                }
                                if (arrayList3 == null) {
                                    arrayList3 = new ArrayList();
                                }
                                arrayList3.add(aVar);
                                aVar.f6097c = true;
                            } else {
                                arrayList = arrayList2;
                                if (z5) {
                                    Log.v("LocalBroadcastManager", "  Filter did not match: " + (iMatch != -4 ? iMatch != -3 ? iMatch != -2 ? iMatch != -1 ? "unknown reason" : "type" : MTCoreConstants.Protocol.KEY_DATA : "action" : "category"));
                                }
                            }
                        }
                        i6++;
                        arrayList2 = arrayList;
                    }
                    if (arrayList3 != null) {
                        for (int i9 = 0; i9 < arrayList3.size(); i9++) {
                            ((a) arrayList3.get(i9)).f6097c = false;
                        }
                        this.f6104d.add(new o(intent, arrayList3));
                        if (!this.f6105e.hasMessages(1)) {
                            this.f6105e.sendEmptyMessage(1);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f6102b) {
            try {
                ArrayList arrayList = (ArrayList) this.f6102b.remove(broadcastReceiver);
                if (arrayList == null) {
                    return;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    a aVar = (a) arrayList.get(size);
                    aVar.f6098d = true;
                    for (int i6 = 0; i6 < aVar.f6095a.countActions(); i6++) {
                        String action = aVar.f6095a.getAction(i6);
                        ArrayList arrayList2 = (ArrayList) this.f6103c.get(action);
                        if (arrayList2 != null) {
                            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                                a aVar2 = (a) arrayList2.get(size2);
                                if (aVar2.f6096b == broadcastReceiver) {
                                    aVar2.f6098d = true;
                                    arrayList2.remove(size2);
                                }
                            }
                            if (arrayList2.size() <= 0) {
                                this.f6103c.remove(action);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
