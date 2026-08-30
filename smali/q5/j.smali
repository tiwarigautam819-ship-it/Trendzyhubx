###### Class q5.j (q5.j)
.class public final Lq5/j;
.super Lq5/x;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq5/x;


# direct methods
.method public synthetic constructor <init>(Lq5/x;I)V
    .registers 3

    .line 1
    iput p2, p0, Lq5/j;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq5/j;->b:Lq5/x;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lx5/a;Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget v0, p0, Lq5/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_42

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_b

    .line 7
    .line 8
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 9
    .line 10
    .line 11
    goto :goto_10

    .line 12
    :cond_b
    iget-object v0, p0, Lq5/j;->b:Lq5/x;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lq5/x;->a(Lx5/a;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :goto_10
    return-void

    .line 18
    :pswitch_11
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 19
    .line 20
    invoke-virtual {p1}, Lx5/a;->c()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_1b
    if-ge v1, v0, :cond_2d

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lq5/j;->b:Lq5/x;

    .line 39
    .line 40
    invoke-virtual {v3, p1, v2}, Lq5/x;->a(Lx5/a;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_1b

    .line 46
    :cond_2d
    invoke-virtual {p1}, Lx5/a;->s()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_31
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iget-object v0, p0, Lq5/j;->b:Lq5/x;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2}, Lq5/x;->a(Lx5/a;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_31
        :pswitch_11
    .end packed-switch
.end method
