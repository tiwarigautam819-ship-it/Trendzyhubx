###### Class q7.d (q7.d)
.class public final Lq7/d;
.super Lq7/g;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final d:Lq7/d;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lq7/d;

    .line 2
    .line 3
    sget v2, Lq7/j;->c:I

    .line 4
    .line 5
    sget v3, Lq7/j;->d:I

    .line 6
    .line 7
    sget-wide v4, Lq7/j;->e:J

    .line 8
    .line 9
    sget-object v6, Lq7/j;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0}, Ll7/n;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lq7/b;

    .line 15
    .line 16
    invoke-direct/range {v1 .. v6}, Lq7/b;-><init>(IIJLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lq7/g;->c:Lq7/b;

    .line 20
    .line 21
    sput-object v0, Lq7/d;->d:Lq7/d;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Dispatchers.Default cannot be closed"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Dispatchers.Default"

    .line 2
    .line 3
    return-object v0
.end method
