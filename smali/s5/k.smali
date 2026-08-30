###### Class s5.k (s5.k)
.class public final Ls5/k;
.super Ljava/util/AbstractSet;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Map;)V
    .registers 3

    .line 1
    iput p1, p0, Ls5/k;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ls5/k;->b:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget v0, p0, Ls5/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/util/AbstractCollection;->clear()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    iget-object v0, p0, Ls5/k;->b:Ljava/util/Map;

    .line 11
    .line 12
    check-cast v0, Ls5/m;

    .line 13
    .line 14
    invoke-virtual {v0}, Ls5/m;->clear()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_11
    iget-object v0, p0, Ls5/k;->b:Ljava/util/Map;

    .line 19
    .line 20
    check-cast v0, Ls5/m;

    .line 21
    .line 22
    invoke-virtual {v0}, Ls5/m;->clear()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_9
    .end packed-switch
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    iget v0, p0, Ls5/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3e

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_a
    iget-object v0, p0, Ls5/k;->b:Ljava/util/Map;

    .line 12
    .line 13
    check-cast v0, Ls5/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ls5/m;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :pswitch_13
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_3d

    .line 24
    .line 25
    iget-object v0, p0, Ls5/k;->b:Ljava/util/Map;

    .line 26
    .line 27
    check-cast v0, Ls5/m;

    .line 28
    .line 29
    check-cast p1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_2a

    .line 37
    .line 38
    :try_start_25
    invoke-virtual {v0, v1, v2}, Ls5/m;->a(ZLjava/lang/Object;)Ls5/l;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_2b

    .line 43
    :catch_2a
    :cond_2a
    move-object v0, v3

    .line 44
    :goto_2b
    if-eqz v0, :cond_3a

    .line 45
    .line 46
    iget-object v2, v0, Ls5/l;->h:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3a

    .line 57
    .line 58
    move-object v3, v0

    .line 59
    :cond_3a
    if-eqz v3, :cond_3d

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    :cond_3d
    return v1

    .line 63
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_a
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 4

    .line 1
    iget v0, p0, Ls5/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_26

    .line 4
    .line 5
    .line 6
    new-instance v0, Ls/c;

    .line 7
    .line 8
    iget-object v1, p0, Ls5/k;->b:Ljava/util/Map;

    .line 9
    .line 10
    check-cast v1, Ls/e;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ls/c;-><init>(Ls/e;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_f
    new-instance v0, Ls5/j;

    .line 17
    .line 18
    iget-object v1, p0, Ls5/k;->b:Ljava/util/Map;

    .line 19
    .line 20
    check-cast v1, Ls5/m;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v0, v1, v2}, Ls5/j;-><init>(Ls5/m;I)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_1a
    new-instance v0, Ls5/j;

    .line 28
    .line 29
    iget-object v1, p0, Ls5/k;->b:Ljava/util/Map;

    .line 30
    .line 31
    check-cast v1, Ls5/m;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v0, v1, v2}, Ls5/j;-><init>(Ls5/m;I)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_f
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    iget v0, p0, Ls5/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_50

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_a
    iget-object v0, p0, Ls5/k;->b:Ljava/util/Map;

    .line 12
    .line 13
    check-cast v0, Ls5/m;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p1, :cond_16

    .line 18
    .line 19
    :try_start_12
    invoke-virtual {v0, v1, p1}, Ls5/m;->a(ZLjava/lang/Object;)Ls5/l;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_16} :catch_16

    .line 23
    :catch_16
    :cond_16
    const/4 p1, 0x1

    .line 24
    if-eqz v2, :cond_1c

    .line 25
    .line 26
    invoke-virtual {v0, v2, p1}, Ls5/m;->c(Ls5/l;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1c
    if-eqz v2, :cond_1f

    .line 30
    .line 31
    move v1, p1

    .line 32
    :cond_1f
    return v1

    .line 33
    :pswitch_20
    iget-object v0, p0, Ls5/k;->b:Ljava/util/Map;

    .line 34
    .line 35
    check-cast v0, Ls5/m;

    .line 36
    .line 37
    instance-of v1, p1, Ljava/util/Map$Entry;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v1, :cond_2a

    .line 41
    .line 42
    goto :goto_4f

    .line 43
    :cond_2a
    check-cast p1, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v3, 0x0

    .line 50
    if-eqz v1, :cond_38

    .line 51
    .line 52
    :try_start_33
    invoke-virtual {v0, v2, v1}, Ls5/m;->a(ZLjava/lang/Object;)Ls5/l;

    .line 53
    .line 54
    .line 55
    move-result-object v1
    :try_end_37
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_37} :catch_38

    .line 56
    goto :goto_39

    .line 57
    :catch_38
    :cond_38
    move-object v1, v3

    .line 58
    :goto_39
    if-eqz v1, :cond_48

    .line 59
    .line 60
    iget-object v4, v1, Ls5/l;->h:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_48

    .line 71
    .line 72
    move-object v3, v1

    .line 73
    :cond_48
    if-nez v3, :cond_4b

    .line 74
    .line 75
    goto :goto_4f

    .line 76
    :cond_4b
    const/4 v2, 0x1

    .line 77
    invoke-virtual {v0, v3, v2}, Ls5/m;->c(Ls5/l;Z)V

    .line 78
    .line 79
    .line 80
    :goto_4f
    return v2

    .line 81
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_20
        :pswitch_a
    .end packed-switch
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Ls5/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls5/k;->b:Ljava/util/Map;

    .line 7
    .line 8
    check-cast v0, Ls/e;

    .line 9
    .line 10
    iget v0, v0, Ls/j;->c:I

    .line 11
    .line 12
    return v0

    .line 13
    :pswitch_c
    iget-object v0, p0, Ls5/k;->b:Ljava/util/Map;

    .line 14
    .line 15
    check-cast v0, Ls5/m;

    .line 16
    .line 17
    iget v0, v0, Ls5/m;->d:I

    .line 18
    .line 19
    return v0

    .line 20
    :pswitch_13
    iget-object v0, p0, Ls5/k;->b:Ljava/util/Map;

    .line 21
    .line 22
    check-cast v0, Ls5/m;

    .line 23
    .line 24
    iget v0, v0, Ls5/m;->d:I

    .line 25
    .line 26
    return v0

    .line 27
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method
