###### Class x3.i (x3.i)
.class public final Lx3/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lx3/b;


# instance fields
.field public final synthetic a:Lx3/d;


# direct methods
.method public constructor <init>(Lx3/d;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx3/i;->a:Lx3/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lx3/i;->a:Lx3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
