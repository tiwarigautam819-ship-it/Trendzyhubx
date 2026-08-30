###### Class s5.j (s5.j)
.class public final Ls5/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Ls5/l;

.field public b:Ls5/l;

.field public c:I

.field public final synthetic d:Ls5/m;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Ls5/m;I)V
    .registers 3

    .line 1
    iput p2, p0, Ls5/j;->e:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ls5/j;->d:Ls5/m;

    .line 7
    .line 8
    iget-object p2, p1, Ls5/m;->f:Ls5/l;

    .line 9
    .line 10
    iget-object p2, p2, Ls5/l;->d:Ls5/l;

    .line 11
    .line 12
    iput-object p2, p0, Ls5/j;->a:Ls5/l;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Ls5/j;->b:Ls5/l;

    .line 16
    .line 17
    iget p1, p1, Ls5/m;->e:I

    .line 18
    .line 19
    iput p1, p0, Ls5/j;->c:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ls5/j;->b()Ls5/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b()Ls5/l;
    .registers 4

    .line 1
    iget-object v0, p0, Ls5/j;->a:Ls5/l;

    .line 2
    .line 3
    iget-object v1, p0, Ls5/j;->d:Ls5/m;

    .line 4
    .line 5
    iget-object v2, v1, Ls5/m;->f:Ls5/l;

    .line 6
    .line 7
    if-eq v0, v2, :cond_1b

    .line 8
    .line 9
    iget v1, v1, Ls5/m;->e:I

    .line 10
    .line 11
    iget v2, p0, Ls5/j;->c:I

    .line 12
    .line 13
    if-ne v1, v2, :cond_15

    .line 14
    .line 15
    iget-object v1, v0, Ls5/l;->d:Ls5/l;

    .line 16
    .line 17
    iput-object v1, p0, Ls5/j;->a:Ls5/l;

    .line 18
    .line 19
    iput-object v0, p0, Ls5/j;->b:Ls5/l;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_15
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public final hasNext()Z
    .registers 3

    .line 1
    iget-object v0, p0, Ls5/j;->a:Ls5/l;

    .line 2
    .line 3
    iget-object v1, p0, Ls5/j;->d:Ls5/m;

    .line 4
    .line 5
    iget-object v1, v1, Ls5/m;->f:Ls5/l;

    .line 6
    .line 7
    if-eq v0, v1, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Ls5/j;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_12

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ls5/j;->a()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    invoke-virtual {p0}, Ls5/j;->b()Ls5/l;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Ls5/l;->f:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public final remove()V
    .registers 4

    .line 1
    iget-object v0, p0, Ls5/j;->b:Ls5/l;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Ls5/j;->d:Ls5/m;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1}, Ls5/m;->c(Ls5/l;Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Ls5/j;->b:Ls5/l;

    .line 13
    .line 14
    iget v0, v2, Ls5/m;->e:I

    .line 15
    .line 16
    iput v0, p0, Ls5/j;->c:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw v0
.end method
