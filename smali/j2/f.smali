###### Class j2.f (j2.f)
.class public final Lj2/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lj2/f;

.field public static b:Z

.field public static final c:Lr6/g;

.field public static d:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lj2/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj2/f;->a:Lj2/f;

    .line 7
    .line 8
    new-instance v0, Lr6/g;

    .line 9
    .line 10
    sget-object v1, Lj2/e;->b:Lj2/e;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lr6/g;-><init>(Lc7/a;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lj2/f;->c:Lr6/g;

    .line 16
    .line 17
    return-void
.end method

.method public static final b(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    const-class v0, Lj2/f;

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
    goto :goto_6a

    .line 10
    :cond_9
    :try_start_9
    sget-boolean v1, Lj2/f;->b:Z

    .line 11
    .line 12
    if-eqz v1, :cond_6a

    .line 13
    .line 14
    if-eqz p0, :cond_6a

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_6a

    .line 21
    .line 22
    sget-object v1, Lj2/f;->d:Ljava/util/HashSet;

    .line 23
    .line 24
    if-nez v1, :cond_1a

    .line 25
    .line 26
    goto :goto_6a

    .line 27
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "parameters.keySet()"

    .line 37
    .line 38
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast v2, Ljava/lang/Iterable;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_50

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/String;

    .line 58
    .line 59
    sget-object v4, Lj2/f;->d:Ljava/util/HashSet;

    .line 60
    .line 61
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_2e

    .line 69
    .line 70
    const-string v4, "param"

    .line 71
    .line 72
    invoke-static {v4, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_2e

    .line 79
    :catchall_4e
    move-exception p0

    .line 80
    goto :goto_6b

    .line 81
    :cond_50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v3, 0x0

    .line 86
    :goto_55
    if-ge v3, v2, :cond_63

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    check-cast v4, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_55

    .line 100
    :cond_63
    const-string v1, "pm"

    .line 101
    .line 102
    const-string v2, "1"

    .line 103
    .line 104
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_9 .. :try_end_6a} :catchall_4e

    .line 105
    .line 106
    .line 107
    :cond_6a
    :goto_6a
    return-void

    .line 108
    :goto_6b
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

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
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 18
    .line 19
    goto :goto_60

    .line 20
    :cond_13
    iget-object v0, v0, Lq2/t;->m:Lorg/json/JSONArray;

    .line 21
    .line 22
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_61

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_1e

    .line 28
    .line 29
    :cond_1c
    :goto_1c
    move-object v2, v3

    .line 30
    goto :goto_46

    .line 31
    :cond_1e
    if-eqz v0, :cond_1c

    .line 32
    .line 33
    :try_start_20
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_27

    .line 38
    .line 39
    goto :goto_1c

    .line 40
    :cond_27
    new-instance v2, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    :goto_30
    if-ge v1, v4, :cond_46

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v6, "jsonArray.getString(i)"

    .line 56
    .line 57
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_41

    .line 61
    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_30

    .line 66
    :catchall_41
    move-exception v0

    .line 67
    :try_start_42
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1c

    .line 71
    :cond_46
    :goto_46
    if-nez v2, :cond_5e

    .line 72
    .line 73
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_61

    .line 77
    if-eqz v0, :cond_4f

    .line 78
    .line 79
    goto :goto_5d

    .line 80
    :cond_4f
    :try_start_4f
    sget-object v0, Lj2/f;->c:Lr6/g;

    .line 81
    .line 82
    invoke-virtual {v0}, Lr6/g;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/util/HashSet;
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_59

    .line 87
    .line 88
    move-object v3, v0

    .line 89
    goto :goto_5d

    .line 90
    :catchall_59
    move-exception v0

    .line 91
    :try_start_5a
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :goto_5d
    move-object v2, v3

    .line 95
    :cond_5e
    sput-object v2, Lj2/f;->d:Ljava/util/HashSet;
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_61

    .line 96
    .line 97
    :goto_60
    return-void

    .line 98
    :catchall_61
    move-exception v0

    .line 99
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final c(Landroid/os/Bundle;)Z
    .registers 5

    .line 1
    const-string v0, "pm"

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    if-nez p1, :cond_d

    .line 12
    .line 13
    return v2

    .line 14
    :cond_d
    :try_start_d
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_23

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "1"

    .line 25
    .line 26
    invoke-static {p1, v0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    .line 30
    if-eqz p1, :cond_23

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    return v2

    .line 37
    :goto_24
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return v2
.end method
