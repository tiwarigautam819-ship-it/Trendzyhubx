###### Class v3.m (v3.m)
.class public final Lv3/m;
.super Lv3/l;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>([B)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x19

    .line 3
    .line 4
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lv3/l;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lv3/m;->d:[B

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final e()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lv3/m;->d:[B

    .line 2
    .line 3
    return-object v0
.end method
