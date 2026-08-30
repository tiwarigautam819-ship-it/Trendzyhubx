###### Class r7.v (r7.v)
.class public final Lr7/v;
.super Lr7/w;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Le8/g;


# direct methods
.method public constructor <init>(JLe8/g;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lr7/v;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lr7/v;->b:Le8/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lr7/v;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Lr7/p;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final g()Le8/i;
    .registers 2

    .line 1
    iget-object v0, p0, Lr7/v;->b:Le8/g;

    .line 2
    .line 3
    return-object v0
.end method
