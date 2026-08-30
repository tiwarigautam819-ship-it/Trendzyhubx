###### Class com.engagelab.privates.push.utils.ApplicationContextUtil (com.engagelab.privates.push.utils.ApplicationContextUtil)
.class public Lcom/engagelab/privates/push/utils/ApplicationContextUtil;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/push/utils/ApplicationContextUtil;->mApplicationContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/engagelab/privates/push/utils/ApplicationContextUtil;->mApplicationContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method
