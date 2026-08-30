###### Class b1.c (b1.c)
.class public final Lb1/c;
.super Lw6/e;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/p;


# instance fields
.field public e:I

.field public final synthetic f:Lb1/d;

.field public final synthetic g:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lb1/d;Landroid/net/Uri;Lu6/f;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lb1/c;->f:Lb1/d;

    .line 2
    .line 3
    iput-object p2, p0, Lb1/c;->g:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lw6/e;-><init>(Lu6/f;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Lu6/f;)Lu6/f;
    .registers 5

    .line 1
    new-instance v0, Lb1/c;

    .line 2
    .line 3
    iget-object v1, p0, Lb1/c;->f:Lb1/d;

    .line 4
    .line 5
    iget-object v2, p0, Lb1/c;->g:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lb1/c;-><init>(Lb1/d;Landroid/net/Uri;Lu6/f;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ll7/p;

    .line 2
    .line 3
    check-cast p2, Lu6/f;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lb1/c;->c(Lu6/f;)Lu6/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lb1/c;

    .line 10
    .line 11
    sget-object p2, Lr6/j;->a:Lr6/j;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lb1/c;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lb1/c;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_13

    .line 5
    .line 6
    if-ne v0, v1, :cond_b

    .line 7
    .line 8
    invoke-static {p1}, Lk2/e;->l(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    goto :goto_27

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_13
    invoke-static {p1}, Lk2/e;->l(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lb1/c;->f:Lb1/d;

    .line 24
    .line 25
    iget-object p1, p1, Lb1/d;->a:Lc1/d;

    .line 26
    .line 27
    iput v1, p0, Lb1/c;->e:I

    .line 28
    .line 29
    iget-object v0, p0, Lb1/c;->g:Landroid/net/Uri;

    .line 30
    .line 31
    invoke-virtual {p1, v0, p0}, Lc1/d;->d(Landroid/net/Uri;Lu6/f;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v0, Lv6/a;->a:Lv6/a;

    .line 36
    .line 37
    if-ne p1, v0, :cond_27

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_27
    :goto_27
    sget-object p1, Lr6/j;->a:Lr6/j;

    .line 41
    .line 42
    return-object p1
.end method
