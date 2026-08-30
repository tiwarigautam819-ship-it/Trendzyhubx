###### Class com.getcapacitor.plugin.util.MimeType (com.getcapacitor.plugin.util.MimeType)
.class final enum Lcom/getcapacitor/plugin/util/MimeType;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/getcapacitor/plugin/util/MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/getcapacitor/plugin/util/MimeType;

.field public static final enum APPLICATION_JSON:Lcom/getcapacitor/plugin/util/MimeType;

.field public static final enum APPLICATION_VND_API_JSON:Lcom/getcapacitor/plugin/util/MimeType;

.field public static final enum TEXT_HTML:Lcom/getcapacitor/plugin/util/MimeType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/getcapacitor/plugin/util/MimeType;
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/getcapacitor/plugin/util/MimeType;

    .line 3
    .line 4
    sget-object v1, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_VND_API_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/getcapacitor/plugin/util/MimeType;->TEXT_HTML:Lcom/getcapacitor/plugin/util/MimeType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/getcapacitor/plugin/util/MimeType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "application/json"

    .line 5
    .line 6
    const-string v3, "APPLICATION_JSON"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/util/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    .line 12
    .line 13
    new-instance v0, Lcom/getcapacitor/plugin/util/MimeType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "application/vnd.api+json"

    .line 17
    .line 18
    const-string v3, "APPLICATION_VND_API_JSON"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/util/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_VND_API_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    .line 24
    .line 25
    new-instance v0, Lcom/getcapacitor/plugin/util/MimeType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "text/html"

    .line 29
    .line 30
    const-string v3, "TEXT_HTML"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/util/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/getcapacitor/plugin/util/MimeType;->TEXT_HTML:Lcom/getcapacitor/plugin/util/MimeType;

    .line 36
    .line 37
    invoke-static {}, Lcom/getcapacitor/plugin/util/MimeType;->$values()[Lcom/getcapacitor/plugin/util/MimeType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/getcapacitor/plugin/util/MimeType;->$VALUES:[Lcom/getcapacitor/plugin/util/MimeType;

    .line 42
    .line 43
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
    iput-object p3, p0, Lcom/getcapacitor/plugin/util/MimeType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/MimeType;
    .registers 2

    .line 1
    const-class v0, Lcom/getcapacitor/plugin/util/MimeType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/getcapacitor/plugin/util/MimeType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/getcapacitor/plugin/util/MimeType;
    .registers 1

    .line 1
    sget-object v0, Lcom/getcapacitor/plugin/util/MimeType;->$VALUES:[Lcom/getcapacitor/plugin/util/MimeType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/getcapacitor/plugin/util/MimeType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/getcapacitor/plugin/util/MimeType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/MimeType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
