###### Class v2.a (v2.a)
.class public abstract Lv2/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/Set;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lv2/a;->a:Ljava/util/Set;

    .line 11
    .line 12
    return-void
.end method

.method public static final a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .registers 3

    .line 1
    const-string v0, "o"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lv2/a;->b:Z

    .line 7
    .line 8
    if-nez v0, :cond_a

    .line 9
    .line 10
    goto :goto_23

    .line 11
    :cond_a
    sget-object v0, Lv2/a;->a:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    sget-object p1, Lx1/r;->a:Lx1/r;

    .line 17
    .line 18
    invoke-static {}, Lx1/j0;->c()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_23

    .line 23
    .line 24
    invoke-static {p0}, Lz7/l;->g(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Ls2/b;->e:Ls2/b;

    .line 28
    .line 29
    invoke-static {p0, p1}, La2/c;->c(Ljava/lang/Throwable;Ls2/b;)Ls2/d;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ls2/d;->b()V

    .line 34
    .line 35
    .line 36
    :cond_23
    :goto_23
    return-void
.end method

.method public static final b(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    const-string v0, "o"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lv2/a;->a:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method
