###### Class u3.c (u3.c)
.class public final Lu3/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lu3/c;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 7

    .line 1
    iget v0, p0, Lu3/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_38

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lu3/g;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lu3/g;-><init>(Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_f
    invoke-static {p1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_14
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v2, v0, :cond_2f

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-char v3, v2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v3, v4, :cond_26

    .line 34
    .line 35
    invoke-static {v2, p1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 36
    .line 37
    .line 38
    goto :goto_14

    .line 39
    :cond_26
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    .line 41
    invoke-static {p1, v2, v1}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/content/Intent;

    .line 46
    .line 47
    goto :goto_14

    .line 48
    :cond_2f
    invoke-static {v0, p1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lu3/a;

    .line 52
    .line 53
    invoke-direct {p1, v1}, Lu3/a;-><init>(Landroid/content/Intent;)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lu3/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_c

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Lu3/g;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_8
    new-array p1, p1, [Lu3/a;

    .line 10
    .line 11
    return-object p1

    .line 12
    nop

    .line 13
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method
