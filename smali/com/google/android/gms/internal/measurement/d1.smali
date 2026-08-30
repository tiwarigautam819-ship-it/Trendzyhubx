###### Class com.google.android.gms.internal.measurement.d1 (com.google.android.gms.internal.measurement.d1)
.class public final Lcom/google/android/gms/internal/measurement/d1;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 19

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
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-wide v7, v2

    .line 12
    move-wide v9, v7

    .line 13
    move v11, v4

    .line 14
    move-object v12, v5

    .line 15
    move-object v13, v12

    .line 16
    move-object v14, v13

    .line 17
    move-object v15, v14

    .line 18
    move-object/from16 v16, v15

    .line 19
    .line 20
    :goto_13
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v2, v1, :cond_4d

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-char v3, v2

    .line 31
    packed-switch v3, :pswitch_data_56

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v0}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 35
    .line 36
    .line 37
    goto :goto_13

    .line 38
    :pswitch_25
    invoke-static {v2, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v16

    .line 42
    goto :goto_13

    .line 43
    :pswitch_2a
    invoke-static {v2, v0}, Lj7/g;->e(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    goto :goto_13

    .line 48
    :pswitch_2f
    invoke-static {v2, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    goto :goto_13

    .line 53
    :pswitch_34
    invoke-static {v2, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    goto :goto_13

    .line 58
    :pswitch_39
    invoke-static {v2, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    goto :goto_13

    .line 63
    :pswitch_3e
    invoke-static {v2, v0}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    goto :goto_13

    .line 68
    :pswitch_43
    invoke-static {v2, v0}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v9

    .line 72
    goto :goto_13

    .line 73
    :pswitch_48
    invoke-static {v2, v0}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    goto :goto_13

    .line 78
    :cond_4d
    invoke-static {v1, v0}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 79
    .line 80
    .line 81
    new-instance v6, Lcom/google/android/gms/internal/measurement/e1;

    .line 82
    .line 83
    invoke-direct/range {v6 .. v16}, Lcom/google/android/gms/internal/measurement/e1;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v6

    .line 87
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_48
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/internal/measurement/e1;

    .line 2
    .line 3
    return-object p1
.end method
