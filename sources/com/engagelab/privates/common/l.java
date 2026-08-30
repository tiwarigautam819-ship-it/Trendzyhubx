package com.engagelab.privates.common;

import android.content.Context;
import android.text.TextUtils;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.SystemUtil;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class l extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SocketChannel f1205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Selector f1206c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1207d;

    @Override // com.engagelab.privates.common.j
    public String a() {
        return "TcpSisClinet";
    }

    public boolean b(Context context, String str, int i6) throws IOException {
        if (!SystemUtil.isNetworkConnecting(context)) {
            MTCommonLog.e("TcpSisClinet", "can't connect, network is disConnected");
            return false;
        }
        InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i6);
        SocketChannel socketChannelOpen = SocketChannel.open();
        this.f1205b = socketChannelOpen;
        socketChannelOpen.configureBlocking(false);
        Selector selectorOpen = Selector.open();
        this.f1206c = selectorOpen;
        this.f1205b.register(selectorOpen, 8);
        this.f1205b.connect(inetSocketAddress);
        this.f1206c.select();
        Set<SelectionKey> setSelectedKeys = this.f1206c.selectedKeys();
        if (setSelectedKeys == null) {
            MTCommonLog.d("TcpSisClinet", "selectionKeys is null");
            return false;
        }
        if (setSelectedKeys.isEmpty()) {
            MTCommonLog.d("TcpSisClinet", "selectionKeys is empty");
            return false;
        }
        SelectionKey next = setSelectedKeys.iterator().next();
        if (next == null || !next.isConnectable()) {
            MTCommonLog.d("TcpSisClinet", "selectionKey is null");
            return false;
        }
        if (!next.isConnectable()) {
            MTCommonLog.d("TcpSisClinet", "selectionKey is disConnected");
            return false;
        }
        SocketChannel socketChannel = (SocketChannel) next.channel();
        if (!socketChannel.isConnectionPending()) {
            MTCommonLog.d("TcpSisClinet", "finish connect");
            return false;
        }
        socketChannel.finishConnect();
        socketChannel.register(this.f1206c, 1);
        MTCommonLog.d("TcpSisClinet", "tcp connect success");
        return true;
    }

    public void h(Context context) {
        MTCommonLog.d("TcpSisClinet", "tcp disconnectImp");
        try {
            Selector selector = this.f1206c;
            if (selector != null && selector.isOpen()) {
                this.f1206c.close();
                this.f1206c = null;
            }
            SocketChannel socketChannel = this.f1205b;
            if (socketChannel == null || !socketChannel.isConnected()) {
                return;
            }
            this.f1205b.finishConnect();
            this.f1205b.close();
            this.f1205b = null;
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("disconnect failed "), "TcpSisClinet");
        }
    }

    public byte[] i(Context context) {
        try {
        } catch (IOException e9) {
            MTCommonLog.w("TcpSisClinet", "receive IOException " + e9.getMessage());
            h(context);
        } catch (Throwable th) {
            MTCommonLog.w("TcpSisClinet", "receive failed " + th.getMessage());
            h(context);
        }
        if (!this.f1207d) {
            MTCommonLog.d("TcpSisClinet", "tcp is not connecting");
            return null;
        }
        this.f1206c.select();
        if (!this.f1206c.isOpen()) {
            MTCommonLog.d("TcpSisClinet", "selector is closed");
            return null;
        }
        Set<SelectionKey> setSelectedKeys = this.f1206c.selectedKeys();
        if (setSelectedKeys == null) {
            MTCommonLog.w("TcpSisClinet", "selectionKeys is null");
            h(context);
            return null;
        }
        if (setSelectedKeys.isEmpty()) {
            MTCommonLog.w("TcpSisClinet", "selectionKeys is empty");
            h(context);
            return null;
        }
        Iterator<SelectionKey> it = setSelectedKeys.iterator();
        if (!it.hasNext()) {
            MTCommonLog.w("TcpSisClinet", "selectionKeys hasn't next");
            h(context);
            return null;
        }
        SelectionKey next = it.next();
        if (next == null) {
            MTCommonLog.w("TcpSisClinet", "selectionKey is null");
            h(context);
            return null;
        }
        if (!next.isReadable()) {
            MTCommonLog.w("TcpSisClinet", "selectionKey is disReadable");
            h(context);
            return null;
        }
        SocketChannel socketChannel = (SocketChannel) next.channel();
        if (!socketChannel.isConnected()) {
            MTCommonLog.w("TcpSisClinet", "socketChannel is disConnected");
            h(context);
            return null;
        }
        if (this.f1207d) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
            int i6 = socketChannel.read(byteBufferAllocate);
            if (i6 < 0) {
                MTCommonLog.w("TcpSisClinet", "read ahead length = " + i6);
                h(context);
                return null;
            }
            byte[] bArrArray = byteBufferAllocate.array();
            int i9 = ByteBuffer.wrap(bArrArray).getShort() & 16383;
            if (i9 == 0) {
                MTCommonLog.w("TcpSisClinet", "read total length = " + i9);
                h(context);
                return null;
            }
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i9 - 2);
            while (byteBufferAllocate2.hasRemaining()) {
                long j3 = socketChannel.read(byteBufferAllocate2);
                if (j3 < 0) {
                    MTCommonLog.w("TcpSisClinet", "read content n = " + j3);
                    MTCommonLog.w("TcpSisClinet", "read content position = " + byteBufferAllocate2.position());
                    MTCommonLog.w("TcpSisClinet", "read content limit = " + byteBufferAllocate2.limit());
                    h(context);
                    return null;
                }
            }
            byte[] bArrArray2 = byteBufferAllocate2.array();
            byte[] bArr = new byte[i9];
            System.arraycopy(bArrArray, 0, bArr, 0, bArrArray.length);
            System.arraycopy(bArrArray2, 0, bArr, bArrArray.length, bArrArray2.length);
            return bArr;
        }
        return null;
    }

    @Override // com.engagelab.privates.common.j
    public byte[] a(Context context, byte[] bArr, int i6, String str, int i9) {
        int i10;
        try {
            if (TextUtils.isEmpty(str) || i9 - 10000 <= 0) {
                return null;
            }
            MTCommonLog.d("TcpSisClinet", "tcp connect " + str + ":" + i10);
            if (!b(context, str, i10)) {
                this.f1207d = false;
                MTCommonLog.d("TcpSisClinet", "tcp connect fail");
                return null;
            }
            this.f1207d = true;
            if (b(context, bArr)) {
                return i(context);
            }
            h(context);
            return null;
        } catch (Throwable th) {
            MTCommonLog.d("TcpSisClinet", "udp connect failed " + th.getMessage());
            return null;
        }
    }

    @Override // com.engagelab.privates.common.j
    public void a(Context context) {
        h(context);
    }

    public boolean b(Context context, byte[] bArr) throws IOException {
        SocketChannel socketChannel = this.f1205b;
        if (socketChannel == null || !socketChannel.isConnected()) {
            return false;
        }
        this.f1205b.write(ByteBuffer.wrap(bArr));
        return true;
    }
}
