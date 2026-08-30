###### Class com.engagelab.privates.common.helper.MTCollectControl (com.engagelab.privates.common.helper.MTCollectControl)
.class public Lcom/engagelab/privates/common/helper/MTCollectControl;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/helper/MTCollectControl$Type;
    }
.end annotation


# instance fields
.field private collectData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/helper/MTCollectControl;->collectData:Lorg/json/JSONObject;

    .line 10
    .line 11
    return-void
.end method

.method private set(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/engagelab/privates/common/helper/MTCollectControl;->collectData:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_5

    .line 4
    .line 5
    .line 6
    :catch_5
    return-void
.end method


# virtual methods
.method public setAID(Z)V
    .registers 3

    .line 1
    const-string v0, "aid"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/engagelab/privates/common/helper/MTCollectControl;->set(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGAID(Z)V
    .registers 3

    .line 1
    const-string v0, "gaid"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/engagelab/privates/common/helper/MTCollectControl;->set(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/helper/MTCollectControl;->collectData:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

###### Class com.engagelab.privates.common.helper.MTCollectControl.Type (com.engagelab.privates.common.helper.MTCollectControl$Type)
.class public interface abstract Lcom/engagelab/privates/common/helper/MTCollectControl$Type;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/helper/MTCollectControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Type"
.end annotation


# static fields
.field public static final GAID:Ljava/lang/String; = "gaid"
