###### Class d7.o (d7.o)
.class public abstract Ld7/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(Ljava/util/HashMap;)Ljava/util/Map;
    .registers 2

    .line 1
    instance-of v0, p0, Le7/a;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_5
    const-string v0, "kotlin.collections.MutableMap"

    .line 7
    .line 8
    invoke-static {v0, p0}, Ld7/o;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public static b(ILjava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lr6/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_27

    .line 5
    .line 6
    instance-of v0, p1, Ld7/e;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_11

    .line 10
    .line 11
    check-cast p1, Ld7/e;

    .line 12
    .line 13
    invoke-interface {p1}, Ld7/e;->d()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_24

    .line 18
    :cond_11
    instance-of v0, p1, Lc7/a;

    .line 19
    .line 20
    if-eqz v0, :cond_17

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_24

    .line 24
    :cond_17
    instance-of v0, p1, Lc7/l;

    .line 25
    .line 26
    if-eqz v0, :cond_1d

    .line 27
    .line 28
    move p1, v2

    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    instance-of p1, p1, Lc7/p;

    .line 31
    .line 32
    if-eqz p1, :cond_23

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 p1, -0x1

    .line 37
    :goto_24
    if-ne p1, p0, :cond_27

    .line 38
    .line 39
    return v2

    .line 40
    :cond_27
    return v1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1
    if-nez p1, :cond_5

    .line 2
    .line 3
    const-string p1, "null"

    .line 4
    .line 5
    goto :goto_d

    .line 6
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " cannot be cast to "

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance p1, Ljava/lang/ClassCastException;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-class p0, Ld7/o;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p1, p0}, Ld7/g;->h(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method
