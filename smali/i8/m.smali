###### Class i8.m (i8.m)
.class public abstract Li8/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/HashSet;

.field public static final b:Lq5/l;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "track"

    .line 4
    .line 5
    const-string v2, "xosoBettingData"

    .line 6
    .line 7
    const-string v3, "signature"

    .line 8
    .line 9
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Li8/m;->a:Ljava/util/HashSet;

    .line 21
    .line 22
    new-instance v0, Lq5/m;

    .line 23
    .line 24
    invoke-direct {v0}, Lq5/m;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, v0, Lq5/m;->j:Z

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lq5/m;->g:Z

    .line 32
    .line 33
    invoke-virtual {v0}, Lq5/m;->a()Lq5/l;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Li8/m;->b:Lq5/l;

    .line 38
    .line 39
    return-void
.end method
