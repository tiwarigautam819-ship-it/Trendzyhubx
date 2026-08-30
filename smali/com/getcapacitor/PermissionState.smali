###### Class com.getcapacitor.PermissionState (com.getcapacitor.PermissionState)
.class public final enum Lcom/getcapacitor/PermissionState;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/getcapacitor/PermissionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/getcapacitor/PermissionState;

.field public static final enum DENIED:Lcom/getcapacitor/PermissionState;

.field public static final enum GRANTED:Lcom/getcapacitor/PermissionState;

.field public static final enum PROMPT:Lcom/getcapacitor/PermissionState;

.field public static final enum PROMPT_WITH_RATIONALE:Lcom/getcapacitor/PermissionState;


# instance fields
.field private state:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/getcapacitor/PermissionState;
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/getcapacitor/PermissionState;

    .line 3
    .line 4
    sget-object v1, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/getcapacitor/PermissionState;->DENIED:Lcom/getcapacitor/PermissionState;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/getcapacitor/PermissionState;->PROMPT:Lcom/getcapacitor/PermissionState;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/getcapacitor/PermissionState;->PROMPT_WITH_RATIONALE:Lcom/getcapacitor/PermissionState;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/getcapacitor/PermissionState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "granted"

    .line 5
    .line 6
    const-string v3, "GRANTED"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/PermissionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    .line 12
    .line 13
    new-instance v0, Lcom/getcapacitor/PermissionState;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "denied"

    .line 17
    .line 18
    const-string v3, "DENIED"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/PermissionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/getcapacitor/PermissionState;->DENIED:Lcom/getcapacitor/PermissionState;

    .line 24
    .line 25
    new-instance v0, Lcom/getcapacitor/PermissionState;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "prompt"

    .line 29
    .line 30
    const-string v3, "PROMPT"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/PermissionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/getcapacitor/PermissionState;->PROMPT:Lcom/getcapacitor/PermissionState;

    .line 36
    .line 37
    new-instance v0, Lcom/getcapacitor/PermissionState;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "prompt-with-rationale"

    .line 41
    .line 42
    const-string v3, "PROMPT_WITH_RATIONALE"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/PermissionState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/getcapacitor/PermissionState;->PROMPT_WITH_RATIONALE:Lcom/getcapacitor/PermissionState;

    .line 48
    .line 49
    invoke-static {}, Lcom/getcapacitor/PermissionState;->$values()[Lcom/getcapacitor/PermissionState;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/getcapacitor/PermissionState;->$VALUES:[Lcom/getcapacitor/PermissionState;

    .line 54
    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/getcapacitor/PermissionState;->state:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static byState(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;
    .registers 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 v0, 0x2d

    .line 8
    .line 9
    const/16 v1, 0x5f

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/getcapacitor/PermissionState;->valueOf(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;
    .registers 2

    .line 1
    const-class v0, Lcom/getcapacitor/PermissionState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/getcapacitor/PermissionState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/getcapacitor/PermissionState;
    .registers 1

    .line 1
    sget-object v0, Lcom/getcapacitor/PermissionState;->$VALUES:[Lcom/getcapacitor/PermissionState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/getcapacitor/PermissionState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/getcapacitor/PermissionState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/PermissionState;->state:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
