###### Class x1.e0 (x1.e0)
.class public final enum Lx1/e0;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final enum a:Lx1/e0;

.field public static final enum b:Lx1/e0;

.field public static final enum c:Lx1/e0;

.field public static final enum d:Lx1/e0;

.field public static final enum e:Lx1/e0;

.field public static final enum f:Lx1/e0;

.field public static final synthetic g:[Lx1/e0;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 1
    new-instance v0, Lx1/e0;

    .line 2
    .line 3
    const-string v1, "REQUESTS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lx1/e0;->a:Lx1/e0;

    .line 10
    .line 11
    new-instance v1, Lx1/e0;

    .line 12
    .line 13
    const-string v3, "INCLUDE_ACCESS_TOKENS"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lx1/e0;->b:Lx1/e0;

    .line 20
    .line 21
    new-instance v3, Lx1/e0;

    .line 22
    .line 23
    const-string v5, "INCLUDE_RAW_RESPONSES"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lx1/e0;->c:Lx1/e0;

    .line 30
    .line 31
    new-instance v5, Lx1/e0;

    .line 32
    .line 33
    const-string v7, "CACHE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    new-instance v7, Lx1/e0;

    .line 40
    .line 41
    const-string v9, "APP_EVENTS"

    .line 42
    .line 43
    const/4 v10, 0x4

    .line 44
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v7, Lx1/e0;->d:Lx1/e0;

    .line 48
    .line 49
    new-instance v9, Lx1/e0;

    .line 50
    .line 51
    const-string v11, "DEVELOPER_ERRORS"

    .line 52
    .line 53
    const/4 v12, 0x5

    .line 54
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    sput-object v9, Lx1/e0;->e:Lx1/e0;

    .line 58
    .line 59
    new-instance v11, Lx1/e0;

    .line 60
    .line 61
    const-string v13, "GRAPH_API_DEBUG_WARNING"

    .line 62
    .line 63
    const/4 v14, 0x6

    .line 64
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v11, Lx1/e0;->f:Lx1/e0;

    .line 68
    .line 69
    new-instance v13, Lx1/e0;

    .line 70
    .line 71
    const-string v15, "GRAPH_API_DEBUG_INFO"

    .line 72
    .line 73
    move/from16 v16, v2

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    const/16 v15, 0x8

    .line 80
    .line 81
    new-array v15, v15, [Lx1/e0;

    .line 82
    .line 83
    aput-object v0, v15, v16

    .line 84
    .line 85
    aput-object v1, v15, v4

    .line 86
    .line 87
    aput-object v3, v15, v6

    .line 88
    .line 89
    aput-object v5, v15, v8

    .line 90
    .line 91
    aput-object v7, v15, v10

    .line 92
    .line 93
    aput-object v9, v15, v12

    .line 94
    .line 95
    aput-object v11, v15, v14

    .line 96
    .line 97
    aput-object v13, v15, v2

    .line 98
    .line 99
    sput-object v15, Lx1/e0;->g:[Lx1/e0;

    .line 100
    .line 101
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx1/e0;
    .registers 2

    .line 1
    const-class v0, Lx1/e0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lx1/e0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lx1/e0;
    .registers 1

    .line 1
    sget-object v0, Lx1/e0;->g:[Lx1/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lx1/e0;

    .line 8
    .line 9
    return-object v0
.end method
