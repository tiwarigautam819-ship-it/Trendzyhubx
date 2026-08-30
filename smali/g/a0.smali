###### Class g.a0 (g.a0)
.class public final Lg/a0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final a:Landroid/view/Window$Callback;

.field public b:Lg/l0;

.field public c:Z

.field public d:Z

.field public e:Z

.field public final synthetic f:Lg/f0;


# direct methods
.method public constructor <init>(Lg/f0;Landroid/view/Window$Callback;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg/a0;->f:Lg/f0;

    .line 5
    .line 6
    if-eqz p2, :cond_a

    .line 7
    .line 8
    iput-object p2, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Window callback may not be null"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    iput-boolean v0, p0, Lg/a0;->c:Z

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_a

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lg/a0;->c:Z

    .line 9
    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception p1

    .line 12
    iput-boolean v1, p0, Lg/a0;->c:Z

    .line 13
    .line 14
    throw p1
.end method

.method public final b(ILandroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c(ILandroid/view/Menu;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lk/m;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Lg/a0;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    iget-object v0, p0, Lg/a0;->f:Lg/f0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lg/f0;->v(Landroid/view/KeyEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1c

    .line 19
    .line 20
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1a

    .line 25
    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_4c

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lg/a0;->f:Lg/f0;

    .line 15
    .line 16
    invoke-virtual {v2}, Lg/f0;->C()V

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Lg/f0;->w:Lg/b;

    .line 20
    .line 21
    if-eqz v3, :cond_1d

    .line 22
    .line 23
    invoke-virtual {v3, v0, p1}, Lg/b;->i(ILandroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 28
    .line 29
    goto :goto_4c

    .line 30
    :cond_1d
    iget-object v0, v2, Lg/f0;->U:Lg/e0;

    .line 31
    .line 32
    if-eqz v0, :cond_32

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2, v0, v3, p1}, Lg/f0;->H(Lg/e0;ILandroid/view/KeyEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_32

    .line 43
    .line 44
    iget-object p1, v2, Lg/f0;->U:Lg/e0;

    .line 45
    .line 46
    if-eqz p1, :cond_4c

    .line 47
    .line 48
    iput-boolean v1, p1, Lg/e0;->l:Z

    .line 49
    .line 50
    return v1

    .line 51
    :cond_32
    iget-object v0, v2, Lg/f0;->U:Lg/e0;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    if-nez v0, :cond_4b

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lg/f0;->B(I)Lg/e0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v0, p1}, Lg/f0;->I(Lg/e0;Landroid/view/KeyEvent;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v2, v0, v4, p1}, Lg/f0;->H(Lg/e0;ILandroid/view/KeyEvent;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput-boolean v3, v0, Lg/e0;->k:Z

    .line 72
    .line 73
    if-eqz p1, :cond_4b

    .line 74
    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    return v3

    .line 77
    :cond_4c
    :goto_4c
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onContentChanged()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lg/a0;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    .line 1
    if-nez p1, :cond_8

    .line 2
    .line 3
    instance-of v0, p2, Ll/n;

    .line 4
    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .registers 4

    .line 1
    iget-object v0, p0, Lg/a0;->b:Lg/l0;

    .line 2
    .line 3
    if-eqz v0, :cond_1a

    .line 4
    .line 5
    if-nez p1, :cond_16

    .line 6
    .line 7
    new-instance v1, Landroid/view/View;

    .line 8
    .line 9
    iget-object v0, v0, Lg/l0;->a:Lg/n0;

    .line 10
    .line 11
    iget-object v0, v0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v1, 0x0

    .line 24
    :goto_17
    if-eqz v1, :cond_1a

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1a
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/a0;->b(ILandroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x6c

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Lg/a0;->f:Lg/f0;

    .line 8
    .line 9
    if-ne p1, p2, :cond_15

    .line 10
    .line 11
    invoke-virtual {v1}, Lg/f0;->C()V

    .line 12
    .line 13
    .line 14
    iget-object p1, v1, Lg/f0;->w:Lg/b;

    .line 15
    .line 16
    if-eqz p1, :cond_18

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lg/b;->c(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_18

    .line 22
    :cond_15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    :cond_18
    :goto_18
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lg/a0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0, p1, p2}, Lg/a0;->c(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/16 p2, 0x6c

    .line 15
    .line 16
    iget-object v0, p0, Lg/a0;->f:Lg/f0;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-ne p1, p2, :cond_1f

    .line 20
    .line 21
    invoke-virtual {v0}, Lg/f0;->C()V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lg/f0;->w:Lg/b;

    .line 25
    .line 26
    if-eqz p1, :cond_2c

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lg/b;->c(Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    if-nez p1, :cond_2c

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lg/f0;->B(I)Lg/e0;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-boolean p2, p1, Lg/e0;->m:Z

    .line 39
    .line 40
    if-eqz p2, :cond_2c

    .line 41
    .line 42
    invoke-virtual {v0, p1, v1}, Lg/f0;->t(Lg/e0;Z)V

    .line 43
    .line 44
    .line 45
    :cond_2c
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lk/n;->a(Landroid/view/Window$Callback;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 9

    .line 1
    instance-of v0, p3, Ll/n;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Ll/n;

    .line 7
    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_f

    .line 12
    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    return v1

    .line 16
    :cond_f
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_14

    .line 18
    .line 19
    iput-boolean v2, v0, Ll/n;->x:Z

    .line 20
    .line 21
    :cond_14
    iget-object v3, p0, Lg/a0;->b:Lg/l0;

    .line 22
    .line 23
    if-eqz v3, :cond_26

    .line 24
    .line 25
    if-nez p1, :cond_26

    .line 26
    .line 27
    iget-object v3, v3, Lg/l0;->a:Lg/n0;

    .line 28
    .line 29
    iget-boolean v4, v3, Lg/n0;->d:Z

    .line 30
    .line 31
    if-nez v4, :cond_26

    .line 32
    .line 33
    iget-object v4, v3, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 34
    .line 35
    iput-boolean v2, v4, Landroidx/appcompat/widget/i;->l:Z

    .line 36
    .line 37
    iput-boolean v2, v3, Lg/n0;->d:Z

    .line 38
    .line 39
    :cond_26
    iget-object v2, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 40
    .line 41
    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz v0, :cond_30

    .line 46
    .line 47
    iput-boolean v1, v0, Ll/n;->x:Z

    .line 48
    .line 49
    :cond_30
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lg/a0;->f:Lg/f0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lg/f0;->B(I)Lg/e0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lg/e0;->h:Ll/n;

    .line 9
    .line 10
    if-eqz v0, :cond_f

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p3}, Lg/a0;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {p0, p1, p2, p3}, Lg/a0;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onSearchRequested()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lk/l;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 2

    .line 12
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5

    if-eqz p2, :cond_9

    .line 1
    iget-object v0, p0, Lg/a0;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lk/l;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 2
    :cond_9
    new-instance p2, Lcom/google/firebase/messaging/y;

    iget-object v0, p0, Lg/a0;->f:Lg/f0;

    iget-object v1, v0, Lg/f0;->k:Landroid/content/Context;

    .line 3
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p2, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 5
    iput-object p1, p2, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p2, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 7
    new-instance p1, Ls/j;

    const/4 v1, 0x0

    .line 8
    invoke-direct {p1, v1}, Ls/j;-><init>(I)V

    .line 9
    iput-object p1, p2, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, p2}, Lg/f0;->n(Lk/a;)Lk/b;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/firebase/messaging/y;->q(Lk/b;)Lk/f;

    move-result-object p1

    return-object p1

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method
