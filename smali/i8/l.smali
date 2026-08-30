###### Class i8.l (i8.l)
.class public final synthetic Li8/l;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lj0/r;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Li8/l;->a:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Li8/l;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e(Landroid/view/View;Lj0/b1;)Lj0/b1;
    .registers 9

    .line 1
    iget-object p2, p2, Lj0/b1;->a:Lj0/z0;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lj0/z0;->f(I)Lc0/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p2, v1}, Lj0/z0;->f(I)Lc0/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v2, 0x80

    .line 14
    .line 15
    invoke-virtual {p2, v2}, Lj0/z0;->f(I)Lc0/c;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget v2, v0, Lc0/c;->b:I

    .line 20
    .line 21
    iget v3, p2, Lc0/c;->b:I

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget v1, v1, Lc0/c;->d:I

    .line 28
    .line 29
    iget-boolean v3, p0, Li8/l;->a:Z

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v3, :cond_2a

    .line 33
    .line 34
    iget v3, v0, Lc0/c;->a:I

    .line 35
    .line 36
    iget v5, p2, Lc0/c;->a:I

    .line 37
    .line 38
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v3, v4

    .line 44
    :goto_2b
    iget-boolean v5, p0, Li8/l;->b:Z

    .line 45
    .line 46
    if-eqz v5, :cond_37

    .line 47
    .line 48
    iget v0, v0, Lc0/c;->c:I

    .line 49
    .line 50
    iget p2, p2, Lc0/c;->c:I

    .line 51
    .line 52
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    :cond_37
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 61
    .line 62
    if-eqz v0, :cond_4c

    .line 63
    .line 64
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 65
    .line 66
    iput v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 67
    .line 68
    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 69
    .line 70
    iput v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 71
    .line 72
    iput v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    :cond_4c
    sget-object p1, Lj0/b1;->b:Lj0/b1;

    .line 78
    .line 79
    return-object p1
.end method
