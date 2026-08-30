###### Class l1.c (l1.c)
.class public final Ll1/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements LeventTrack/jpush/EngagelabInitManager$TokenListener;


# instance fields
.field public final synthetic a:Lbridges/TomBridge;


# direct methods
.method public constructor <init>(Lbridges/TomBridge;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll1/c;->a:Lbridges/TomBridge;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onToken(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ll1/c;->a:Lbridges/TomBridge;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1, p1}, Lbridges/TomBridge;->f(Lbridges/TomBridge;ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
