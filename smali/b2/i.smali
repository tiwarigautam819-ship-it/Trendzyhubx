###### Class b2.i (b2.i)
.class public final Lb2/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final f:Lb2/c;

.field public static g:Lb2/i;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/LinkedHashSet;

.field public d:Ljava/util/HashSet;

.field public final e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lb2/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb2/i;->f:Lb2/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lb2/i;->a:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Ljava/util/WeakHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "newSetFromMap(WeakHashMap())"

    .line 25
    .line 26
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lb2/i;->b:Ljava/util/Set;

    .line 30
    .line 31
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lb2/i;->c:Ljava/util/LinkedHashSet;

    .line 37
    .line 38
    new-instance v0, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lb2/i;->d:Ljava/util/HashSet;

    .line 44
    .line 45
    new-instance v0, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lb2/i;->e:Ljava/util/HashMap;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_60

    .line 8
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v0, v1, :cond_61

    .line 21
    .line 22
    iget-object v0, p0, Lb2/i;->b:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lb2/i;->d:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lb2/i;->e:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/util/HashSet;

    .line 47
    .line 48
    if-eqz p1, :cond_36

    .line 49
    .line 50
    iput-object p1, p0, Lb2/i;->d:Ljava/util/HashSet;

    .line 51
    .line 52
    goto :goto_36

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    goto :goto_69

    .line 55
    :cond_36
    :goto_36
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_34

    .line 59
    if-eqz p1, :cond_3d

    .line 60
    .line 61
    goto :goto_60

    .line 62
    :cond_3d
    :try_start_3d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-ne p1, v0, :cond_51

    .line 75
    .line 76
    invoke-virtual {p0}, Lb2/i;->b()V

    .line 77
    .line 78
    .line 79
    goto :goto_60

    .line 80
    :catchall_4f
    move-exception p1

    .line 81
    goto :goto_5d

    .line 82
    :cond_51
    iget-object p1, p0, Lb2/i;->a:Landroid/os/Handler;

    .line 83
    .line 84
    new-instance v0, La2/g;

    .line 85
    .line 86
    const/4 v1, 0x5

    .line 87
    invoke-direct {v0, v1, p0}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5c
    .catchall {:try_start_3d .. :try_end_5c} :catchall_4f

    .line 91
    .line 92
    .line 93
    goto :goto_60

    .line 94
    :goto_5d
    :try_start_5d
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :goto_60
    return-void

    .line 98
    :cond_61
    new-instance p1, Lx1/l;

    .line 99
    .line 100
    const-string v0, "Can\'t add activity to CodelessMatcher on non-UI thread"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_34

    .line 106
    :goto_69
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final b()V
    .registers 7

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_38

    .line 8
    :cond_7
    :try_start_7
    iget-object v0, p0, Lb2/i;->b:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_38

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/app/Activity;

    .line 25
    .line 26
    if-eqz v1, :cond_d

    .line 27
    .line 28
    invoke-static {v1}, Lk2/e;->i(Landroid/app/Activity;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v3, Lb2/h;

    .line 41
    .line 42
    iget-object v4, p0, Lb2/i;->a:Landroid/os/Handler;

    .line 43
    .line 44
    iget-object v5, p0, Lb2/i;->d:Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-direct {v3, v2, v4, v5, v1}, Lb2/h;-><init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lb2/i;->c:Ljava/util/LinkedHashSet;

    .line 50
    .line 51
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_36

    .line 52
    .line 53
    .line 54
    goto :goto_d

    .line 55
    :catchall_36
    move-exception v0

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    :goto_38
    return-void

    .line 58
    :goto_39
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v0, v1, :cond_41

    .line 21
    .line 22
    iget-object v0, p0, Lb2/i;->b:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lb2/i;->c:Ljava/util/LinkedHashSet;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lb2/i;->e:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v1, p0, Lb2/i;->d:Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "null cannot be cast to non-null type java.util.HashSet<kotlin.String>{ kotlin.collections.TypeAliasesKt.HashSet<kotlin.String> }"

    .line 49
    .line 50
    invoke-static {v2, v1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    check-cast v1, Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lb2/i;->d:Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_3f
    move-exception p1

    .line 65
    goto :goto_49

    .line 66
    :cond_41
    new-instance p1, Lx1/l;

    .line 67
    .line 68
    const-string v0, "Can\'t remove activity from CodelessMatcher on non-UI thread"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_3f

    .line 74
    :goto_49
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
