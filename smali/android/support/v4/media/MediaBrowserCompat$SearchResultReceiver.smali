###### Class android.support.v4.media.MediaBrowserCompat$SearchResultReceiver (android.support.v4.media.MediaBrowserCompat$SearchResultReceiver)
.class Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super La/e;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .registers 7

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
    if-nez p1, :cond_32

    .line 14
    .line 15
    if-eqz p2, :cond_32

    .line 16
    .line 17
    const-string p1, "search_results"

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_32

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_31

    .line 30
    .line 31
    new-instance p2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    array-length v1, p1

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_25
    if-ge v2, v1, :cond_31

    .line 39
    .line 40
    aget-object v3, p1, v2

    .line 41
    .line 42
    check-cast v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 43
    .line 44
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_25

    .line 50
    :cond_31
    throw v0

    .line 51
    :cond_32
    throw v0
.end method
