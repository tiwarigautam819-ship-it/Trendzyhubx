###### Class d4.c (d4.c)
.class public final Ld4/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:Ld4/c;


# instance fields
.field public a:Ld4/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ld4/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Ld4/c;->a:Ld4/b;

    .line 8
    .line 9
    sput-object v0, Ld4/c;->b:Ld4/c;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Landroid/content/Context;)Ld4/b;
    .registers 4

    .line 1
    sget-object v0, Ld4/c;->b:Ld4/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, v0, Ld4/c;->a:Ld4/b;

    .line 5
    .line 6
    if-nez v1, :cond_1c

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_14

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_14

    .line 19
    :catchall_12
    move-exception p0

    .line 20
    goto :goto_20

    .line 21
    :cond_14
    :goto_14
    new-instance v1, Ld4/b;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, v2}, Ld4/b;-><init>(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Ld4/c;->a:Ld4/b;

    .line 28
    .line 29
    :cond_1c
    iget-object p0, v0, Ld4/c;->a:Ld4/b;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_12

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object p0

    .line 33
    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_12

    .line 34
    throw p0
.end method
