###### Class com.google.android.gms.internal.measurement.d7 (com.google.android.gms.internal.measurement.d7)
.class public final Lcom/google/android/gms/internal/measurement/d7;
.super Lcom/google/android/gms/internal/measurement/e7;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/measurement/d7;->b:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/e7;-><init>(Lsun/misc/Unsafe;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)D
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/d7;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    return-wide p1

    .line 15
    :pswitch_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;JB)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/d7;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1e

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->g:Z

    .line 7
    .line 8
    if-eqz v0, :cond_d

    .line 9
    .line 10
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/f7;->g(Ljava/lang/Object;JB)V

    .line 11
    .line 12
    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/f7;->h(Ljava/lang/Object;JB)V

    .line 15
    .line 16
    .line 17
    :goto_10
    return-void

    .line 18
    :pswitch_11
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->g:Z

    .line 19
    .line 20
    if-eqz v0, :cond_19

    .line 21
    .line 22
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/f7;->g(Ljava/lang/Object;JB)V

    .line 23
    .line 24
    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/f7;->h(Ljava/lang/Object;JB)V

    .line 27
    .line 28
    .line 29
    :goto_1c
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;JD)V
    .registers 12

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/d7;->b:I

    .line 2
    .line 3
    packed-switch v1, :pswitch_data_1c

    .line 4
    .line 5
    .line 6
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 7
    .line 8
    .line 9
    move-result-wide v4

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-wide v2, p2

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/e7;->f(Ljava/lang/Object;JJ)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_10
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    move-object v0, p0

    .line 22
    move-object v1, p1

    .line 23
    move-wide v2, p2

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/e7;->f(Ljava/lang/Object;JJ)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;JF)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/d7;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 7
    .line 8
    .line 9
    move-result p4

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/e7;->e(Ljava/lang/Object;JI)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/e7;->e(Ljava/lang/Object;JI)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;JZ)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/d7;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->g:Z

    .line 7
    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    int-to-byte p4, p4

    .line 11
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/f7;->g(Ljava/lang/Object;JB)V

    .line 12
    .line 13
    .line 14
    goto :goto_12

    .line 15
    :cond_e
    int-to-byte p4, p4

    .line 16
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/f7;->h(Ljava/lang/Object;JB)V

    .line 17
    .line 18
    .line 19
    :goto_12
    return-void

    .line 20
    :pswitch_13
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->g:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1c

    .line 23
    .line 24
    int-to-byte p4, p4

    .line 25
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/f7;->g(Ljava/lang/Object;JB)V

    .line 26
    .line 27
    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    int-to-byte p4, p4

    .line 30
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/f7;->h(Ljava/lang/Object;JB)V

    .line 31
    .line 32
    .line 33
    :goto_20
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method

.method public final h(JLjava/lang/Object;)F
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/d7;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public final i(JLjava/lang/Object;)Z
    .registers 12

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/d7;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_62

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->g:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x3

    .line 11
    const-wide/16 v4, 0x3

    .line 12
    .line 13
    const-wide/16 v6, -0x4

    .line 14
    .line 15
    if-eqz v0, :cond_22

    .line 16
    .line 17
    and-long/2addr v6, p1

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 19
    .line 20
    invoke-virtual {v0, v6, v7, p3}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    not-long p1, p1

    .line 25
    and-long/2addr p1, v4

    .line 26
    shl-long/2addr p1, v3

    .line 27
    long-to-int p1, p1

    .line 28
    ushr-int p1, p3, p1

    .line 29
    .line 30
    int-to-byte p1, p1

    .line 31
    if-eqz p1, :cond_32

    .line 32
    .line 33
    :goto_20
    move v1, v2

    .line 34
    goto :goto_32

    .line 35
    :cond_22
    and-long/2addr v6, p1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 37
    .line 38
    invoke-virtual {v0, v6, v7, p3}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    and-long/2addr p1, v4

    .line 43
    shl-long/2addr p1, v3

    .line 44
    long-to-int p1, p1

    .line 45
    ushr-int p1, p3, p1

    .line 46
    .line 47
    int-to-byte p1, p1

    .line 48
    if-eqz p1, :cond_32

    .line 49
    .line 50
    goto :goto_20

    .line 51
    :cond_32
    :goto_32
    return v1

    .line 52
    :pswitch_33
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->g:Z

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    const/4 v2, 0x1

    .line 56
    const/4 v3, 0x3

    .line 57
    const-wide/16 v4, 0x3

    .line 58
    .line 59
    const-wide/16 v6, -0x4

    .line 60
    .line 61
    if-eqz v0, :cond_50

    .line 62
    .line 63
    and-long/2addr v6, p1

    .line 64
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 65
    .line 66
    invoke-virtual {v0, v6, v7, p3}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    not-long p1, p1

    .line 71
    and-long/2addr p1, v4

    .line 72
    shl-long/2addr p1, v3

    .line 73
    long-to-int p1, p1

    .line 74
    ushr-int p1, p3, p1

    .line 75
    .line 76
    int-to-byte p1, p1

    .line 77
    if-eqz p1, :cond_60

    .line 78
    .line 79
    :goto_4e
    move v1, v2

    .line 80
    goto :goto_60

    .line 81
    :cond_50
    and-long/2addr v6, p1

    .line 82
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 83
    .line 84
    invoke-virtual {v0, v6, v7, p3}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    and-long/2addr p1, v4

    .line 89
    shl-long/2addr p1, v3

    .line 90
    long-to-int p1, p1

    .line 91
    ushr-int p1, p3, p1

    .line 92
    .line 93
    int-to-byte p1, p1

    .line 94
    if-eqz p1, :cond_60

    .line 95
    .line 96
    goto :goto_4e

    .line 97
    :cond_60
    :goto_60
    return v1

    .line 98
    nop

    .line 99
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_33
    .end packed-switch
.end method
