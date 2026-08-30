###### Class r0.d (r0.d)
.class public final Lr0/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lr0/c;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr0/d;->a:Landroid/widget/TextView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 10

    .line 1
    iget-object v0, p0, Lr0/d;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_47

    .line 10
    :cond_9
    invoke-static {}, Lp0/k;->a()Lp0/k;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lp0/k;->b()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_48

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v1, v2, :cond_1a

    .line 22
    .line 23
    const/4 p2, 0x3

    .line 24
    if-eq v1, p2, :cond_48

    .line 25
    .line 26
    goto :goto_47

    .line 27
    :cond_1a
    if-nez p6, :cond_2b

    .line 28
    .line 29
    if-nez p5, :cond_2b

    .line 30
    .line 31
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result p4

    .line 35
    if-nez p4, :cond_2b

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    if-ne p1, p4, :cond_2b

    .line 42
    .line 43
    goto :goto_47

    .line 44
    :cond_2b
    if-eqz p1, :cond_47

    .line 45
    .line 46
    if-nez p2, :cond_36

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result p4

    .line 52
    if-ne p3, p4, :cond_36

    .line 53
    .line 54
    goto :goto_3a

    .line 55
    :cond_36
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_3a
    invoke-static {}, Lp0/k;->a()Lp0/k;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    const/4 p4, 0x0

    .line 68
    invoke-virtual {p2, p1, p4, p3}, Lp0/k;->e(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_47
    :goto_47
    return-object p1

    .line 73
    :cond_48
    invoke-static {}, Lp0/k;->a()Lp0/k;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iget-object p3, p0, Lr0/d;->b:Lr0/c;

    .line 78
    .line 79
    if-nez p3, :cond_57

    .line 80
    .line 81
    new-instance p3, Lr0/c;

    .line 82
    .line 83
    invoke-direct {p3, v0, p0}, Lr0/c;-><init>(Landroid/widget/TextView;Lr0/d;)V

    .line 84
    .line 85
    .line 86
    iput-object p3, p0, Lr0/d;->b:Lr0/c;

    .line 87
    .line 88
    :cond_57
    iget-object p3, p0, Lr0/d;->b:Lr0/c;

    .line 89
    .line 90
    invoke-virtual {p2, p3}, Lp0/k;->f(Lp0/h;)V

    .line 91
    .line 92
    .line 93
    return-object p1
.end method
