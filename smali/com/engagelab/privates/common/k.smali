###### Class com.engagelab.privates.common.k (com.engagelab.privates.common.k)
.class public Lcom/engagelab/privates/common/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a()Lcom/engagelab/privates/common/j;
    .registers 1

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getUdpEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    new-instance v0, Lcom/engagelab/privates/common/m;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/engagelab/privates/common/m;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v0, Lcom/engagelab/privates/common/l;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/engagelab/privates/common/l;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
