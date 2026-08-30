###### Class j0.y (j0.y)
.class public final Lj0/y;
.super Lj0/a0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;III)V
    .registers 6

    .line 1
    iput p5, p0, Lj0/y;->e:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lj0/a0;->a:I

    .line 7
    .line 8
    iput-object p2, p0, Lj0/a0;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iput p3, p0, Lj0/a0;->c:I

    .line 11
    .line 12
    iput p4, p0, Lj0/a0;->b:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lj0/y;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1c

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lj0/f0;->b(Landroid/view/View;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_e
    invoke-static {p1}, Lj0/f0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_13
    invoke-static {p1}, Lj0/f0;->c(Landroid/view/View;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method

.method public final c(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget v0, p0, Lj0/y;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p1, p2}, Lj0/f0;->d(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    check-cast p2, Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-static {p1, p2}, Lj0/f0;->e(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_15
    check-cast p2, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {p1, p2}, Lj0/f0;->f(Landroid/view/View;Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_15
        :pswitch_f
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    iget v0, p0, Lj0/y;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_54

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Boolean;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p1, :cond_15

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_15

    .line 19
    .line 20
    move p1, v1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move p1, v0

    .line 23
    :goto_16
    if-eqz p2, :cond_20

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_20

    .line 30
    .line 31
    move p2, v1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move p2, v0

    .line 34
    :goto_21
    if-ne p1, p2, :cond_24

    .line 35
    .line 36
    move v0, v1

    .line 37
    :cond_24
    xor-int/lit8 p1, v0, 0x1

    .line 38
    .line 39
    return p1

    .line 40
    :pswitch_27
    check-cast p1, Ljava/lang/CharSequence;

    .line 41
    .line 42
    check-cast p2, Ljava/lang/CharSequence;

    .line 43
    .line 44
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    xor-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    return p1

    .line 51
    :pswitch_32
    check-cast p1, Ljava/lang/Boolean;

    .line 52
    .line 53
    check-cast p2, Ljava/lang/Boolean;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    const/4 v1, 0x1

    .line 57
    if-eqz p1, :cond_42

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_42

    .line 64
    .line 65
    move p1, v1

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move p1, v0

    .line 68
    :goto_43
    if-eqz p2, :cond_4d

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_4d

    .line 75
    .line 76
    move p2, v1

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move p2, v0

    .line 79
    :goto_4e
    if-ne p1, p2, :cond_51

    .line 80
    .line 81
    move v0, v1

    .line 82
    :cond_51
    xor-int/lit8 p1, v0, 0x1

    .line 83
    .line 84
    return p1

    .line 85
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_32
        :pswitch_27
    .end packed-switch
.end method
