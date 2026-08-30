package com.engagelab.privates.common.component;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.engagelab.privates.common.MTCommon;
import com.engagelab.privates.common.business.lifecycle.MTLifecycleBusiness;
import com.engagelab.privates.common.business.network.MTNetworkBusiness;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.log.MTLogConfigHelper;
import com.engagelab.privates.common.observer.MTObservable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class MTCommonProvider extends ContentProvider {
    private void initLog() {
        MTCommonLog.initLogCache(getContext().getApplicationContext());
        MTLogConfigHelper.updateLogCtrlConfig(getContext().getApplicationContext());
        MTCommonLog.setProcessType(true);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        MTObservable.getInstance().observer(getContext().getApplicationContext(), new MTCommon());
        MTLifecycleBusiness.getInstance().init(getContext().getApplicationContext());
        MTNetworkBusiness.getInstance().init(getContext().getApplicationContext());
        initLog();
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
