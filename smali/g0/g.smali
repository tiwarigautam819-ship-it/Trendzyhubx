###### Class g0.g (g0.g)
.class public final Lg0/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Li0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lg0/g;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lg0/g;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget v0, p0, Lg0/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4c

    .line 4
    .line 5
    .line 6
    check-cast p1, Lg0/h;

    .line 7
    .line 8
    sget-object v0, Lg0/i;->c:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_a
    sget-object v1, Lg0/i;->d:Ls/j;

    .line 12
    .line 13
    iget-object v2, p0, Lg0/g;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    if-nez v2, :cond_1c

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    goto :goto_37

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    goto :goto_38

    .line 29
    :cond_1c
    iget-object v3, p0, Lg0/g;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ls/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_1a

    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ge v0, v1, :cond_37

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Li0/a;

    .line 49
    .line 50
    invoke-interface {v1, p1}, Li0/a;->accept(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_25

    .line 56
    :cond_37
    :goto_37
    return-void

    .line 57
    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_1a

    .line 58
    throw p1

    .line 59
    :pswitch_3a
    check-cast p1, Lg0/h;

    .line 60
    .line 61
    if-nez p1, :cond_44

    .line 62
    .line 63
    new-instance p1, Lg0/h;

    .line 64
    .line 65
    const/4 v0, -0x3

    .line 66
    invoke-direct {p1, v0}, Lg0/h;-><init>(I)V

    .line 67
    .line 68
    .line 69
    :cond_44
    iget-object v0, p0, Lg0/g;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/y4;->C(Lg0/h;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_3a
    .end packed-switch
.end method
