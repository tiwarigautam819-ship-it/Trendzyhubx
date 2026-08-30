###### Class p0.y (p0.y)
.class public final Lp0/y;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/text/Spannable;


# instance fields
.field public a:Z

.field public b:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Landroid/text/Spannable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lp0/y;->a:Z

    .line 6
    .line 7
    iput-object p1, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    iget-boolean v1, p0, Lp0/y;->a:Z

    .line 4
    .line 5
    if-nez v1, :cond_26

    .line 6
    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v2, 0x1c

    .line 10
    .line 11
    if-ge v1, v2, :cond_13

    .line 12
    .line 13
    new-instance v1, Lo3/a;

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    invoke-direct {v1, v2}, Lo3/a;-><init>(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_19

    .line 20
    :cond_13
    new-instance v1, Lp0/x;

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    invoke-direct {v1, v2}, Lo3/a;-><init>(I)V

    .line 24
    .line 25
    .line 26
    :goto_19
    invoke-virtual {v1, v0}, Lo3/a;->h(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_26

    .line 31
    .line 32
    new-instance v1, Landroid/text/SpannableString;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 38
    .line 39
    :cond_26
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lp0/y;->a:Z

    .line 41
    .line 42
    return-void
.end method

.method public final charAt(I)C
    .registers 3

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final chars()Ljava/util/stream/IntStream;
    .registers 2

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/getcapacitor/a;->D(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final codePoints()Ljava/util/stream/IntStream;
    .registers 2

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/getcapacitor/a;->p(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getSpanEnd(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getSpanFlags(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getSpanStart(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final length()I
    .registers 2

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final nextSpanTransition(IILjava/lang/Class;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final removeSpan(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lp0/y;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setSpan(Ljava/lang/Object;III)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lp0/y;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lp0/y;->b:Landroid/text/Spannable;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
