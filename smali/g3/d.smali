###### Class g3.d (g3.d)
.class public final Lg3/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/y4;

.field public final b:Lc5/h;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc5/h;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/y4;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lg3/d;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    iput-object v0, p0, Lg3/d;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 19
    .line 20
    iput-object p2, p0, Lg3/d;->b:Lc5/h;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lg3/e;
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lg3/d;->c:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_15

    .line 9
    .line 10
    iget-object v0, p0, Lg3/d;->c:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lg3/e;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    goto :goto_3e

    .line 22
    :cond_15
    :try_start_15
    iget-object v0, p0, Lg3/d;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/y4;->y(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_13

    .line 28
    if-nez v0, :cond_20

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    const/4 p1, 0x0

    .line 32
    return-object p1

    .line 33
    :cond_20
    :try_start_20
    iget-object v1, p0, Lg3/d;->b:Lc5/h;

    .line 34
    .line 35
    iget-object v2, v1, Lc5/h;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Landroid/content/Context;

    .line 38
    .line 39
    iget-object v3, v1, Lc5/h;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Lo3/a;

    .line 42
    .line 43
    iget-object v1, v1, Lc5/h;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lo3/a;

    .line 46
    .line 47
    new-instance v4, Lg3/b;

    .line 48
    .line 49
    invoke-direct {v4, v2, v3, v1, p1}, Lg3/b;-><init>(Landroid/content/Context;Lo3/a;Lo3/a;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v4}, Lcom/google/android/datatransport/cct/CctBackendFactory;->create(Lg3/c;)Lg3/e;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lg3/d;->c:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_13

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-object v0

    .line 63
    :goto_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_13

    .line 64
    throw p1
.end method
