###### Class n6.f (n6.f)
.class public abstract Ln6/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static a:Lorg/json/JSONObject;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ln6/f;->a:Lorg/json/JSONObject;

    .line 7
    .line 8
    const-string v17, "/"

    .line 9
    .line 10
    const-string v18, "/rechargeGift"

    .line 11
    .line 12
    const-string v1, "/"

    .line 13
    .line 14
    const-string v2, "/wallet/recharge"

    .line 15
    .line 16
    const-string v3, "/wallet/withdraw"

    .line 17
    .line 18
    const-string v4, "/gift"

    .line 19
    .line 20
    const-string v5, "/ticket"

    .line 21
    .line 22
    const-string v6, "/activity/superJackpot"

    .line 23
    .line 24
    const-string v7, "/activity/rebate"

    .line 25
    .line 26
    const-string v8, "/vip"

    .line 27
    .line 28
    const-string v9, "/activity/championship"

    .line 29
    .line 30
    const-string v10, "/ranking"

    .line 31
    .line 32
    const-string v11, "/activity"

    .line 33
    .line 34
    const-string v12, "/notifications/index"

    .line 35
    .line 36
    const-string v13, "/turntable"

    .line 37
    .line 38
    const-string v14, "/earn"

    .line 39
    .line 40
    const-string v15, "/rechargeTurntable"

    .line 41
    .line 42
    const-string v16, "/"

    .line 43
    .line 44
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Ln6/f;->b:[Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method
