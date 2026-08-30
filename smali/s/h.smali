###### Class s.h (s.h)
.class public abstract Ls/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls/h;->a:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ls/h;->b:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Ls/f;I)V
    .registers 3

    .line 1
    new-array v0, p1, [I

    .line 2
    .line 3
    iput-object v0, p0, Ls/f;->a:[I

    .line 4
    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p1, p0, Ls/f;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public static final b(Ls/f;Ljava/lang/Object;I)I
    .registers 7

    .line 1
    iget v0, p0, Ls/f;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_6
    :try_start_6
    iget-object v1, p0, Ls/f;->a:[I

    .line 8
    .line 9
    invoke-static {v0, p2, v1}, Lt/a;->a(II[I)I

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_c} :catch_4c

    .line 13
    if-gez v1, :cond_f

    .line 14
    .line 15
    goto :goto_19

    .line 16
    :cond_f
    iget-object v2, p0, Ls/f;->b:[Ljava/lang/Object;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    invoke-static {p1, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1a

    .line 25
    .line 26
    :goto_19
    return v1

    .line 27
    :cond_1a
    add-int/lit8 v2, v1, 0x1

    .line 28
    .line 29
    :goto_1c
    if-ge v2, v0, :cond_32

    .line 30
    .line 31
    iget-object v3, p0, Ls/f;->a:[I

    .line 32
    .line 33
    aget v3, v3, v2

    .line 34
    .line 35
    if-ne v3, p2, :cond_32

    .line 36
    .line 37
    iget-object v3, p0, Ls/f;->b:[Ljava/lang/Object;

    .line 38
    .line 39
    aget-object v3, v3, v2

    .line 40
    .line 41
    invoke-static {p1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2f

    .line 46
    .line 47
    return v2

    .line 48
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_1c

    .line 51
    :cond_32
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    :goto_34
    if-ltz v1, :cond_4a

    .line 54
    .line 55
    iget-object v0, p0, Ls/f;->a:[I

    .line 56
    .line 57
    aget v0, v0, v1

    .line 58
    .line 59
    if-ne v0, p2, :cond_4a

    .line 60
    .line 61
    iget-object v0, p0, Ls/f;->b:[Ljava/lang/Object;

    .line 62
    .line 63
    aget-object v0, v0, v1

    .line 64
    .line 65
    invoke-static {p1, v0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_47

    .line 70
    .line 71
    return v1

    .line 72
    :cond_47
    add-int/lit8 v1, v1, -0x1

    .line 73
    .line 74
    goto :goto_34

    .line 75
    :cond_4a
    not-int p0, v2

    .line 76
    return p0

    .line 77
    :catch_4c
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 78
    .line 79
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw p0
.end method
