###### Class com.getcapacitor.ServerPath (com.getcapacitor.ServerPath)
.class public Lcom/getcapacitor/ServerPath;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/ServerPath$PathType;
    }
.end annotation


# instance fields
.field private final path:Ljava/lang/String;

.field private final type:Lcom/getcapacitor/ServerPath$PathType;


# direct methods
.method public constructor <init>(Lcom/getcapacitor/ServerPath$PathType;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/ServerPath;->type:Lcom/getcapacitor/ServerPath$PathType;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/getcapacitor/ServerPath;->path:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/ServerPath;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lcom/getcapacitor/ServerPath$PathType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/ServerPath;->type:Lcom/getcapacitor/ServerPath$PathType;

    .line 2
    .line 3
    return-object v0
.end method

###### Class com.getcapacitor.ServerPath.PathType (com.getcapacitor.ServerPath$PathType)
.class public final enum Lcom/getcapacitor/ServerPath$PathType;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/ServerPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PathType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/getcapacitor/ServerPath$PathType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/getcapacitor/ServerPath$PathType;

.field public static final enum ASSET_PATH:Lcom/getcapacitor/ServerPath$PathType;

.field public static final enum BASE_PATH:Lcom/getcapacitor/ServerPath$PathType;


# direct methods
.method private static synthetic $values()[Lcom/getcapacitor/ServerPath$PathType;
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/getcapacitor/ServerPath$PathType;

    .line 3
    .line 4
    sget-object v1, Lcom/getcapacitor/ServerPath$PathType;->BASE_PATH:Lcom/getcapacitor/ServerPath$PathType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/getcapacitor/ServerPath$PathType;->ASSET_PATH:Lcom/getcapacitor/ServerPath$PathType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/getcapacitor/ServerPath$PathType;

    .line 2
    .line 3
    const-string v1, "BASE_PATH"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/getcapacitor/ServerPath$PathType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/getcapacitor/ServerPath$PathType;->BASE_PATH:Lcom/getcapacitor/ServerPath$PathType;

    .line 10
    .line 11
    new-instance v0, Lcom/getcapacitor/ServerPath$PathType;

    .line 12
    .line 13
    const-string v1, "ASSET_PATH"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/getcapacitor/ServerPath$PathType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/getcapacitor/ServerPath$PathType;->ASSET_PATH:Lcom/getcapacitor/ServerPath$PathType;

    .line 20
    .line 21
    invoke-static {}, Lcom/getcapacitor/ServerPath$PathType;->$values()[Lcom/getcapacitor/ServerPath$PathType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/getcapacitor/ServerPath$PathType;->$VALUES:[Lcom/getcapacitor/ServerPath$PathType;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/getcapacitor/ServerPath$PathType;
    .registers 2

    .line 1
    const-class v0, Lcom/getcapacitor/ServerPath$PathType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/getcapacitor/ServerPath$PathType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/getcapacitor/ServerPath$PathType;
    .registers 1

    .line 1
    sget-object v0, Lcom/getcapacitor/ServerPath$PathType;->$VALUES:[Lcom/getcapacitor/ServerPath$PathType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/getcapacitor/ServerPath$PathType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/getcapacitor/ServerPath$PathType;

    .line 8
    .line 9
    return-object v0
.end method
