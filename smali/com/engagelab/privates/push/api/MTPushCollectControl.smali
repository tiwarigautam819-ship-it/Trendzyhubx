###### Class com.engagelab.privates.push.api.MTPushCollectControl (com.engagelab.privates.push.api.MTPushCollectControl)
.class public Lcom/engagelab/privates/push/api/MTPushCollectControl;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private aid:Z

.field private gaid:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/engagelab/privates/push/api/MTPushCollectControl;->gaid:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/engagelab/privates/push/api/MTPushCollectControl;->aid:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getAid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/push/api/MTPushCollectControl;->aid:Z

    .line 2
    .line 3
    return v0
.end method

.method public getGaid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/push/api/MTPushCollectControl;->gaid:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAid(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/engagelab/privates/push/api/MTPushCollectControl;->aid:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGaid(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/engagelab/privates/push/api/MTPushCollectControl;->gaid:Z

    .line 2
    .line 3
    return-void
.end method
