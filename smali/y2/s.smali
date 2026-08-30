###### Class y2.s (y2.s)
.class public abstract Ly2/s;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "create_event"

    .line 2
    .line 3
    const-string v1, "rsvp_event"

    .line 4
    .line 5
    const-string v2, "ads_management"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Li2/t;->p([Ljava/lang/Object;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Ly2/s;->a:Ljava/util/Set;

    .line 16
    .line 17
    const-class v0, Ly2/s;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "LoginManager::class.java.toString()"

    .line 24
    .line 25
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
