###### Class com.engagelab.privates.common.helper.CollectControlHelper (com.engagelab.privates.common.helper.CollectControlHelper)
.class public Lcom/engagelab/privates/common/helper/CollectControlHelper;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/helper/CollectControlHelper$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CollectControlHelper"

.field private static collectDataDefault:Lorg/json/JSONObject;

.field private static final mCollectControlHelper:Lcom/engagelab/privates/common/helper/CollectControlHelper;


# instance fields
.field private collectData:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/common/helper/CollectControlHelper;->collectDataDefault:Lorg/json/JSONObject;

    .line 7
    .line 8
    :try_start_7
    const-string v1, "gaid"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/engagelab/privates/common/helper/CollectControlHelper;->collectDataDefault:Lorg/json/JSONObject;

    .line 15
    .line 16
    const-string v1, "aid"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_14

    .line 19
    .line 20
    .line 21
    :catchall_14
    new-instance v0, Lcom/engagelab/privates/common/helper/CollectControlHelper;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/engagelab/privates/common/helper/CollectControlHelper;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/engagelab/privates/common/helper/CollectControlHelper;->mCollectControlHelper:Lcom/engagelab/privates/common/helper/CollectControlHelper;

    .line 27
    .line 28
    return-void
.end method

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
    iput-object v0, p0, Lcom/engagelab/privates/common/helper/CollectControlHelper;->collectData:Lorg/json/JSONObject;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/engagelab/privates/common/helper/CollectControlHelper;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/helper/CollectControlHelper;->mCollectControlHelper:Lcom/engagelab/privates/common/helper/CollectControlHelper;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getCollectControl(Ljava/lang/String;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/helper/CollectControlHelper;->collectData:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "CollectControlHelper"

    .line 8
    .line 9
    const-string v2, "collect type:"

    .line 10
    .line 11
    if-eqz v0, :cond_13

    .line 12
    .line 13
    iget-object v0, p0, Lcom/engagelab/privates/common/helper/CollectControlHelper;->collectData:Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_30

    .line 20
    :cond_13
    sget-object v0, Lcom/engagelab/privates/common/helper/CollectControlHelper;->collectDataDefault:Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, " default is "

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v1, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, " is "

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return v0
.end method

.method public setCollectControl(Lcom/engagelab/privates/common/helper/MTCollectControl;)V
    .registers 5

    .line 1
    const-string v0, "CollectControlHelper"

    .line 2
    .line 3
    const-string v1, "setCollectControl:"

    .line 4
    .line 5
    :try_start_4
    invoke-virtual {p1}, Lcom/engagelab/privates/common/helper/MTCollectControl;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/engagelab/privates/common/helper/CollectControlHelper;->collectData:Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_1e} :catch_1f

    .line 30
    .line 31
    return-void

    .line 32
    :catch_1f
    move-exception p1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "set collect f:"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

###### Class com.engagelab.privates.common.helper.CollectControlHelper.Type (com.engagelab.privates.common.helper.CollectControlHelper$Type)
.class public interface abstract Lcom/engagelab/privates/common/helper/CollectControlHelper$Type;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/helper/CollectControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Type"
.end annotation


# static fields
.field public static final AID:Ljava/lang/String; = "aid"

.field public static final GAID:Ljava/lang/String; = "gaid"
