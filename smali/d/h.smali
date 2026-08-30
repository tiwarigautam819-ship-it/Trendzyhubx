###### Class d.h (d.h)
.class public abstract Ld/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/util/ArrayList;

.field public final transient e:Ljava/util/LinkedHashMap;

.field public final f:Ljava/util/LinkedHashMap;

.field public final g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld/h;->a:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ld/h;->b:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ld/h;->c:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Ld/h;->d:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Ld/h;->e:Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Ld/h;->f:Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    new-instance v0, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Ld/h;->g:Landroid/os/Bundle;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Ld/h;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    if-nez p1, :cond_10

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_10
    iget-object v0, p0, Ld/h;->e:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ld/e;

    .line 24
    .line 25
    if-eqz v0, :cond_1d

    .line 26
    .line 27
    iget-object v1, v0, Ld/e;->a:Ld/b;

    .line 28
    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 v1, 0x0

    .line 31
    :goto_1e
    if-eqz v1, :cond_37

    .line 32
    .line 33
    iget-object v1, p0, Ld/h;->d:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_37

    .line 40
    .line 41
    iget-object v2, v0, Ld/e;->a:Ld/b;

    .line 42
    .line 43
    iget-object v0, v0, Ld/e;->b:Le/a;

    .line 44
    .line 45
    invoke-virtual {v0, p3, p2}, Le/a;->c(Landroid/content/Intent;I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {v2, p2}, Ld/b;->e(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_46

    .line 56
    :cond_37
    iget-object v0, p0, Ld/h;->f:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    new-instance v0, Ld/a;

    .line 62
    .line 63
    invoke-direct {v0, p3, p2}, Ld/a;-><init>(Landroid/content/Intent;I)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Ld/h;->g:Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    .line 70
    .line 71
    :goto_46
    const/4 p1, 0x1

    .line 72
    return p1
.end method

.method public abstract b(ILe/a;Ljava/lang/Object;)V
.end method

.method public final c(Ljava/lang/String;Landroidx/lifecycle/t;Le/a;Ld/b;)Ld/g;
    .registers 9

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "contract"

    .line 12
    .line 13
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "callback"

    .line 17
    .line 18
    invoke-static {v0, p4}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Landroidx/lifecycle/v;

    .line 27
    .line 28
    iget-object v2, v1, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 29
    .line 30
    sget-object v3, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-gez v2, :cond_50

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ld/h;->e(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Ld/h;->c:Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ld/f;

    .line 48
    .line 49
    if-nez v1, :cond_37

    .line 50
    .line 51
    new-instance v1, Ld/f;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Ld/f;-><init>(Landroidx/lifecycle/o;)V

    .line 54
    .line 55
    .line 56
    :cond_37
    new-instance v0, Ld/d;

    .line 57
    .line 58
    invoke-direct {v0, p0, p1, p4, p3}, Ld/d;-><init>(Ld/h;Ljava/lang/String;Ld/b;Le/a;)V

    .line 59
    .line 60
    .line 61
    iget-object p4, v1, Ld/f;->a:Landroidx/lifecycle/o;

    .line 62
    .line 63
    invoke-virtual {p4, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 64
    .line 65
    .line 66
    iget-object p4, v1, Ld/f;->b:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    new-instance p2, Ld/g;

    .line 75
    .line 76
    const/4 p4, 0x0

    .line 77
    invoke-direct {p2, p0, p1, p3, p4}, Ld/g;-><init>(Ld/h;Ljava/lang/String;Le/a;I)V

    .line 78
    .line 79
    .line 80
    return-object p2

    .line 81
    :cond_50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string p3, "LifecycleOwner "

    .line 84
    .line 85
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p2, " is attempting to register while current state is "

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object p2, v1, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p2, ". LifecycleOwners must call register before they are STARTED."

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p2
.end method

.method public final d(Ljava/lang/String;Le/a;Ld/b;)Ld/g;
    .registers 6

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ld/h;->e(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ld/e;

    .line 10
    .line 11
    invoke-direct {v0, p2, p3}, Ld/e;-><init>(Le/a;Ld/b;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Ld/h;->e:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Ld/h;->f:Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_24

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-interface {p3, v1}, Ld/b;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_24
    iget-object v0, p0, Ld/h;->g:Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-static {v0, p1}, Lt4/b;->h(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ld/a;

    .line 44
    .line 45
    if-eqz v1, :cond_3c

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget v0, v1, Ld/a;->a:I

    .line 51
    .line 52
    iget-object v1, v1, Ld/a;->b:Landroid/content/Intent;

    .line 53
    .line 54
    invoke-virtual {p2, v1, v0}, Le/a;->c(Landroid/content/Intent;I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p3, v0}, Ld/b;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    new-instance p3, Ld/g;

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-direct {p3, p0, p1, p2, v0}, Ld/g;-><init>(Ld/h;Ljava/lang/String;Le/a;I)V

    .line 65
    .line 66
    .line 67
    return-object p3
.end method

.method public final e(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Ld/h;->b:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v1, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    new-instance v1, Lj7/d;

    .line 13
    .line 14
    new-instance v2, Lj7/h;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v3}, Ld7/h;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v3, v2}, Lj7/d;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lj7/a;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Lj7/a;-><init>(Lj7/e;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lj7/a;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_4e

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v4, p0, Ld/h;->a:Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1f

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_4e
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 80
    .line 81
    const-string v0, "Sequence contains no element matching the predicate."

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public final f(Ljava/lang/String;)V
    .registers 9

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld/h;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1c

    .line 13
    .line 14
    iget-object v0, p0, Ld/h;->b:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Integer;

    .line 21
    .line 22
    if-eqz v0, :cond_1c

    .line 23
    .line 24
    iget-object v1, p0, Ld/h;->a:Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v0, p0, Ld/h;->e:Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Ld/h;->f:Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const-string v2, ": "

    .line 41
    .line 42
    const-string v3, "Dropping pending result for request "

    .line 43
    .line 44
    const-string v4, "ActivityResultRegistry"

    .line 45
    .line 46
    if-eqz v1, :cond_4b

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_4b
    iget-object v0, p0, Ld/h;->g:Landroid/os/Bundle;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_71

    .line 83
    .line 84
    invoke-static {v0, p1}, Lt4/b;->h(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ld/a;

    .line 89
    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_71
    iget-object v0, p0, Ld/h;->c:Ljava/util/LinkedHashMap;

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Ld/f;

    .line 121
    .line 122
    if-eqz v1, :cond_98

    .line 123
    .line 124
    iget-object v2, v1, Ld/f;->b:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const/4 v4, 0x0

    .line 131
    :goto_82
    if-ge v4, v3, :cond_92

    .line 132
    .line 133
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    check-cast v5, Landroidx/lifecycle/r;

    .line 140
    .line 141
    iget-object v6, v1, Ld/f;->a:Landroidx/lifecycle/o;

    .line 142
    .line 143
    invoke-virtual {v6, v5}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    .line 144
    .line 145
    .line 146
    goto :goto_82

    .line 147
    :cond_92
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_98
    return-void
.end method

###### Class d.d (d.d)
.class public final synthetic Ld/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:Ld/h;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ld/b;

.field public final synthetic d:Le/a;


# direct methods
.method public synthetic constructor <init>(Ld/h;Ljava/lang/String;Ld/b;Le/a;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld/d;->a:Ld/h;

    .line 5
    .line 6
    iput-object p2, p0, Ld/d;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Ld/d;->c:Ld/b;

    .line 9
    .line 10
    iput-object p4, p0, Ld/d;->d:Le/a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .registers 10

    .line 1
    iget-object p1, p0, Ld/d;->a:Ld/h;

    .line 2
    .line 3
    iget-object v0, p1, Ld/h;->g:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object v1, p1, Ld/h;->e:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    iget-object v2, p1, Ld/h;->f:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    const-string v3, "$key"

    .line 10
    .line 11
    iget-object v4, p0, Ld/d;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v3, v4}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v3, "$callback"

    .line 17
    .line 18
    iget-object v5, p0, Ld/d;->c:Ld/b;

    .line 19
    .line 20
    invoke-static {v3, v5}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string v3, "$contract"

    .line 24
    .line 25
    iget-object v6, p0, Ld/d;->d:Le/a;

    .line 26
    .line 27
    invoke-static {v3, v6}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 31
    .line 32
    if-ne v3, p2, :cond_50

    .line 33
    .line 34
    new-instance p1, Ld/e;

    .line 35
    .line 36
    invoke-direct {p1, v6, v5}, Ld/e;-><init>(Le/a;Ld/b;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_39

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-interface {v5, p1}, Ld/b;->e(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_39
    invoke-static {v0, v4}, Lt4/b;->h(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ld/a;

    .line 63
    .line 64
    if-eqz p1, :cond_5f

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget p2, p1, Ld/a;->a:I

    .line 70
    .line 71
    iget-object p1, p1, Ld/a;->b:Landroid/content/Intent;

    .line 72
    .line 73
    invoke-virtual {v6, p1, p2}, Le/a;->c(Landroid/content/Intent;I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {v5, p1}, Ld/b;->e(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_50
    sget-object v0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 82
    .line 83
    if-ne v0, p2, :cond_58

    .line 84
    .line 85
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_58
    sget-object v0, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 90
    .line 91
    if-ne v0, p2, :cond_5f

    .line 92
    .line 93
    invoke-virtual {p1, v4}, Ld/h;->f(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_5f
    return-void
.end method
