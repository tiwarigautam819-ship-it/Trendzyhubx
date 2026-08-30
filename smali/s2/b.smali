###### Class s2.b (s2.b)
.class public final enum Ls2/b;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final enum a:Ls2/b;

.field public static final enum b:Ls2/b;

.field public static final enum c:Ls2/b;

.field public static final enum d:Ls2/b;

.field public static final enum e:Ls2/b;

.field public static final enum f:Ls2/b;

.field public static final synthetic g:[Ls2/b;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Ls2/b;

    .line 2
    .line 3
    const-string v1, "Unknown"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ls2/b;->a:Ls2/b;

    .line 10
    .line 11
    new-instance v1, Ls2/b;

    .line 12
    .line 13
    const-string v3, "Analysis"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ls2/b;->b:Ls2/b;

    .line 20
    .line 21
    new-instance v3, Ls2/b;

    .line 22
    .line 23
    const-string v5, "AnrReport"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Ls2/b;->c:Ls2/b;

    .line 30
    .line 31
    new-instance v5, Ls2/b;

    .line 32
    .line 33
    const-string v7, "CrashReport"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Ls2/b;->d:Ls2/b;

    .line 40
    .line 41
    new-instance v7, Ls2/b;

    .line 42
    .line 43
    const-string v9, "CrashShield"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Ls2/b;->e:Ls2/b;

    .line 50
    .line 51
    new-instance v9, Ls2/b;

    .line 52
    .line 53
    const-string v11, "ThreadCheck"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Ls2/b;->f:Ls2/b;

    .line 60
    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Ls2/b;

    .line 63
    .line 64
    aput-object v0, v11, v2

    .line 65
    .line 66
    aput-object v1, v11, v4

    .line 67
    .line 68
    aput-object v3, v11, v6

    .line 69
    .line 70
    aput-object v5, v11, v8

    .line 71
    .line 72
    aput-object v7, v11, v10

    .line 73
    .line 74
    aput-object v9, v11, v12

    .line 75
    .line 76
    sput-object v11, Ls2/b;->g:[Ls2/b;

    .line 77
    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls2/b;
    .registers 2

    .line 1
    const-class v0, Ls2/b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ls2/b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ls2/b;
    .registers 1

    .line 1
    sget-object v0, Ls2/b;->g:[Ls2/b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ls2/b;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_22

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1f

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_1c

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_19

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq v0, v1, :cond_16

    .line 19
    .line 20
    const-string v0, "Unknown"

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_16
    const-string v0, "ThreadCheck"

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_19
    const-string v0, "CrashShield"

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1c
    const-string v0, "CrashReport"

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1f
    const-string v0, "AnrReport"

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_22
    const-string v0, "Analysis"

    .line 36
    .line 37
    return-object v0
.end method
