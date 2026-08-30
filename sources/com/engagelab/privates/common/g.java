package com.engagelab.privates.common;

import android.content.Context;
import com.engagelab.privates.common.log.MTCommonLog;
import com.engagelab.privates.common.utils.SystemUtil;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class g extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Selector f1162d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SocketChannel f1163e;

    @Override // com.engagelab.privates.common.f
    public String a() {
        return "TcpChannlClient";
    }

    @Override // com.engagelab.privates.common.f
    public boolean b(Context context, String str, int i6) throws IOException {
        if (!SystemUtil.isNetworkConnecting(context)) {
            MTCommonLog.e("TcpChannlClient", "can't connect, network is disConnected");
            return false;
        }
        MTCommonLog.d("TcpChannlClient", "tcp connect " + str + ":" + i6);
        InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i6);
        SocketChannel socketChannelOpen = SocketChannel.open();
        this.f1163e = socketChannelOpen;
        socketChannelOpen.configureBlocking(false);
        Selector selectorOpen = Selector.open();
        this.f1162d = selectorOpen;
        this.f1163e.register(selectorOpen, 8);
        this.f1163e.connect(inetSocketAddress);
        this.f1162d.select();
        Set<SelectionKey> setSelectedKeys = this.f1162d.selectedKeys();
        if (setSelectedKeys == null) {
            MTCommonLog.d("TcpChannlClient", "selectionKeys is null");
            return false;
        }
        if (setSelectedKeys.isEmpty()) {
            MTCommonLog.d("TcpChannlClient", "selectionKeys is empty");
            return false;
        }
        SelectionKey next = setSelectedKeys.iterator().next();
        if (next == null || !next.isConnectable()) {
            MTCommonLog.d("TcpChannlClient", "selectionKey is null");
            return false;
        }
        if (!next.isConnectable()) {
            MTCommonLog.d("TcpChannlClient", "selectionKey is disConnected");
            return false;
        }
        SocketChannel socketChannel = (SocketChannel) next.channel();
        if (!socketChannel.isConnectionPending()) {
            MTCommonLog.d("TcpChannlClient", "finish connect");
            return false;
        }
        socketChannel.finishConnect();
        socketChannel.register(this.f1162d, 1);
        MTCommonLog.d("TcpChannlClient", "tcp connect success");
        return true;
    }

    @Override // com.engagelab.privates.common.f
    public List<String> c(Context context) {
        return i(context);
    }

    @Override // com.engagelab.privates.common.f
    public byte[] d(Context context) {
        try {
        } catch (IOException e9) {
            MTCommonLog.w("TcpChannlClient", "receive IOException " + e9.getMessage());
            a(context, true);
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("receive failed "), "TcpChannlClient");
            a(context, true);
        }
        if (!b()) {
            MTCommonLog.d("TcpChannlClient", "tcp is not connecting");
            return null;
        }
        this.f1162d.select();
        if (!this.f1162d.isOpen()) {
            MTCommonLog.d("TcpChannlClient", "selector is closed");
            return null;
        }
        Set<SelectionKey> setSelectedKeys = this.f1162d.selectedKeys();
        if (setSelectedKeys == null) {
            MTCommonLog.w("TcpChannlClient", "selectionKeys is null");
            a(context, true);
            return null;
        }
        if (setSelectedKeys.isEmpty()) {
            MTCommonLog.w("TcpChannlClient", "selectionKeys is empty");
            a(context, true);
            return null;
        }
        Iterator<SelectionKey> it = setSelectedKeys.iterator();
        if (!it.hasNext()) {
            MTCommonLog.w("TcpChannlClient", "selectionKeys hasn't next");
            a(context, true);
            return null;
        }
        SelectionKey next = it.next();
        if (next == null) {
            MTCommonLog.w("TcpChannlClient", "selectionKey is null");
            a(context, true);
            return null;
        }
        if (!next.isReadable()) {
            MTCommonLog.w("TcpChannlClient", "selectionKey is disReadable");
            a(context, true);
            return null;
        }
        SocketChannel socketChannel = (SocketChannel) next.channel();
        if (!socketChannel.isConnected()) {
            MTCommonLog.w("TcpChannlClient", "socketChannel is disConnected");
            a(context, true);
            return null;
        }
        if (b()) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
            int i6 = socketChannel.read(byteBufferAllocate);
            if (i6 < 0) {
                MTCommonLog.w("TcpChannlClient", "read ahead length = " + i6);
                a(context, true);
                return null;
            }
            byte[] bArrArray = byteBufferAllocate.array();
            int i9 = ByteBuffer.wrap(bArrArray).getShort() & 16383;
            if (i9 == 0) {
                MTCommonLog.w("TcpChannlClient", "read total length = " + i9);
                a(context, true);
                return null;
            }
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i9 - 2);
            while (byteBufferAllocate2.hasRemaining()) {
                long j3 = socketChannel.read(byteBufferAllocate2);
                if (j3 < 0) {
                    MTCommonLog.w("TcpChannlClient", "read content n = " + j3);
                    MTCommonLog.w("TcpChannlClient", "read content position = " + byteBufferAllocate2.position());
                    MTCommonLog.w("TcpChannlClient", "read content limit = " + byteBufferAllocate2.limit());
                    a(context, true);
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

    public final List<String> i(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(j(context));
        return arrayList;
    }

    public final List<String> j(Context context) {
        return r.n(context);
    }

    @Override // com.engagelab.privates.common.f
    public void a(Context context) {
        MTCommonLog.d("TcpChannlClient", "tcp disconnectImp");
        try {
            Selector selector = this.f1162d;
            if (selector != null && selector.isOpen()) {
                this.f1162d.close();
                this.f1162d = null;
            }
            SocketChannel socketChannel = this.f1163e;
            if (socketChannel == null || !socketChannel.isConnected()) {
                return;
            }
            this.f1163e.finishConnect();
            this.f1163e.close();
            this.f1163e = null;
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("disconnect failed "), "TcpChannlClient");
        }
    }

    @Override // com.engagelab.privates.common.f
    public boolean c(Context context, byte[] bArr) throws IOException {
        SocketChannel socketChannel = this.f1163e;
        if (socketChannel == null || !socketChannel.isConnected()) {
            return false;
        }
        this.f1163e.write(ByteBuffer.wrap(bArr));
        return true;
    }
}
