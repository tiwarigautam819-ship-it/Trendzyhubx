###### Class f3.d (f3.d)
.class public final Lf3/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lz4/d;


# static fields
.field public static final a:Lf3/d;

.field public static final b:Lz4/c;

.field public static final c:Lz4/c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lf3/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf3/d;->a:Lf3/d;

    .line 7
    .line 8
    new-instance v0, Lc5/a;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lc5/a;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-class v1, Lc5/e;

    .line 15
    .line 16
    invoke-static {v1, v0}, La1/a;->k(Ljava/lang/Class;Lc5/a;)Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lz4/c;

    .line 21
    .line 22
    invoke-static {v0}, La1/a;->l(Ljava/util/HashMap;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v3, "logSource"

    .line 27
    .line 28
    invoke-direct {v2, v3, v0}, Lz4/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lf3/d;->b:Lz4/c;

    .line 32
    .line 33
    new-instance v0, Lc5/a;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {v0, v2}, Lc5/a;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, La1/a;->k(Ljava/lang/Class;Lc5/a;)Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lz4/c;

    .line 44
    .line 45
    invoke-static {v0}, La1/a;->l(Ljava/util/HashMap;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "logEventDropped"

    .line 50
    .line 51
    invoke-direct {v1, v2, v0}, Lz4/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    sput-object v1, Lf3/d;->c:Lz4/c;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Li3/e;

    .line 2
    .line 3
    check-cast p2, Lz4/e;

    .line 4
    .line 5
    sget-object v0, Lf3/d;->b:Lz4/c;

    .line 6
    .line 7
    iget-object v1, p1, Li3/e;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p2, v0, v1}, Lz4/e;->e(Lz4/c;Ljava/lang/Object;)Lz4/e;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lf3/d;->c:Lz4/c;

    .line 13
    .line 14
    iget-object p1, p1, Li3/e;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p2, v0, p1}, Lz4/e;->e(Lz4/c;Ljava/lang/Object;)Lz4/e;

    .line 17
    .line 18
    .line 19
    return-void
.end method
