###### Class y1.q (y1.q)
.class public final Ly1/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 3

    .line 1
    const-string v0, "proxyEvents"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ly1/q;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Ly1/r;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/q;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ly1/r;-><init>(Ljava/util/HashMap;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
