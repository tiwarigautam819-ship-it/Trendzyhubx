###### Class z2.b (z2.b)
.class public abstract Lz2/b;
.super Landroid/os/Binder;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lz2/c;


# direct methods
.method public static b(Landroid/os/IBinder;)Lz2/c;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.facebook.ppml.receiver.IReceiverService"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 12
    .line 13
    instance-of v1, v0, Lz2/c;

    .line 14
    .line 15
    if-eqz v1, :cond_13

    .line 16
    .line 17
    check-cast v0, Lz2/c;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lz2/a;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p0, v0, Lz2/a;->b:Landroid/os/IBinder;

    .line 26
    .line 27
    return-object v0
.end method
