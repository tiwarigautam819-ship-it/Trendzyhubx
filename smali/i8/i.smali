###### Class i8.i (i8.i)
.class public final Li8/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lj0/p0;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Li8/i;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Li8/i;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Li8/i;->c:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/ActionBarContextView;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Li8/i;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8/i;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Li8/i;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Li8/i;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Li8/i;->c:I

    .line 3
    iput-object p1, p0, Li8/i;->d:Ljava/lang/Object;

    .line 4
    iput-boolean p3, p0, Li8/i;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Li8/i;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Li8/i;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Landroidx/appcompat/widget/ActionBarContextView;->f:Lj0/o0;

    .line 12
    .line 13
    iget v1, p0, Li8/i;->c:I

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->b(Landroidx/appcompat/widget/ActionBarContextView;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li8/i;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Li8/i;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/widget/ActionBarContextView;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Li8/i;->b:Z

    .line 10
    .line 11
    return-void
.end method

.method public varargs d([Ljava/lang/Object;)V
    .registers 8

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {v0, p1}, Lh8/b;->c(I[Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    iget v1, p0, Li8/i;->c:I

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    iget-object v2, p0, Li8/i;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, [Ljava/lang/Object;

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    const/4 v4, 0x0

    .line 14
    if-ge v3, v1, :cond_37

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-ltz v1, :cond_2f

    .line 18
    .line 19
    shr-int/lit8 v5, v3, 0x1

    .line 20
    .line 21
    add-int/2addr v3, v5

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    if-ge v3, v1, :cond_21

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    shl-int/lit8 v3, v1, 0x1

    .line 33
    .line 34
    :cond_21
    if-gez v3, :cond_26

    .line 35
    .line 36
    const v3, 0x7fffffff

    .line 37
    .line 38
    .line 39
    :cond_26
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Li8/i;->d:Ljava/lang/Object;

    .line 44
    .line 45
    iput-boolean v4, p0, Li8/i;->b:Z

    .line 46
    .line 47
    goto :goto_45

    .line 48
    :cond_2f
    new-instance p1, Ljava/lang/AssertionError;

    .line 49
    .line 50
    const-string v0, "cannot store more than MAX_VALUE elements"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_37
    iget-boolean v1, p0, Li8/i;->b:Z

    .line 57
    .line 58
    if-eqz v1, :cond_45

    .line 59
    .line 60
    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, [Ljava/lang/Object;

    .line 65
    .line 66
    iput-object v1, p0, Li8/i;->d:Ljava/lang/Object;

    .line 67
    .line 68
    iput-boolean v4, p0, Li8/i;->b:Z

    .line 69
    .line 70
    :cond_45
    :goto_45
    iget-object v1, p0, Li8/i;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, [Ljava/lang/Object;

    .line 73
    .line 74
    iget v2, p0, Li8/i;->c:I

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    iget p1, p0, Li8/i;->c:I

    .line 81
    .line 82
    add-int/2addr p1, v0

    .line 83
    iput p1, p0, Li8/i;->c:I

    .line 84
    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Li8/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_28

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "HTTP "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Li8/i;->c:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " : "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Li8/i;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    nop

    .line 41
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method
