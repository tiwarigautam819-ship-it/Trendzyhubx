###### Class l3.c (l3.c)
.class public final enum Ll3/c;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final enum a:Ll3/c;

.field public static final enum b:Ll3/c;

.field public static final enum c:Ll3/c;

.field public static final synthetic d:[Ll3/c;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Ll3/c;

    .line 2
    .line 3
    const-string v1, "NETWORK_UNMETERED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ll3/c;->a:Ll3/c;

    .line 10
    .line 11
    new-instance v1, Ll3/c;

    .line 12
    .line 13
    const-string v3, "DEVICE_IDLE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ll3/c;->b:Ll3/c;

    .line 20
    .line 21
    new-instance v3, Ll3/c;

    .line 22
    .line 23
    const-string v5, "DEVICE_CHARGING"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Ll3/c;->c:Ll3/c;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Ll3/c;

    .line 33
    .line 34
    aput-object v0, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    aput-object v3, v5, v6

    .line 39
    .line 40
    sput-object v5, Ll3/c;->d:[Ll3/c;

    .line 41
    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll3/c;
    .registers 2

    .line 1
    const-class v0, Ll3/c;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ll3/c;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ll3/c;
    .registers 1

    .line 1
    sget-object v0, Ll3/c;->d:[Ll3/c;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ll3/c;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ll3/c;

    .line 8
    .line 9
    return-object v0
.end method
