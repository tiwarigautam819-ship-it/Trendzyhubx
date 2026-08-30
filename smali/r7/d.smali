###### Class r7.d (r7.d)
.class public final Lr7/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final c:Lr7/d;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ld4/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lr7/d;

    .line 7
    .line 8
    invoke-static {v0}, Ls6/g;->y(Ljava/util/ArrayList;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v0, v2}, Lr7/d;-><init>(Ljava/util/Set;Ld4/a;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lr7/d;->c:Lr7/d;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ld4/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr7/d;->a:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lr7/d;->b:Ld4/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lr7/d;

    .line 2
    .line 3
    if-eqz v0, :cond_1c

    .line 4
    .line 5
    check-cast p1, Lr7/d;

    .line 6
    .line 7
    iget-object v0, p1, Lr7/d;->a:Ljava/util/Set;

    .line 8
    .line 9
    iget-object v1, p0, Lr7/d;->a:Ljava/util/Set;

    .line 10
    .line 11
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1c

    .line 16
    .line 17
    iget-object p1, p1, Lr7/d;->b:Ld4/a;

    .line 18
    .line 19
    iget-object v0, p0, Lr7/d;->b:Ld4/a;

    .line 20
    .line 21
    invoke-static {p1, v0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1c

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lr7/d;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0x5ed

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x29

    .line 10
    .line 11
    iget-object v1, p0, Lr7/d;->b:Ld4/a;

    .line 12
    .line 13
    if-eqz v1, :cond_13

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v1, 0x0

    .line 21
    :goto_14
    add-int/2addr v0, v1

    .line 22
    return v0
.end method
