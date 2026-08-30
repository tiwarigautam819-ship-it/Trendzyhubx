###### Class android.support.v4.media.MediaBrowserCompat$ItemReceiver (android.support.v4.media.MediaBrowserCompat$ItemReceiver)
.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super La/e;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    if-eqz p2, :cond_b

    .line 2
    .line 3
    const-class v0, Landroid/support/v4/media/session/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 10
    .line 11
    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    if-nez p1, :cond_27

    .line 14
    .line 15
    if-eqz p2, :cond_27

    .line 16
    .line 17
    const-string p1, "media_item"

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_27

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_24

    .line 30
    .line 31
    instance-of p2, p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 32
    .line 33
    if-eqz p2, :cond_23

    .line 34
    .line 35
    goto :goto_24

    .line 36
    :cond_23
    throw v0

    .line 37
    :cond_24
    :goto_24
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 38
    .line 39
    throw v0

    .line 40
    :cond_27
    throw v0
.end method
