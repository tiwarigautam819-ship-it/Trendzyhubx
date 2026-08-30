###### Class q2.k (q2.k)
.class public final Lq2/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final d:Lo3/a;

.field public static e:Lq2/k;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lo3/a;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lo3/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lq2/k;->d:Lo3/a;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq2/k;->a:Ljava/util/Map;

    .line 5
    .line 6
    iput-object p2, p0, Lq2/k;->b:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p3, p0, Lq2/k;->c:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method
