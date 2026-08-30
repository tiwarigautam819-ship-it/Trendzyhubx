###### Class z3.b (z3.b)
.class public final Lz3/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/common/internal/r;


# static fields
.field public static final i:Lu3/o;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lu3/o;

.field public final d:Lcom/google/android/gms/common/internal/s;

.field public final e:Lx3/a;

.field public final f:I

.field public final g:Lx1/w;

.field public final h:Lx3/d;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lo3/a;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lo3/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lm4/b;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lu3/o;

    .line 14
    .line 15
    invoke-direct {v2, v1, v0}, Lu3/o;-><init>(Lm4/b;Lo3/a;)V

    .line 16
    .line 17
    .line 18
    sput-object v2, Lz3/b;->i:Lu3/o;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lu3/o;Lcom/google/android/gms/common/internal/s;Lw3/b;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Null context is not permitted."

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "Api must not be null."

    .line 10
    .line 11
    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 15
    .line 16
    invoke-static {v0, p4}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "The provided context did not have an application context."

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lz3/b;->a:Landroid/content/Context;

    .line 29
    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v2, 0x1e

    .line 33
    .line 34
    if-lt v1, v2, :cond_28

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/a;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    :goto_29
    iput-object p1, p0, Lz3/b;->b:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p2, p0, Lz3/b;->c:Lu3/o;

    .line 45
    .line 46
    iput-object p3, p0, Lz3/b;->d:Lcom/google/android/gms/common/internal/s;

    .line 47
    .line 48
    new-instance v1, Lx3/a;

    .line 49
    .line 50
    invoke-direct {v1, p2, p3, p1}, Lx3/a;-><init>(Lu3/o;Lcom/google/android/gms/common/internal/s;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lz3/b;->e:Lx3/a;

    .line 54
    .line 55
    new-instance p1, Lx3/m;

    .line 56
    .line 57
    invoke-static {v0}, Lx3/d;->d(Landroid/content/Context;)Lx3/d;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lz3/b;->h:Lx3/d;

    .line 62
    .line 63
    iget-object p2, p1, Lx3/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iput p2, p0, Lz3/b;->f:I

    .line 70
    .line 71
    iget-object p2, p4, Lw3/b;->a:Lx1/w;

    .line 72
    .line 73
    iput-object p2, p0, Lz3/b;->g:Lx1/w;

    .line 74
    .line 75
    iget-object p1, p1, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 76
    .line 77
    const/4 p2, 0x7

    .line 78
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final a()Lc5/h;
    .registers 5

    .line 1
    new-instance v0, Lc5/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lc5/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 8
    .line 9
    iget-object v2, v0, Lc5/h;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ls/f;

    .line 12
    .line 13
    if-nez v2, :cond_16

    .line 14
    .line 15
    new-instance v2, Ls/f;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3}, Ls/f;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v2, v0, Lc5/h;->b:Ljava/lang/Object;

    .line 22
    .line 23
    :cond_16
    iget-object v2, v0, Lc5/h;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ls/f;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ls/f;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lz3/b;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v0, Lc5/h;->d:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lc5/h;->c:Ljava/lang/Object;

    .line 47
    .line 48
    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/internal/q;)Lp4/q;
    .registers 6

    .line 1
    new-instance v0, Lo5/c;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lo5/c;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Lv3/c;

    .line 10
    .line 11
    sget-object v2, Lh4/c;->a:Lv3/c;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    new-instance v2, Ly1/n;

    .line 17
    .line 18
    invoke-direct {v2, p1}, Ly1/n;-><init>(Lcom/google/android/gms/common/internal/q;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, v0, Lo5/c;->b:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance p1, Lp4/p;

    .line 24
    .line 25
    invoke-direct {p1, v0, v1, v3}, Lp4/p;-><init>(Lo5/c;[Lv3/c;Z)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lp4/j;

    .line 29
    .line 30
    invoke-direct {v0}, Lp4/j;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lz3/b;->h:Lx3/d;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v2, Lx3/s;

    .line 39
    .line 40
    iget-object v3, p0, Lz3/b;->g:Lx1/w;

    .line 41
    .line 42
    invoke-direct {v2, p1, v0, v3}, Lx3/s;-><init>(Lp4/p;Lp4/j;Lx1/w;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v1, Lx3/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    new-instance v3, Lx3/q;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-direct {v3, v2, p1, p0}, Lx3/q;-><init>(Lx3/s;ILz3/b;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, v1, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 57
    .line 58
    const/4 v1, 0x4

    .line 59
    invoke-virtual {p1, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    .line 65
    .line 66
    iget-object p1, v0, Lp4/j;->a:Lp4/q;

    .line 67
    .line 68
    return-object p1
.end method
