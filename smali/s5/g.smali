###### Class s5.g (s5.g)
.class public final Ls5/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lq5/y;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final c:Ls5/g;


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ls5/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 7
    .line 8
    iput-object v1, v0, Ls5/g;->a:Ljava/util/List;

    .line 9
    .line 10
    iput-object v1, v0, Ls5/g;->b:Ljava/util/List;

    .line 11
    .line 12
    sput-object v0, Ls5/g;->c:Ls5/g;

    .line 13
    .line 14
    return-void
.end method

.method public static c(Ljava/lang/Class;)Z
    .registers 2

    .line 1
    const-class v0, Ljava/lang/Enum;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1f

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit8 v0, v0, 0x8

    .line 14
    .line 15
    if-eqz v0, :cond_11

    .line 16
    .line 17
    goto :goto_1f

    .line 18
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1d

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1f

    .line 29
    .line 30
    :cond_1d
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    .line 33
    return p0
.end method


# virtual methods
.method public final a(Lq5/l;Lw5/a;)Lq5/x;
    .registers 7

    .line 1
    iget-object v0, p2, Lw5/a;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-static {v0}, Ls5/g;->c(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_f

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ls5/g;->b(Z)V

    .line 12
    .line 13
    .line 14
    move v3, v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v3, v2

    .line 17
    :goto_10
    if-nez v0, :cond_16

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ls5/g;->b(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v1, v2

    .line 24
    :goto_17
    if-nez v3, :cond_1d

    .line 25
    .line 26
    if-nez v1, :cond_1d

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    return-object p1

    .line 30
    :cond_1d
    new-instance v0, Ls5/f;

    .line 31
    .line 32
    invoke-direct {v0, p0, v3, p1, p2}, Ls5/f;-><init>(Ls5/g;ZLq5/l;Lw5/a;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final b(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iget-object p1, p0, Ls5/g;->a:Ljava/util/List;

    .line 4
    .line 5
    goto :goto_7

    .line 6
    :cond_5
    iget-object p1, p0, Ls5/g;->b:Ljava/util/List;

    .line 7
    .line 8
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/ClassCastException;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final clone()Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ls5/g;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 6
    .line 7
    return-object v0

    .line 8
    :catch_7
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/AssertionError;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    throw v1
.end method
