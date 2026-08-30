###### Class q7.k (q7.k)
.class public final Lq7/k;
.super Ll7/n;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final c:Lq7/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lq7/k;

    .line 2
    .line 3
    invoke-direct {v0}, Ll7/n;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq7/k;->c:Lq7/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final t(Lu6/k;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    sget-object p1, Lq7/d;->d:Lq7/d;

    .line 2
    .line 3
    sget-object v0, Lq7/j;->h:Lf4/j;

    .line 4
    .line 5
    iget-object p1, p1, Lq7/g;->c:Lq7/b;

    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Lq7/b;->c(Ljava/lang/Runnable;Lf4/j;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
