###### Class p0.s (p0.s)
.class public final Lp0/s;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public b:Lp0/v;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp0/s;->a:Landroid/util/SparseArray;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lp0/v;II)V
    .registers 8

    .line 1
    invoke-virtual {p1, p2}, Lp0/v;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lp0/s;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    if-nez v1, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lp0/s;

    .line 16
    .line 17
    :goto_10
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_1f

    .line 19
    .line 20
    new-instance v0, Lp0/s;

    .line 21
    .line 22
    invoke-direct {v0, v2}, Lp0/s;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lp0/v;->a(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    if-le p3, p2, :cond_26

    .line 33
    .line 34
    add-int/2addr p2, v2

    .line 35
    invoke-virtual {v0, p1, p2, p3}, Lp0/s;->a(Lp0/v;II)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_26
    iput-object p1, v0, Lp0/s;->b:Lp0/v;

    .line 40
    .line 41
    return-void
.end method
