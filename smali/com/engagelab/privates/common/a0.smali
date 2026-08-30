###### Class com.engagelab.privates.common.a0 (com.engagelab.privates.common.a0)
.class public Lcom/engagelab/privates/common/a0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/engagelab/privates/common/a0;->a:Z

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/a0;->b:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .registers 7

    .line 24
    const-string v0, "inApp getCurrentActivity from ActivityUtil:"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/engagelab/privates/push/utils/ActivityUtil;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_87

    if-eqz v2, :cond_1b

    const-string p0, "InAppWinManager"

    .line 25
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1b
    if-eqz p0, :cond_87

    const-string v0, "android.app.ActivityThread"

    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_87

    const-string v2, "currentActivityThread"

    .line 27
    :try_start_25
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mActivities"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_40

    return-object v1

    .line 31
    :cond_40
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "paused"

    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 34
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 35
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    const-string v0, "activity"

    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_77

    return-object v1

    .line 39
    :cond_77
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_83
    .catchall {:try_start_25 .. :try_end_83} :catchall_87

    if-nez p0, :cond_86

    return-object v1

    :cond_86
    return-object v0

    :catchall_87
    :cond_87
    return-object v1
.end method

.method public static b(Landroid/content/Context;)I
    .registers 6

    const-string v0, "InAppWinManager"

    if-eqz p0, :cond_26

    .line 2
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 4
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1b

    goto :goto_28

    :catchall_1b
    move-exception p0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get status bar height error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_26
    const/16 p0, 0x30

    .line 7
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status bar height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/engagelab/privates/common/d0;)Landroid/view/WindowManager$LayoutParams;
    .registers 11

    if-eqz p2, :cond_41

    if-eqz p1, :cond_41

    .line 59
    :try_start_4
    invoke-virtual {p2}, Lcom/engagelab/privates/common/d0;->e()I

    move-result v0

    const v1, 0x20028

    or-int v6, v0, v1

    .line 60
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 61
    invoke-virtual {p2}, Lcom/engagelab/privates/common/d0;->g()I

    move-result v3

    .line 62
    invoke-virtual {p2}, Lcom/engagelab/privates/common/d0;->f()I

    move-result v4

    const/4 v7, -0x3

    const/16 v5, 0x3eb

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v0, 0x0

    .line 63
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 64
    invoke-static {p1}, Lcom/engagelab/privates/common/a0;->b(Landroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 65
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 66
    invoke-virtual {p2}, Lcom/engagelab/privates/common/d0;->d()I

    move-result p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 67
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_33

    return-object v2

    :catchall_33
    move-exception v0

    move-object p1, v0

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[getLayoutParams] error."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "InAppWinManager"

    .line 69
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_41
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/engagelab/privates/common/f0;)V
    .registers 5

    const-string v0, "InAppWinManager"

    if-eqz p2, :cond_39

    if-nez p1, :cond_7

    goto :goto_39

    .line 46
    :cond_7
    :try_start_7
    invoke-virtual {p2}, Lcom/engagelab/privates/common/f0;->d()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 47
    iget-object v1, p0, Lcom/engagelab/privates/common/a0;->c:Landroid/view/WindowManager;

    if-eqz v1, :cond_27

    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/a0;->a(Lcom/engagelab/privates/common/f0;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 48
    iget-object v1, p0, Lcom/engagelab/privates/common/a0;->c:Landroid/view/WindowManager;

    invoke-interface {v1, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/engagelab/privates/common/a0;->a:Z

    const-string p1, "[destroy] - window manager removeViewImmediate view succeed."

    .line 50
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :catchall_25
    move-exception p1

    goto :goto_2f

    .line 51
    :cond_27
    :goto_27
    invoke-virtual {p2}, Lcom/engagelab/privates/common/f0;->h()V

    :cond_2a
    const-string p1, ""

    .line 52
    iput-object p1, p0, Lcom/engagelab/privates/common/a0;->b:Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_25

    return-void

    .line 53
    :goto_2f
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "  inapp destroy failed, "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/common/f0;)Z
    .registers 11

    const-string v0, "InAppWinManager"

    const-string v1, "mWindowManager is null, getCurrentActivity activity="

    const/4 v2, 0x0

    .line 1
    :try_start_5
    iput-object p2, p0, Lcom/engagelab/privates/common/a0;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {p3}, Lcom/engagelab/privates/common/f0;->e()Lcom/engagelab/privates/common/d0;

    move-result-object v3

    .line 3
    invoke-virtual {p3}, Lcom/engagelab/privates/common/f0;->d()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_19

    const-string p1, "  inapp show failed, wbView is null"

    .line 4
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catchall_17
    move-exception p1

    goto :goto_6f

    .line 5
    :cond_19
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/Utils;->getWindowManagerForActivity(Ljava/lang/String;)Landroid/view/WindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/engagelab/privates/common/a0;->c:Landroid/view/WindowManager;

    if-nez v5, :cond_4a

    .line 6
    invoke-static {p1}, Lcom/engagelab/privates/common/a0;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v5

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_4a

    .line 8
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 9
    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    iput-object p2, p0, Lcom/engagelab/privates/common/a0;->c:Landroid/view/WindowManager;

    .line 10
    :cond_4a
    iget-object p2, p0, Lcom/engagelab/privates/common/a0;->c:Landroid/view/WindowManager;

    if-nez p2, :cond_54

    const-string p1, "  inapp show failed, wm is null"

    .line 11
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 12
    :cond_54
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/a0;->a(Landroid/content/Context;Lcom/engagelab/privates/common/d0;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_60

    const-string p1, "  inapp show failed, layout param is null"

    .line 13
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 14
    :cond_60
    iget-object v1, p0, Lcom/engagelab/privates/common/a0;->c:Landroid/view/WindowManager;

    invoke-interface {v1, v4, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p3}, Lcom/engagelab/privates/common/f0;->i()V

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/engagelab/privates/common/a0;->a:Z

    .line 17
    invoke-static {p1}, Lcom/engagelab/privates/common/u;->h(Landroid/content/Context;)V
    :try_end_6e
    .catchall {:try_start_5 .. :try_end_6e} :catchall_17

    return p2

    .line 18
    :goto_6f
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "  inapp show failed, "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2
.end method

.method public a(Lcom/engagelab/privates/common/f0;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 42
    invoke-virtual {p1}, Lcom/engagelab/privates/common/f0;->d()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 43
    invoke-virtual {p1}, Lcom/engagelab/privates/common/f0;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "webview is displayed, status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDisplayed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/engagelab/privates/common/a0;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InAppWinManager"

    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_36

    .line 45
    iget-boolean p1, p0, Lcom/engagelab/privates/common/a0;->a:Z

    if-eqz p1, :cond_36

    const/4 p1, 0x1

    return p1

    :cond_36
    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[checkShouldDestroy], showActivityName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/engagelab/privates/common/a0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", curActivityName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppWinManager"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/engagelab/privates/common/a0;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/engagelab/privates/common/f0;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 1
    invoke-virtual {p1}, Lcom/engagelab/privates/common/f0;->d()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
