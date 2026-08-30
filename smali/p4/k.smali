###### Class p4.k (p4.k)
.class public abstract Lp4/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lf3/o;

.field public static final b:Lg/r;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lf3/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lf3/o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp4/k;->a:Lf3/o;

    .line 7
    .line 8
    new-instance v0, Lg/r;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lg/r;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lp4/k;->b:Lg/r;

    .line 15
    .line 16
    return-void
.end method
