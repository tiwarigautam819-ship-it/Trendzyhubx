###### Class j0.i0 (j0.i0)
.class public abstract Lj0/i0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(Landroid/view/View;)[Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Landroid/view/View;Lj0/f;)Lj0/f;
    .registers 3

    .line 1
    iget-object v0, p1, Lj0/f;->a:Lj0/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lj0/e;->i()Landroid/view/ContentInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_11

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_11
    if-ne p0, v0, :cond_14

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_14
    new-instance p1, Lj0/f;

    .line 22
    .line 23
    new-instance v0, Lo5/c;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lo5/c;-><init>(Landroid/view/ContentInfo;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Lj0/f;-><init>(Lj0/e;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method
