###### Class y1.b (y1.b)
.class public final Ly1/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ly1/b;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_c

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    :cond_c
    iput-object p1, p0, Ly1/b;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Ly1/a;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Ly1/b;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ly1/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Ly1/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    goto :goto_26

    .line 7
    :cond_6
    check-cast p1, Ly1/b;

    .line 8
    .line 9
    iget-object v0, p1, Ly1/b;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    iget-object v3, p0, Ly1/b;->b:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_15

    .line 15
    .line 16
    if-nez v3, :cond_13

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_19

    .line 20
    :cond_13
    move v0, v1

    .line 21
    goto :goto_19

    .line 22
    :cond_15
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_19
    if-eqz v0, :cond_26

    .line 27
    .line 28
    iget-object p1, p1, Ly1/b;->a:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, p0, Ly1/b;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_26

    .line 37
    .line 38
    return v2

    .line 39
    :cond_26
    :goto_26
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Ly1/b;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    iget-object v1, p0, Ly1/b;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    xor-int/2addr v0, v1

    .line 18
    return v0
.end method
