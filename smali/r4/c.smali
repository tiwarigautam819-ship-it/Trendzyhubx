###### Class r4.c (r4.c)
.class public final Lr4/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr4/c;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .registers 3

    .line 1
    sget-object v0, Lr4/e;->b:Lr4/b;

    .line 2
    .line 3
    iget-object v0, p0, Lr4/c;->a:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-nez v1, :cond_a

    .line 7
    .line 8
    sget-object v0, Lr4/i;->e:Lr4/i;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Ljava/lang/Object;

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    invoke-static {v1, v0}, Lh8/b;->c(I[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    array-length v1, v0

    .line 22
    invoke-static {v1, v0}, Lr4/e;->e(I[Ljava/lang/Object;)Lr4/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
