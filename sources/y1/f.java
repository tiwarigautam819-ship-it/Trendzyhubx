package y1;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends ObjectInputStream {
    @Override // java.io.ObjectInputStream
    public final ObjectStreamClass readClassDescriptor() throws ClassNotFoundException, IOException {
        ObjectStreamClass classDescriptor = super.readClassDescriptor();
        if (d7.g.a(classDescriptor.getName(), "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1")) {
            classDescriptor = ObjectStreamClass.lookup(a.class);
        } else if (d7.g.a(classDescriptor.getName(), "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV2")) {
            classDescriptor = ObjectStreamClass.lookup(d.class);
        }
        d7.g.e("resultClassDescriptor", classDescriptor);
        return classDescriptor;
    }
}
