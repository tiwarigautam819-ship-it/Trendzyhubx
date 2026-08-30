###### Class j2.a (j2.a)
.class public final Lj2/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lj2/a;

.field public static b:Z

.field public static c:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj2/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj2/a;->a:Lj2/a;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lj2/a;->c:Ljava/util/HashSet;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-class v0, Lj2/a;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_28

    .line 10
    :cond_9
    :try_start_9
    sget-boolean v1, Lj2/a;->b:Z

    .line 11
    .line 12
    if-eqz v1, :cond_28

    .line 13
    .line 14
    if-nez p0, :cond_10

    .line 15
    .line 16
    goto :goto_28

    .line 17
    :cond_10
    sget-object v1, Lj2/a;->c:Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_28

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_26

    .line 36
    .line 37
    .line 38
    goto :goto_16

    .line 39
    :catchall_26
    move-exception p0

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    :goto_28
    return-void

    .line 42
    :goto_29
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
