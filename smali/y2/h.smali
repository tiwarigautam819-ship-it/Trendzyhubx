###### Class y2.h (y2.h)
.class public final Ly2/h;
.super Ly2/t;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly2/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lx1/w;

.field public static e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lx1/w;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lx1/w;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ly2/h;->d:Lx1/w;

    .line 8
    .line 9
    new-instance v0, Ln4/e;

    .line 10
    .line 11
    const/16 v1, 0x11

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Ly2/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ly2/t;-><init>(Landroid/os/Parcel;)V

    .line 2
    const-string p1, "device_auth"

    iput-object p1, p0, Ly2/h;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ly2/o;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ly2/t;->b:Ly2/o;

    .line 5
    const-string p1, "device_auth"

    iput-object p1, p0, Ly2/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Ly2/m;)I
    .registers 5

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_27

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_16

    .line 21
    .line 22
    goto :goto_27

    .line 23
    :cond_16
    new-instance v1, Ly2/g;

    .line 24
    .line 25
    invoke-direct {v1}, Ly2/g;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/h0;->getSupportFragmentManager()Landroidx/fragment/app/y0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "login_with_facebook"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/t;->L(Landroidx/fragment/app/y0;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ly2/g;->U(Ly2/m;)V

    .line 38
    .line 39
    .line 40
    :cond_27
    :goto_27
    const/4 p1, 0x1

    .line 41
    return p1
.end method
