###### Class r6.b (r6.b)
.class public final Lr6/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final b:Lr6/b;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lr6/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lr6/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr6/b;->b:Lr6/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh7/c;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0xff

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lh7/a;-><init>(III)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v3}, Lh7/c;->a(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_32

    .line 18
    .line 19
    new-instance v0, Lh7/c;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3}, Lh7/a;-><init>(III)V

    .line 22
    .line 23
    .line 24
    const/16 v4, 0x9

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Lh7/c;->a(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_32

    .line 31
    .line 32
    new-instance v0, Lh7/c;

    .line 33
    .line 34
    invoke-direct {v0, v1, v2, v3}, Lh7/a;-><init>(III)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x19

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lh7/c;->a(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_32

    .line 44
    .line 45
    const v0, 0x10919

    .line 46
    .line 47
    .line 48
    iput v0, p0, Lr6/b;->a:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v1, "Version components are out of range: 1.9.25"

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lr6/b;

    .line 2
    .line 3
    const-string v0, "other"

    .line 4
    .line 5
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lr6/b;->a:I

    .line 9
    .line 10
    iget p1, p1, Lr6/b;->a:I

    .line 11
    .line 12
    sub-int/2addr v0, p1

    .line 13
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lr6/b;

    .line 6
    .line 7
    if-eqz v1, :cond_b

    .line 8
    .line 9
    check-cast p1, Lr6/b;

    .line 10
    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    const/4 v1, 0x0

    .line 14
    if-nez p1, :cond_10

    .line 15
    .line 16
    return v1

    .line 17
    :cond_10
    iget v2, p0, Lr6/b;->a:I

    .line 18
    .line 19
    iget p1, p1, Lr6/b;->a:I

    .line 20
    .line 21
    if-ne v2, p1, :cond_17

    .line 22
    .line 23
    return v0

    .line 24
    :cond_17
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lr6/b;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "1.9.25"

    .line 2
    .line 3
    return-object v0
.end method
