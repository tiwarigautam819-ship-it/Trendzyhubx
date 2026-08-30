###### Class e3.c (e3.c)
.class public final Le3/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lz4/d;


# static fields
.field public static final a:Le3/c;

.field public static final b:Lz4/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Le3/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le3/c;->a:Le3/c;

    .line 7
    .line 8
    const-string v0, "logRequest"

    .line 9
    .line 10
    invoke-static {v0}, Lz4/c;->a(Ljava/lang/String;)Lz4/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Le3/c;->b:Lz4/c;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Le3/o;

    .line 2
    .line 3
    check-cast p2, Lz4/e;

    .line 4
    .line 5
    check-cast p1, Le3/i;

    .line 6
    .line 7
    iget-object p1, p1, Le3/i;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    sget-object v0, Le3/c;->b:Lz4/c;

    .line 10
    .line 11
    invoke-interface {p2, v0, p1}, Lz4/e;->e(Lz4/c;Ljava/lang/Object;)Lz4/e;

    .line 12
    .line 13
    .line 14
    return-void
.end method
