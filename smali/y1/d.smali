###### Class y1.d (y1.d)
.class public final Ly1/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/d;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/d;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Ly1/d;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Ly1/d;->d:Z

    .line 11
    .line 12
    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 6

    .line 1
    new-instance v0, Ly1/e;

    .line 2
    .line 3
    iget-boolean v1, p0, Ly1/d;->c:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Ly1/d;->d:Z

    .line 6
    .line 7
    iget-object v3, p0, Ly1/d;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Ly1/d;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v3, v4, v1, v2}, Ly1/e;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
