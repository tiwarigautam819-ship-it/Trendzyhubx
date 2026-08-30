###### Class q5.w (q5.w)
.class public abstract enum Lq5/w;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final enum a:Lq5/s;

.field public static final enum b:Lq5/t;

.field public static final synthetic c:[Lq5/w;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lq5/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lq5/s;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq5/w;->a:Lq5/s;

    .line 7
    .line 8
    new-instance v1, Lq5/t;

    .line 9
    .line 10
    invoke-direct {v1}, Lq5/t;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lq5/w;->b:Lq5/t;

    .line 14
    .line 15
    new-instance v2, Lq5/u;

    .line 16
    .line 17
    invoke-direct {v2}, Lq5/u;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lq5/v;

    .line 21
    .line 22
    invoke-direct {v3}, Lq5/v;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    new-array v4, v4, [Lq5/w;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v0, v4, v5

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object v1, v4, v0

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    aput-object v2, v4, v0

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    aput-object v3, v4, v0

    .line 39
    .line 40
    sput-object v4, Lq5/w;->c:[Lq5/w;

    .line 41
    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq5/w;
    .registers 2

    .line 1
    const-class v0, Lq5/w;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq5/w;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lq5/w;
    .registers 1

    .line 1
    sget-object v0, Lq5/w;->c:[Lq5/w;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lq5/w;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lq5/w;

    .line 8
    .line 9
    return-object v0
.end method

###### Class q5.u (q5.u)
.class public final enum Lq5/u;
.super Lq5/w;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    const-string v0, "LONG_OR_DOUBLE"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

###### Class q5.v (q5.v)
.class public final enum Lq5/v;
.super Lq5/w;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    const-string v0, "BIG_DECIMAL"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
