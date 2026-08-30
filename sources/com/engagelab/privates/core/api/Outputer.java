package com.engagelab.privates.core.api;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class Outputer {
    private byte[] array;
    private int pos;
    private int saved_pos;

    public Outputer(int i6) {
        this.array = new byte[i6];
        this.pos = 0;
        this.saved_pos = -1;
    }

    private void need(int i6) {
        byte[] bArr = this.array;
        int length = bArr.length;
        int i9 = this.pos;
        if (length - i9 >= i6) {
            return;
        }
        int length2 = bArr.length * 2;
        int i10 = i6 + i9;
        if (length2 < i10) {
            length2 = i10;
        }
        byte[] bArr2 = new byte[length2];
        System.arraycopy(bArr, 0, bArr2, 0, i9);
        this.array = bArr2;
    }

    public int current() {
        return this.pos;
    }

    public void jump(int i6) {
        if (i6 > this.pos) {
            throw new IllegalArgumentException("cannot jump past end of data");
        }
        this.pos = i6;
    }

    public void restore() {
        int i6 = this.saved_pos;
        if (i6 < 0) {
            throw new IllegalStateException("no previous state");
        }
        this.pos = i6;
        this.saved_pos = -1;
    }

    public void save() {
        this.saved_pos = this.pos;
    }

    public byte[] toByteArray() {
        int i6 = this.pos;
        byte[] bArr = new byte[i6];
        System.arraycopy(this.array, 0, bArr, 0, i6);
        return bArr;
    }

    public void writeByteArray(byte[] bArr, int i6, int i9) {
        need(i9);
        System.arraycopy(bArr, i6, this.array, this.pos, i9);
        this.pos += i9;
    }

    public void writeByteArrayIncludeLength(byte[] bArr) {
        writeU16(bArr.length);
        writeByteArray(bArr, 0, bArr.length);
    }

    public void writeCountedString(byte[] bArr) {
        if (bArr.length > 255) {
            throw new IllegalArgumentException("Invalid counted string");
        }
        need(bArr.length + 1);
        byte[] bArr2 = this.array;
        int i6 = this.pos;
        this.pos = i6 + 1;
        bArr2[i6] = (byte) (255 & bArr.length);
        writeByteArray(bArr, 0, bArr.length);
    }

    public void writeU16(int i6) {
        check(i6, 16);
        need(2);
        byte[] bArr = this.array;
        int i9 = this.pos;
        int i10 = i9 + 1;
        this.pos = i10;
        bArr[i9] = (byte) ((i6 >>> 8) & 255);
        this.pos = i9 + 2;
        bArr[i10] = (byte) (i6 & 255);
    }

    public void writeU16At(int i6, int i9) {
        check(i6, 16);
        if (i9 > this.pos - 2) {
            throw new IllegalArgumentException("cannot write past end of data");
        }
        byte[] bArr = this.array;
        bArr[i9] = (byte) ((i6 >>> 8) & 255);
        bArr[i9 + 1] = (byte) (i6 & 255);
    }

    public void writeU32(long j3) {
        check(j3, 32);
        need(4);
        byte[] bArr = this.array;
        int i6 = this.pos;
        int i9 = i6 + 1;
        this.pos = i9;
        bArr[i6] = (byte) ((j3 >>> 24) & 255);
        int i10 = i6 + 2;
        this.pos = i10;
        bArr[i9] = (byte) ((j3 >>> 16) & 255);
        int i11 = i6 + 3;
        this.pos = i11;
        bArr[i10] = (byte) ((j3 >>> 8) & 255);
        this.pos = i6 + 4;
        bArr[i11] = (byte) (j3 & 255);
    }

    public void writeU32At(long j3, int i6) {
        check(j3, 32);
        if (i6 > this.pos - 4) {
            throw new IllegalArgumentException("cannot write past end of data");
        }
        byte[] bArr = this.array;
        bArr[i6] = (byte) ((j3 >>> 24) & 255);
        bArr[i6 + 1] = (byte) ((j3 >>> 16) & 255);
        bArr[i6 + 2] = (byte) ((j3 >>> 8) & 255);
        bArr[i6 + 3] = (byte) (j3 & 255);
    }

    public void writeU64(long j3) {
        need(8);
        byte[] bArr = this.array;
        int i6 = this.pos;
        int i9 = i6 + 1;
        this.pos = i9;
        bArr[i6] = (byte) ((j3 >>> 56) & 255);
        int i10 = i6 + 2;
        this.pos = i10;
        bArr[i9] = (byte) ((j3 >>> 48) & 255);
        int i11 = i6 + 3;
        this.pos = i11;
        bArr[i10] = (byte) ((j3 >>> 40) & 255);
        int i12 = i6 + 4;
        this.pos = i12;
        bArr[i11] = (byte) ((j3 >>> 32) & 255);
        int i13 = i6 + 5;
        this.pos = i13;
        bArr[i12] = (byte) ((j3 >>> 24) & 255);
        int i14 = i6 + 6;
        this.pos = i14;
        bArr[i13] = (byte) ((j3 >>> 16) & 255);
        int i15 = i6 + 7;
        this.pos = i15;
        bArr[i14] = (byte) ((j3 >>> 8) & 255);
        this.pos = i6 + 8;
        bArr[i15] = (byte) (j3 & 255);
    }

    public void writeU64At(long j3, int i6) {
        check(j3, 64);
        if (i6 > this.pos - 8) {
            throw new IllegalArgumentException("cannot write past end of data");
        }
        byte[] bArr = this.array;
        bArr[i6] = (byte) ((j3 >>> 56) & 255);
        bArr[i6 + 1] = (byte) ((j3 >>> 48) & 255);
        bArr[i6 + 2] = (byte) ((j3 >>> 40) & 255);
        bArr[i6 + 3] = (byte) ((j3 >>> 32) & 255);
        bArr[i6 + 4] = (byte) ((j3 >>> 24) & 255);
        bArr[i6 + 5] = (byte) ((j3 >>> 16) & 255);
        bArr[i6 + 6] = (byte) ((j3 >>> 8) & 255);
        bArr[i6 + 7] = (byte) (j3 & 255);
    }

    public void writeU8(int i6) {
        check(i6, 8);
        need(1);
        byte[] bArr = this.array;
        int i9 = this.pos;
        this.pos = i9 + 1;
        bArr[i9] = (byte) (i6 & 255);
    }

    public void writeU8At(int i6, int i9) {
        check(i6, 8);
        if (i9 > this.pos - 1) {
            throw new IllegalArgumentException("cannot write past end of data");
        }
        this.array[i9] = (byte) (i6 & 255);
    }

    public void writeByteArray(byte[] bArr) {
        writeByteArray(bArr, 0, bArr.length);
    }

    public Outputer() {
        this(32);
    }

    private void check(long j3, int i6) {
    }
}
