package com.google.firebase.ktx;

import com.google.firebase.components.ComponentRegistrar;
import f4.f;
import java.util.List;
import m1.j;
import v4.b;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class FirebaseCommonLegacyRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<b> getComponents() {
        return f.b(j.e("fire-core-ktx", "21.0.0"));
    }
}
