###### Class k1.j (k1.j)
.class public final Lk1/j;
.super Lk1/b;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# virtual methods
.method public final b()Z
    .registers 3

    .line 1
    invoke-super {p0}, Lk1/c;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_2c

    .line 8
    :cond_7
    const-string v0, "MULTI_PROCESS"

    .line 9
    .line 10
    invoke-static {v0}, Ly1/g;->r(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2c

    .line 15
    .line 16
    sget v0, Lj1/d;->a:I

    .line 17
    .line 18
    sget-object v0, Lk1/k;->b:Lk1/b;

    .line 19
    .line 20
    invoke-virtual {v0}, Lk1/c;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_24

    .line 25
    .line 26
    sget-object v0, Lk1/l;->a:Lk1/m;

    .line 27
    .line 28
    invoke-interface {v0}, Lk1/m;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->isMultiProcessEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    return v0

    .line 37
    :cond_24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 38
    .line 39
    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    .line 46
    return v0
.end method
