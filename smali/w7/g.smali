###### Class w7.g (w7.g)
.class public final Lw7/g;
.super Lr7/w;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Le8/q;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLe8/q;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw7/g;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lw7/g;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lw7/g;->c:Le8/q;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lw7/g;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Lr7/p;
    .registers 3

    .line 1
    iget-object v0, p0, Lw7/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    sget-object v1, Lr7/p;->e:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    invoke-static {v0}, Ly1/j;->i(Ljava/lang/String;)Lr7/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final g()Le8/i;
    .registers 2

    .line 1
    iget-object v0, p0, Lw7/g;->c:Le8/q;

    .line 2
    .line 3
    return-object v0
.end method
