package com.engagelab.privates.common;

import android.content.Context;
import android.text.TextUtils;
import com.engagelab.privates.common.log.MTCommonLog;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class m extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DatagramSocket f1228b;

    @Override // com.engagelab.privates.common.j
    public String a() {
        return "UdpSisClient";
    }

    @Override // com.engagelab.privates.common.j
    public byte[] a(Context context, byte[] bArr, int i6, String str, int i9) {
        try {
            if (TextUtils.isEmpty(str) || i9 <= 0) {
                return null;
            }
            this.f1228b = new DatagramSocket();
            MTCommonLog.d("UdpSisClient", "udp connect " + str + ":" + i9);
            InetAddress byName = InetAddress.getByName(str);
            if (bArr == null) {
                return null;
            }
            DatagramPacket datagramPacket = new DatagramPacket(bArr, bArr.length, byName, i9);
            this.f1228b.setSoTimeout(i6);
            this.f1228b.send(datagramPacket);
            byte[] bArr2 = new byte[1024];
            this.f1228b.receive(new DatagramPacket(bArr2, 1024));
            return bArr2;
        } catch (Throwable th) {
            MTCommonLog.d("UdpSisClient", "udp connect failed " + th.getMessage());
            return null;
        }
    }

    @Override // com.engagelab.privates.common.j
    public void a(Context context) {
        if (this.f1228b != null) {
            MTCommonLog.d("UdpSisClient", "udp disconnect");
            this.f1228b.close();
        }
    }
}
