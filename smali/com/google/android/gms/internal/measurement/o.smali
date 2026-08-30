###### Class com.google.android.gms.internal.measurement.o (com.google.android.gms.internal.measurement.o)
.class public final Lcom/google/android/gms/internal/measurement/o;
.super Lcom/google/android/gms/internal/measurement/j;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lcom/google/firebase/messaging/y;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/o;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/j;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/o;->c:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/o;->d:Ljava/util/ArrayList;

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/o;->e:Lcom/google/firebase/messaging/y;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o;->e:Lcom/google/firebase/messaging/y;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lcom/google/firebase/messaging/y;)V
    .registers 7

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o;->c:Ljava/util/ArrayList;

    .line 9
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/o;->e:Lcom/google/firebase/messaging/y;

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p4, 0x0

    :goto_17
    if-ge p4, p1, :cond_2b

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p4, p4, 0x1

    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/o;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 13
    :cond_2b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/n;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/o;-><init>(Lcom/google/android/gms/internal/measurement/o;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final e(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o;->e:Lcom/google/firebase/messaging/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->J()Lcom/google/firebase/messaging/y;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_c
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/o;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    sget-object v6, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 20
    .line 21
    if-ge v3, v5, :cond_40

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ge v3, v5, :cond_34

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lcom/google/android/gms/internal/measurement/n;

    .line 40
    .line 41
    iget-object v6, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v6, Lcom/google/android/gms/internal/measurement/y4;

    .line 44
    .line 45
    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/messaging/y;->K(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 50
    .line 51
    .line 52
    goto :goto_3d

    .line 53
    :cond_34
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v4, v6}, Lcom/google/firebase/messaging/y;->K(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 60
    .line 61
    .line 62
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_c

    .line 65
    :cond_40
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/o;->d:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    :cond_46
    if-ge v2, p2, :cond_65

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    check-cast v3, Lcom/google/android/gms/internal/measurement/n;

    .line 80
    .line 81
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/q;

    .line 86
    .line 87
    if-eqz v5, :cond_5c

    .line 88
    .line 89
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    :cond_5c
    instance-of v3, v4, Lcom/google/android/gms/internal/measurement/h;

    .line 94
    .line 95
    if-eqz v3, :cond_46

    .line 96
    .line 97
    check-cast v4, Lcom/google/android/gms/internal/measurement/h;

    .line 98
    .line 99
    iget-object p1, v4, Lcom/google/android/gms/internal/measurement/h;->a:Lcom/google/android/gms/internal/measurement/n;

    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_65
    return-object v6
.end method
