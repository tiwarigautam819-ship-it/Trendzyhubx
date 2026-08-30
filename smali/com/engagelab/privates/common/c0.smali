###### Class com.engagelab.privates.common.c0 (com.engagelab.privates.common.c0)
.class public Lcom/engagelab/privates/common/c0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/c0$b;
    }
.end annotation


# instance fields
.field public a:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/engagelab/privates/common/c0;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_a

    .line 4
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/engagelab/privates/common/c0;->a:Landroid/os/CountDownTimer;

    :cond_a
    return-void
.end method

.method public a(Lcom/engagelab/privates/common/c0$b;JJ)V
    .registers 13

    .line 1
    new-instance v0, Lcom/engagelab/privates/common/c0$a;

    move-object v1, p0

    move-object v6, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/engagelab/privates/common/c0$a;-><init>(Lcom/engagelab/privates/common/c0;JJLcom/engagelab/privates/common/c0$b;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, v1, Lcom/engagelab/privates/common/c0;->a:Landroid/os/CountDownTimer;

    return-void
.end method

###### Class com.engagelab.privates.common.c0.a (com.engagelab.privates.common.c0$a)
.class public Lcom/engagelab/privates/common/c0$a;
.super Landroid/os/CountDownTimer;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/c0;->a(Lcom/engagelab/privates/common/c0$b;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/c0$b;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/c0;JJLcom/engagelab/privates/common/c0$b;)V
    .registers 7

    .line 1
    iput-object p6, p0, Lcom/engagelab/privates/common/c0$a;->a:Lcom/engagelab/privates/common/c0$b;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/c0$a;->a:Lcom/engagelab/privates/common/c0$b;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/engagelab/privates/common/c0$b;->a()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public onTick(J)V
    .registers 3

    .line 1
    return-void
.end method

###### Class com.engagelab.privates.common.c0.b (com.engagelab.privates.common.c0$b)
.class public interface abstract Lcom/engagelab/privates/common/c0$b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method
