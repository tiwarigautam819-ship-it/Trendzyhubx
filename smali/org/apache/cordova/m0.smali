###### Class org.apache.cordova.m0 (org.apache.cordova.m0)
.class public final Lorg/apache/cordova/m0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final g:[Ljava/lang/String;


# instance fields
.field public final a:I

.field public final b:I

.field public c:Z

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    const-string v8, "JSON error"

    .line 2
    .line 3
    const-string v9, "Error"

    .line 4
    .line 5
    const-string v0, "No result"

    .line 6
    .line 7
    const-string v1, "OK"

    .line 8
    .line 9
    const-string v2, "Class not found"

    .line 10
    .line 11
    const-string v3, "Illegal access"

    .line 12
    .line 13
    const-string v4, "Instantiation error"

    .line 14
    .line 15
    const-string v5, "Malformed url"

    .line 16
    .line 17
    const-string v6, "IO error"

    .line 18
    .line 19
    const-string v7, "Invalid action"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lorg/apache/cordova/m0;->g:[Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 1
    sget-object v0, Lorg/apache/cordova/m0;->g:[Ljava/lang/String;

    invoke-static {p1}, Landroidx/fragment/app/m1;->e(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/m0;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lorg/apache/cordova/m0;->c:Z

    .line 19
    invoke-static {p1}, Landroidx/fragment/app/m1;->e(I)I

    move-result p1

    iput p1, p0, Lorg/apache/cordova/m0;->a:I

    const/4 p1, 0x3

    .line 20
    iput p1, p0, Lorg/apache/cordova/m0;->b:I

    .line 21
    const-string p1, ""

    .line 22
    invoke-static {p2, p1}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/apache/cordova/m0;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/apache/cordova/m0;->c:Z

    .line 4
    invoke-static {p1}, Landroidx/fragment/app/m1;->e(I)I

    move-result p1

    iput p1, p0, Lorg/apache/cordova/m0;->a:I

    if-nez p2, :cond_10

    const/4 p1, 0x5

    goto :goto_11

    :cond_10
    const/4 p1, 0x1

    .line 5
    :goto_11
    iput p1, p0, Lorg/apache/cordova/m0;->b:I

    .line 6
    iput-object p2, p0, Lorg/apache/cordova/m0;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/apache/cordova/m0;->c:Z

    const/4 v0, 0x2

    .line 35
    invoke-static {v0}, Landroidx/fragment/app/m1;->e(I)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/m0;->a:I

    const/16 v0, 0x8

    .line 36
    iput v0, p0, Lorg/apache/cordova/m0;->b:I

    .line 37
    iput-object p1, p0, Lorg/apache/cordova/m0;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/apache/cordova/m0;->c:Z

    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/m1;->e(I)I

    move-result v1

    iput v1, p0, Lorg/apache/cordova/m0;->a:I

    .line 10
    iput v0, p0, Lorg/apache/cordova/m0;->b:I

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/m0;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;I)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/apache/cordova/m0;->c:Z

    .line 14
    invoke-static {p2}, Landroidx/fragment/app/m1;->e(I)I

    move-result p2

    iput p2, p0, Lorg/apache/cordova/m0;->a:I

    const/4 p2, 0x2

    .line 15
    iput p2, p0, Lorg/apache/cordova/m0;->b:I

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/m0;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lorg/apache/cordova/m0;->c:Z

    const/4 v0, 0x2

    .line 30
    invoke-static {v0}, Landroidx/fragment/app/m1;->e(I)I

    move-result v1

    iput v1, p0, Lorg/apache/cordova/m0;->a:I

    const/4 v1, 0x6

    .line 31
    iput v1, p0, Lorg/apache/cordova/m0;->b:I

    .line 32
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/m0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/m0;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/cordova/m0;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/apache/cordova/m0;->e:Ljava/lang/String;

    .line 12
    .line 13
    :cond_c
    iget-object v0, p0, Lorg/apache/cordova/m0;->e:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method
