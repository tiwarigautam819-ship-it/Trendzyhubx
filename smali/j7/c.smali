###### Class j7.c (j7.c)
.class public final Lj7/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Iterator;
.implements Le7/a;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj7/d;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lj7/c;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lj7/d;->b:Ljava/lang/Object;

    check-cast p1, Lj7/k;

    .line 3
    new-instance v0, Lj7/j;

    invoke-direct {v0, p1}, Lj7/j;-><init>(Lj7/k;)V

    .line 4
    iput-object v0, p0, Lj7/c;->d:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lj7/c;->c:I

    return-void
.end method

.method public constructor <init>(Lj7/d;B)V
    .registers 3

    const/4 p2, 0x1

    iput p2, p0, Lj7/c;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lj7/c;->d:Ljava/lang/Object;

    const/4 p1, -0x2

    .line 8
    iput p1, p0, Lj7/c;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lj7/c;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Iterator;

    .line 4
    .line 5
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_1a

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez v1, :cond_13

    .line 18
    .line 19
    move v2, v3

    .line 20
    :cond_13
    if-nez v2, :cond_4

    .line 21
    .line 22
    iput-object v1, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 23
    .line 24
    iput v3, p0, Lj7/c;->c:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    iput v2, p0, Lj7/c;->c:I

    .line 28
    .line 29
    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lj7/c;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lj7/d;

    .line 4
    .line 5
    iget v1, p0, Lj7/c;->c:I

    .line 6
    .line 7
    const/4 v2, -0x2

    .line 8
    if-ne v1, v2, :cond_1f

    .line 9
    .line 10
    sget-object v0, Lf7/e;->a:Lf7/d;

    .line 11
    .line 12
    sget-object v0, Lf7/e;->b:Lf7/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lf7/a;->a()Ljava/util/Random;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/high16 v1, 0x7fff0000

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/high16 v1, 0x10000

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_2c

    .line 32
    :cond_1f
    iget-object v0, v0, Lj7/d;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lj7/h;

    .line 35
    .line 36
    iget-object v1, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lj7/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_2c
    iput-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lj7/c;->c:I

    .line 49
    .line 50
    return-void
.end method

.method public final hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Lj7/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_24

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lj7/c;->c:I

    .line 7
    .line 8
    if-gez v0, :cond_c

    .line 9
    .line 10
    invoke-virtual {p0}, Lj7/c;->b()V

    .line 11
    .line 12
    .line 13
    :cond_c
    iget v0, p0, Lj7/c;->c:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_12

    .line 17
    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v1, 0x0

    .line 20
    :goto_13
    return v1

    .line 21
    :pswitch_14
    iget v0, p0, Lj7/c;->c:I

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    if-ne v0, v1, :cond_1c

    .line 25
    .line 26
    invoke-virtual {p0}, Lj7/c;->a()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget v0, p0, Lj7/c;->c:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-ne v0, v1, :cond_22

    .line 33
    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 v1, 0x0

    .line 36
    :goto_23
    return v1

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lj7/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3c

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lj7/c;->c:I

    .line 7
    .line 8
    if-gez v0, :cond_c

    .line 9
    .line 10
    invoke-virtual {p0}, Lj7/c;->b()V

    .line 11
    .line 12
    .line 13
    :cond_c
    iget v0, p0, Lj7/c;->c:I

    .line 14
    .line 15
    if-eqz v0, :cond_1b

    .line 16
    .line 17
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 18
    .line 19
    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lj7/c;->c:I

    .line 26
    .line 27
    return-object v0

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

    .line 34
    :pswitch_21
    iget v0, p0, Lj7/c;->c:I

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    if-ne v0, v1, :cond_29

    .line 38
    .line 39
    invoke-virtual {p0}, Lj7/c;->a()V

    .line 40
    .line 41
    .line 42
    :cond_29
    iget v0, p0, Lj7/c;->c:I

    .line 43
    .line 44
    if-eqz v0, :cond_35

    .line 45
    .line 46
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    iput-object v2, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 50
    .line 51
    iput v1, p0, Lj7/c;->c:I

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_35
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    nop

    .line 61
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_21
    .end packed-switch
.end method

.method public final remove()V
    .registers 3

    .line 1
    iget v0, p0, Lj7/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v1, "Operation is not supported for read-only collection"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :pswitch_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string v1, "Operation is not supported for read-only collection"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    nop

    .line 23
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
