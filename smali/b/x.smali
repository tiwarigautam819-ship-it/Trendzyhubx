###### Class b.x (b.x)
.class public final Lb/x;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/r;


# static fields
.field public static final b:Lr6/g;


# instance fields
.field public final a:Landroidx/fragment/app/h0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lr6/g;

    .line 2
    .line 3
    sget-object v1, Lb/u;->b:Lb/u;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lr6/g;-><init>(Lc7/a;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lb/x;->b:Lr6/g;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/h0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb/x;->a:Landroidx/fragment/app/h0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .registers 5

    .line 1
    sget-object p1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 2
    .line 3
    if-eq p2, p1, :cond_5

    .line 4
    .line 5
    goto :goto_3e

    .line 6
    :cond_5
    iget-object p1, p0, Lb/x;->a:Landroidx/fragment/app/h0;

    .line 7
    .line 8
    const-string p2, "input_method"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    .line 15
    .line 16
    invoke-static {p2, p1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 20
    .line 21
    sget-object p2, Lb/x;->b:Lr6/g;

    .line 22
    .line 23
    invoke-virtual {p2}, Lr6/g;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lb/t;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lb/t;->b(Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_23

    .line 34
    .line 35
    goto :goto_3e

    .line 36
    :cond_23
    monitor-enter v0

    .line 37
    :try_start_24
    invoke-virtual {p2, p1}, Lb/t;->c(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_3f

    .line 41
    if-nez v1, :cond_2c

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 46
    .line 47
    .line 48
    move-result v1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_3f

    .line 49
    if-eqz v1, :cond_34

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :cond_34
    :try_start_34
    invoke-virtual {p2, p1}, Lb/t;->a(Landroid/view/inputmethod/InputMethodManager;)Z

    .line 54
    .line 55
    .line 56
    move-result p2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_3f

    .line 57
    monitor-exit v0

    .line 58
    if-eqz p2, :cond_3e

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    .line 61
    .line 62
    .line 63
    :cond_3e
    :goto_3e
    return-void

    .line 64
    :catchall_3f
    move-exception p1

    .line 65
    monitor-exit v0

    .line 66
    throw p1
.end method
