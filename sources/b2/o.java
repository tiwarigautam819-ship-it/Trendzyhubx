package b2;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f944a;

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i6) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            d7.g.f("sensor", sensor);
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            d7.g.f("event", sensorEvent);
            d dVar = this.f944a;
            if (dVar != null) {
                float[] fArr = sensorEvent.values;
                double d6 = fArr[0] / 9.80665f;
                double d9 = fArr[1] / 9.80665f;
                double d10 = fArr[2] / 9.80665f;
                if (Math.sqrt((d10 * d10) + (d9 * d9) + (d6 * d6)) > 2.3d) {
                    dVar.d();
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
