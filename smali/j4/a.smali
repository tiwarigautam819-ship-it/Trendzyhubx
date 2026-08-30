###### Class j4.a (j4.a)
.class public abstract Lj4/a;
.super Landroid/os/Binder;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lj4/a;->b:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lj4/a;->b:I

    .line 2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 3
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget v0, p0, Lj4/a;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public c(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 4

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 1
    iget v0, p0, Lj4/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_a4

    .line 4
    .line 5
    .line 6
    const v0, 0xffffff

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-le p1, v0, :cond_13

    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13
    .line 14
    .line 15
    move-result p4

    .line 16
    if-eqz p4, :cond_1a

    .line 17
    .line 18
    goto/16 :goto_89

    .line 19
    .line 20
    :cond_13
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1a
    packed-switch p1, :pswitch_data_aa

    .line 28
    .line 29
    .line 30
    :pswitch_1d
    const/4 v1, 0x0

    .line 31
    goto :goto_89

    .line 32
    :pswitch_1f
    sget-object p1, Ln4/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    .line 34
    invoke-static {p2, p1}, Lh4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ln4/d;

    .line 39
    .line 40
    invoke-static {p2}, Lh4/b;->b(Landroid/os/Parcel;)V

    .line 41
    .line 42
    .line 43
    goto :goto_86

    .line 44
    :pswitch_2b
    sget-object p1, Ln4/f;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    .line 46
    invoke-static {p2, p1}, Lh4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ln4/f;

    .line 51
    .line 52
    invoke-static {p2}, Lh4/b;->b(Landroid/os/Parcel;)V

    .line 53
    .line 54
    .line 55
    move-object p2, p0

    .line 56
    check-cast p2, Lx3/r;

    .line 57
    .line 58
    new-instance p4, Ls4/b;

    .line 59
    .line 60
    const/16 v0, 0x13

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-direct {p4, p2, p1, v0, v2}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p2, Lx3/r;->d:Landroid/os/Handler;

    .line 67
    .line 68
    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_86

    .line 72
    :pswitch_47
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 73
    .line 74
    invoke-static {p2, p1}, Lh4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 79
    .line 80
    sget-object p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 81
    .line 82
    invoke-static {p2, p1}, Lh4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 87
    .line 88
    invoke-static {p2}, Lh4/b;->b(Landroid/os/Parcel;)V

    .line 89
    .line 90
    .line 91
    goto :goto_86

    .line 92
    :pswitch_5b
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 93
    .line 94
    invoke-static {p2, p1}, Lh4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 99
    .line 100
    invoke-static {p2}, Lh4/b;->b(Landroid/os/Parcel;)V

    .line 101
    .line 102
    .line 103
    goto :goto_86

    .line 104
    :pswitch_67
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    .line 106
    invoke-static {p2, p1}, Lh4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 111
    .line 112
    invoke-static {p2}, Lh4/b;->b(Landroid/os/Parcel;)V

    .line 113
    .line 114
    .line 115
    goto :goto_86

    .line 116
    :pswitch_73
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 117
    .line 118
    invoke-static {p2, p1}, Lh4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 123
    .line 124
    sget-object p1, Ln4/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 125
    .line 126
    invoke-static {p2, p1}, Lh4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Ln4/b;

    .line 131
    .line 132
    invoke-static {p2}, Lh4/b;->b(Landroid/os/Parcel;)V

    .line 133
    .line 134
    .line 135
    :goto_86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    .line 137
    .line 138
    :goto_89
    return v1

    .line 139
    :pswitch_8a
    const v0, 0xffffff

    .line 140
    .line 141
    .line 142
    if-le p1, v0, :cond_97

    .line 143
    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 145
    .line 146
    .line 147
    move-result p4

    .line 148
    if-eqz p4, :cond_9e

    .line 149
    .line 150
    const/4 p1, 0x1

    .line 151
    goto :goto_a2

    .line 152
    :cond_97
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p4

    .line 156
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_9e
    invoke-virtual {p0, p1, p2, p3}, Lj4/a;->c(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    :goto_a2
    return p1

    .line 164
    nop

    .line 165
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_8a
    .end packed-switch

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :pswitch_data_aa
    .packed-switch 0x3
        :pswitch_73
        :pswitch_67
        :pswitch_1d
        :pswitch_5b
        :pswitch_47
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
