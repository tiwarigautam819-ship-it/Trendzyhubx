###### Class g0.f (g0.f)
.class public final Lg0/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V
    .registers 6

    .line 1
    iput p5, p0, Lg0/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lg0/f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lg0/f;->c:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p3, p0, Lg0/f;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput p4, p0, Lg0/f;->d:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 8

    .line 1
    iget v0, p0, Lg0/f;->a:I

    .line 2
    .line 3
    iget v1, p0, Lg0/f;->d:I

    .line 4
    .line 5
    iget-object v2, p0, Lg0/f;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lg0/f;->c:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v4, p0, Lg0/f;->b:Ljava/lang/String;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_3a

    .line 12
    .line 13
    .line 14
    :try_start_d
    check-cast v2, Ljava/util/List;

    .line 15
    .line 16
    invoke-static {v4, v3, v2, v1}, Lg0/i;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lg0/h;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_14

    .line 20
    goto :goto_1a

    .line 21
    :catchall_14
    new-instance v0, Lg0/h;

    .line 22
    .line 23
    const/4 v1, -0x3

    .line 24
    invoke-direct {v0, v1}, Lg0/h;-><init>(I)V

    .line 25
    .line 26
    .line 27
    :goto_1a
    return-object v0

    .line 28
    :pswitch_1b
    check-cast v2, Lg0/e;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    new-array v5, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    aput-object v2, v5, v6

    .line 35
    .line 36
    new-instance v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    aget-object v0, v5, v6

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v4, v3, v0, v1}, Lg0/i;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lg0/h;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method
