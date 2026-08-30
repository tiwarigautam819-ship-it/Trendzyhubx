###### Class androidx.fragment.app.m (androidx.fragment.app.m)
.class public abstract Landroidx/fragment/app/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/l1;)V
    .registers 3

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/fragment/app/m;->a:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/firebase/messaging/y;)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/fragment/app/l1;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    if-eqz v1, :cond_39

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x0

    .line 18
    cmpg-float v4, v4, v5

    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    if-nez v4, :cond_1d

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1d

    .line 28
    .line 29
    goto :goto_3a

    .line 30
    :cond_1d
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_37

    .line 35
    .line 36
    if-eq v1, v5, :cond_3a

    .line 37
    .line 38
    const/16 v4, 0x8

    .line 39
    .line 40
    if-ne v1, v4, :cond_2b

    .line 41
    .line 42
    const/4 v5, 0x3

    .line 43
    goto :goto_3a

    .line 44
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v2, "Unknown visibility "

    .line 47
    .line 48
    invoke-static {v1, v2}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_37
    move v5, v3

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v5, v2

    .line 59
    :cond_3a
    :goto_3a
    iget v0, v0, Landroidx/fragment/app/l1;->a:I

    .line 60
    .line 61
    if-eq v5, v0, :cond_44

    .line 62
    .line 63
    if-eq v5, v3, :cond_43

    .line 64
    .line 65
    if-eq v0, v3, :cond_43

    .line 66
    .line 67
    goto :goto_44

    .line 68
    :cond_43
    return v2

    .line 69
    :cond_44
    :goto_44
    const/4 v0, 0x1

    .line 70
    return v0
.end method
