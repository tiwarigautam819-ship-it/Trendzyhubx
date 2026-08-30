package com.google.firebase.analytics.connector.internal;

import android.content.Context;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.analytics.connector.AnalyticsConnectorImpl;
import com.google.firebase.components.ComponentRegistrar;
import d5.d;
import java.util.Arrays;
import java.util.List;
import m1.j;
import t4.g;
import v4.a;
import v4.b;
import v4.c;
import v4.h;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<b> getComponents() {
        a aVarA = b.a(AnalyticsConnector.class);
        aVarA.a(h.a(g.class));
        aVarA.a(h.a(Context.class));
        aVarA.a(h.a(d.class));
        aVarA.f5586f = new v4.d() { // from class: com.google.firebase.analytics.connector.internal.zzc
            @Override // v4.d
            public final Object create(c cVar) {
                return AnalyticsConnectorImpl.getInstance((g) cVar.a(g.class), (Context) cVar.a(Context.class), (d) cVar.a(d.class));
            }
        };
        if (!(aVarA.f5584d == 0)) {
            throw new IllegalStateException("Instantiation type has already been set.");
        }
        aVarA.f5584d = 2;
        return Arrays.asList(aVarA.b(), j.e("fire-analytics", "22.1.2"));
    }
}
