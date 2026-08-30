package com.engagelab.privates.common;

import android.os.CountDownTimer;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CountDownTimer f1122a;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface b {
        void a();
    }

    public void a(b bVar, long j3, long j8) {
        this.f1122a = new a(this, j3, j8, bVar).start();
    }

    public void a() {
        CountDownTimer countDownTimer = this.f1122a;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f1122a = null;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a extends CountDownTimer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ b f1123a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c0 c0Var, long j3, long j8, b bVar) {
            super(j3, j8);
            this.f1123a = bVar;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            b bVar = this.f1123a;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j3) {
        }
    }
}
