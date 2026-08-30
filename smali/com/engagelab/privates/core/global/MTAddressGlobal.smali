###### Class com.engagelab.privates.core.global.MTAddressGlobal (com.engagelab.privates.core.global.MTAddressGlobal)
.class public Lcom/engagelab/privates/core/global/MTAddressGlobal;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/core/global/MTAddressGlobal;->list:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {}, Lcom/engagelab/privates/core/global/MTAddressGlobal;->getSingapore01()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/engagelab/privates/core/global/MTAddressGlobal;->usaVirginia()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/engagelab/privates/core/global/MTAddressGlobal;->DEU_Frankfurt()[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/engagelab/privates/core/global/MTAddressGlobal;->getSingapore02()[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/engagelab/privates/core/global/MTAddressGlobal;->getHongKong()[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static DEU_Frankfurt()[Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "sis-defra.push.engageforce.net:19000"

    .line 2
    .line 3
    const-string v1, "sis-defra.push.engage7.com:19000"

    .line 4
    .line 5
    const-string v2, "sis-defra.push.theengagelab.com:19000"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static getHongKong()[Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "sis-hk.push.engageforce.net:19000"

    .line 2
    .line 3
    const-string v1, "sis-hk.push.engage7.com:19000"

    .line 4
    .line 5
    const-string v2, "sis-hk.push.theengagelab.com:19000"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static getList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/engagelab/privates/core/global/MTAddressGlobal;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method private static getSingapore01()[Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "sis.push.engageforce.net:19000"

    .line 2
    .line 3
    const-string v1, "sis.push.engage7.com:19000"

    .line 4
    .line 5
    const-string v2, "sis.push.theengagelab.com:19000"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static getSingapore02()[Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "sis-sgp2.push.engageforce.net:19000"

    .line 2
    .line 3
    const-string v1, "sis-sgp2.push.engage7.com:19000"

    .line 4
    .line 5
    const-string v2, "sis-sgp2.push.theengagelab.com:19000"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static usaVirginia()[Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "sis-usva.push.engageforce.net:19000"

    .line 2
    .line 3
    const-string v1, "sis-usva.push.engage7.com:19000"

    .line 4
    .line 5
    const-string v2, "sis-usva.push.theengagelab.com:19000"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
