###### Class p0.i (p0.i)
.class public final Lp0/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .registers 4

    const/4 p3, 0x0

    iput p3, p0, Lp0/i;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string p3, "initCallbacks cannot be null"

    invoke-static {p3, p1}, Lb2/k;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lp0/i;->c:Ljava/lang/Object;

    .line 5
    iput p2, p0, Lp0/i;->b:I

    return-void
.end method

.method public constructor <init>(Lx3/j;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lp0/i;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/i;->c:Ljava/lang/Object;

    iput p2, p0, Lp0/i;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget v0, p0, Lp0/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp0/i;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lx3/j;

    .line 9
    .line 10
    iget v1, p0, Lp0/i;->b:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lx3/j;->g(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    iget-object v0, p0, Lp0/i;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v2, p0, Lp0/i;->b:I

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eq v2, v3, :cond_2b

    .line 29
    .line 30
    :goto_1d
    if-ge v4, v1, :cond_39

    .line 31
    .line 32
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lp0/h;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v4, v4, 0x1

    .line 42
    .line 43
    goto :goto_1d

    .line 44
    :cond_2b
    :goto_2b
    if-ge v4, v1, :cond_39

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lp0/h;

    .line 51
    .line 52
    invoke-virtual {v2}, Lp0/h;->a()V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_2b

    .line 58
    :cond_39
    return-void

    .line 59
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method
