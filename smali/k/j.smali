###### Class k.j (k.j)
.class public final Lk/j;
.super Lm1/j;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic b:I

.field public c:Z

.field public d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/i;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lk/j;->b:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/j;->e:Ljava/lang/Object;

    iput p2, p0, Lk/j;->d:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lk/j;->c:Z

    return-void
.end method

.method public constructor <init>(Lk/k;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lk/j;->b:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lk/j;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lk/j;->c:Z

    .line 7
    iput p1, p0, Lk/j;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget v0, p0, Lk/j;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_36

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lk/j;->c:Z

    .line 7
    .line 8
    if-nez v0, :cond_14

    .line 9
    .line 10
    iget-object v0, p0, Lk/j;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 15
    .line 16
    iget v1, p0, Lk/j;->d:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void

    .line 22
    :pswitch_15
    iget v0, p0, Lk/j;->d:I

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iput v0, p0, Lk/j;->d:I

    .line 27
    .line 28
    iget-object v1, p0, Lk/j;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lk/k;

    .line 31
    .line 32
    iget-object v2, v1, Lk/k;->a:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v0, v2, :cond_35

    .line 39
    .line 40
    iget-object v0, v1, Lk/k;->d:Lj0/p0;

    .line 41
    .line 42
    if-eqz v0, :cond_2e

    .line 43
    .line 44
    invoke-interface {v0}, Lj0/p0;->a()V

    .line 45
    .line 46
    .line 47
    :cond_2e
    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lk/j;->d:I

    .line 49
    .line 50
    iput-boolean v0, p0, Lk/j;->c:Z

    .line 51
    .line 52
    iput-boolean v0, v1, Lk/k;->e:Z

    .line 53
    .line 54
    :cond_35
    return-void

    .line 55
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method public b()V
    .registers 2

    .line 1
    iget v0, p0, Lk/j;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_a

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lk/j;->c:Z

    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public final c()V
    .registers 3

    .line 1
    iget v0, p0, Lk/j;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_24

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk/j;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/appcompat/widget/i;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_10
    iget-boolean v0, p0, Lk/j;->c:Z

    .line 18
    .line 19
    if-eqz v0, :cond_15

    .line 20
    .line 21
    goto :goto_23

    .line 22
    :cond_15
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lk/j;->c:Z

    .line 24
    .line 25
    iget-object v0, p0, Lk/j;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lk/k;

    .line 28
    .line 29
    iget-object v0, v0, Lk/k;->d:Lj0/p0;

    .line 30
    .line 31
    if-eqz v0, :cond_23

    .line 32
    .line 33
    invoke-interface {v0}, Lj0/p0;->c()V

    .line 34
    .line 35
    .line 36
    :cond_23
    :goto_23
    return-void

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
