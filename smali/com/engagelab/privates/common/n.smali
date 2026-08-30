###### Class com.engagelab.privates.common.n (com.engagelab.privates.common.n)
.class public Lcom/engagelab/privates/common/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-string v0, "cmd"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "protocol"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, v0, p1}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl;->ctrl(Landroid/content/Context;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getHttpAddress(Landroid/content/Context;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p0, p1, v0, v1, v2}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report;->report(Landroid/content/Context;Ljava/util/List;JLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
