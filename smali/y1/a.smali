###### Class y1.a (y1.a)
.class public final Ly1/a;
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
    iput-object p1, p0, Ly1/a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Ly1/b;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/a;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Ly1/a;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ly1/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
