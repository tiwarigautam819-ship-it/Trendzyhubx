###### Class com.google.android.gms.measurement.internal.zzoq (com.google.android.gms.measurement.internal.zzoq)
.class public final Lcom/google/android/gms/measurement/internal/zzoq;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/measurement/internal/zzon;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {v0}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    move v7, v2

    .line 12
    move-object v8, v3

    .line 13
    move-object v11, v8

    .line 14
    move-object v12, v11

    .line 15
    move-object v13, v12

    .line 16
    move-object v14, v13

    .line 17
    move-object v15, v14

    .line 18
    move-wide v9, v4

    .line 19
    :goto_12
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v2, v1, :cond_7f

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-char v4, v2

    .line 30
    const/16 v5, 0x8

    .line 31
    .line 32
    packed-switch v4, :pswitch_data_88

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v0}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 36
    .line 37
    .line 38
    goto :goto_12

    .line 39
    :pswitch_26
    invoke-static {v2, v0}, Lj7/g;->r(ILandroid/os/Parcel;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2e

    .line 44
    .line 45
    move-object v15, v3

    .line 46
    goto :goto_12

    .line 47
    :cond_2e
    invoke-static {v0, v2, v5}, Lj7/g;->x(Landroid/os/Parcel;II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object v15, v2

    .line 59
    goto :goto_12

    .line 60
    :pswitch_3b
    invoke-static {v2, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v14

    .line 64
    goto :goto_12

    .line 65
    :pswitch_40
    invoke-static {v2, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    goto :goto_12

    .line 70
    :pswitch_45
    invoke-static {v2, v0}, Lj7/g;->r(ILandroid/os/Parcel;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_4d

    .line 75
    .line 76
    move-object v12, v3

    .line 77
    goto :goto_12

    .line 78
    :cond_4d
    const/4 v4, 0x4

    .line 79
    invoke-static {v0, v2, v4}, Lj7/g;->x(Landroid/os/Parcel;II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    move-object v12, v2

    .line 91
    goto :goto_12

    .line 92
    :pswitch_5b
    invoke-static {v2, v0}, Lj7/g;->r(ILandroid/os/Parcel;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_63

    .line 97
    .line 98
    move-object v11, v3

    .line 99
    goto :goto_12

    .line 100
    :cond_63
    invoke-static {v0, v2, v5}, Lj7/g;->x(Landroid/os/Parcel;II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 104
    .line 105
    .line 106
    move-result-wide v4

    .line 107
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    move-object v11, v2

    .line 112
    goto :goto_12

    .line 113
    :pswitch_70
    invoke-static {v2, v0}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v9

    .line 117
    goto :goto_12

    .line 118
    :pswitch_75
    invoke-static {v2, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    goto :goto_12

    .line 123
    :pswitch_7a
    invoke-static {v2, v0}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    goto :goto_12

    .line 128
    :cond_7f
    invoke-static {v1, v0}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 129
    .line 130
    .line 131
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzon;

    .line 132
    .line 133
    invoke-direct/range {v6 .. v15}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    .line 134
    .line 135
    .line 136
    return-object v6

    .line 137
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_75
        :pswitch_70
        :pswitch_5b
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_26
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/measurement/internal/zzon;

    .line 2
    .line 3
    return-object p1
.end method
