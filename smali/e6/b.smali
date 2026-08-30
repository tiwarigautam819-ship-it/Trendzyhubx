###### Class e6.b (e6.b)
.class public final Le6/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le6/b;->c:Ljava/lang/Object;

    .line 3
    iput p2, p0, Le6/b;->b:I

    .line 4
    iput p3, p0, Le6/b;->a:I

    mul-int/2addr p2, p3

    .line 5
    new-array p1, p2, [B

    iput-object p1, p0, Le6/b;->d:Ljava/lang/Object;

    const/4 p2, -0x1

    .line 6
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public constructor <init>(Lm/s0;IILjava/lang/ref/WeakReference;)V
    .registers 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Le6/b;->d:Ljava/lang/Object;

    iput p2, p0, Le6/b;->a:I

    iput p3, p0, Le6/b;->b:I

    iput-object p4, p0, Le6/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, La2/g;

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    invoke-direct {v1, v2, p0}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public b(IIII)V
    .registers 7

    .line 1
    if-gez p1, :cond_c

    .line 2
    .line 3
    iget v0, p0, Le6/b;->a:I

    .line 4
    .line 5
    add-int/2addr p1, v0

    .line 6
    add-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    rem-int/lit8 v0, v0, 0x8

    .line 9
    .line 10
    rsub-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    add-int/2addr p2, v0

    .line 13
    :cond_c
    iget v0, p0, Le6/b;->b:I

    .line 14
    .line 15
    if-gez p2, :cond_18

    .line 16
    .line 17
    add-int/2addr p2, v0

    .line 18
    add-int/lit8 v1, v0, 0x4

    .line 19
    .line 20
    rem-int/lit8 v1, v1, 0x8

    .line 21
    .line 22
    rsub-int/lit8 v1, v1, 0x4

    .line 23
    .line 24
    add-int/2addr p1, v1

    .line 25
    :cond_18
    iget-object v1, p0, Le6/b;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Ljava/lang/CharSequence;

    .line 28
    .line 29
    invoke-interface {v1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    rsub-int/lit8 p4, p4, 0x8

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    shl-int p4, v1, p4

    .line 37
    .line 38
    and-int/2addr p3, p4

    .line 39
    if-eqz p3, :cond_29

    .line 40
    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    const/4 v1, 0x0

    .line 43
    :goto_2a
    iget-object p3, p0, Le6/b;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p3, [B

    .line 46
    .line 47
    mul-int/2addr p1, v0

    .line 48
    add-int/2addr p1, p2

    .line 49
    int-to-byte p2, v1

    .line 50
    aput-byte p2, p3, p1

    .line 51
    .line 52
    return-void
.end method

.method public c(Landroid/graphics/Typeface;)V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_18

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iget v1, p0, Le6/b;->a:I

    .line 9
    .line 10
    if-eq v1, v0, :cond_18

    .line 11
    .line 12
    iget v0, p0, Le6/b;->b:I

    .line 13
    .line 14
    and-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    if-eqz v0, :cond_13

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    invoke-static {p1, v1, v0}, Lm/r0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_18
    iget-object v0, p0, Le6/b;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lm/s0;

    .line 28
    .line 29
    iget-object v1, p0, Le6/b;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    iget-boolean v2, v0, Lm/s0;->m:Z

    .line 34
    .line 35
    if-eqz v2, :cond_44

    .line 36
    .line 37
    iput-object p1, v0, Lm/s0;->l:Landroid/graphics/Typeface;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v1, :cond_44

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3f

    .line 52
    .line 53
    iget v0, v0, Lm/s0;->j:I

    .line 54
    .line 55
    new-instance v2, Lm/n0;

    .line 56
    .line 57
    invoke-direct {v2, v1, p1, v0}, Lm/n0;-><init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3f
    iget v0, v0, Lm/s0;->j:I

    .line 65
    .line 66
    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 67
    .line 68
    .line 69
    :cond_44
    return-void
.end method

.method public d(III)V
    .registers 8

    .line 1
    add-int/lit8 v0, p1, -0x2

    .line 2
    .line 3
    add-int/lit8 v1, p2, -0x2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, v0, v1, p3, v2}, Le6/b;->b(IIII)V

    .line 7
    .line 8
    .line 9
    add-int/lit8 v2, p2, -0x1

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-virtual {p0, v0, v2, p3, v3}, Le6/b;->b(IIII)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, p1, -0x1

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-virtual {p0, v0, v1, p3, v3}, Le6/b;->b(IIII)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    invoke-virtual {p0, v0, v2, p3, v3}, Le6/b;->b(IIII)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x5

    .line 26
    invoke-virtual {p0, v0, p2, p3, v3}, Le6/b;->b(IIII)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x6

    .line 30
    invoke-virtual {p0, p1, v1, p3, v0}, Le6/b;->b(IIII)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x7

    .line 34
    invoke-virtual {p0, p1, v2, p3, v0}, Le6/b;->b(IIII)V

    .line 35
    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, p3, v0}, Le6/b;->b(IIII)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
