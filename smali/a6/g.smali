###### Class a6.g (a6.g)
.class public abstract La6/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:La6/e;


# instance fields
.field public final a:La6/g;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, La6/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v2}, La6/e;-><init>(La6/g;II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, La6/g;->b:La6/e;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(La6/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La6/g;->a:La6/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract a(Lb6/a;[B)V
.end method
