###### Class u6.b (u6.b)
.class public final Lu6/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:[Lu6/k;


# direct methods
.method public constructor <init>([Lu6/k;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu6/b;->a:[Lu6/k;

    .line 5
    .line 6
    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lu6/b;->a:[Lu6/k;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    sget-object v2, Lu6/l;->a:Lu6/l;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_6
    if-ge v3, v1, :cond_11

    .line 8
    .line 9
    aget-object v4, v0, v3

    .line 10
    .line 11
    invoke-interface {v2, v4}, Lu6/k;->s(Lu6/k;)Lu6/k;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_6

    .line 18
    :cond_11
    return-object v2
.end method
