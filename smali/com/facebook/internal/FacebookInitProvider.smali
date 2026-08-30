###### Class com.facebook.internal.FacebookInitProvider (com.facebook.internal.FacebookInitProvider)
.class public final Lcom/facebook/internal/FacebookInitProvider;
.super Landroid/content/ContentProvider;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 1
    const-string p2, "uri"

    .line 2
    .line 3
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 1
    const-string p2, "uri"

    .line 2
    .line 3
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public final onCreate()Z
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_13

    .line 6
    .line 7
    sget-object v1, Lx1/r;->a:Lx1/r;

    .line 8
    .line 9
    const-class v1, Lx1/r;

    .line 10
    .line 11
    monitor-enter v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_1b

    .line 12
    :try_start_b
    invoke-static {v0}, Lx1/r;->j(Landroid/content/Context;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 13
    .line 14
    .line 15
    :try_start_e
    monitor-exit v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f} :catch_1b

    .line 16
    goto :goto_23

    .line 17
    :catchall_10
    move-exception v0

    .line 18
    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    .line 19
    :try_start_12
    throw v0

    .line 20
    :cond_13
    const-string v0, "Required value was null."

    .line 21
    .line 22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_1b

    .line 28
    :catch_1b
    move-exception v0

    .line 29
    const-string v1, "FacebookInitProvider"

    .line 30
    .line 31
    const-string v2, "Failed to auto initialize the Facebook SDK"

    .line 32
    .line 33
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :goto_23
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 1
    const-string p2, "uri"

    .line 2
    .line 3
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 1
    const-string p2, "uri"

    .line 2
    .line 3
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method
