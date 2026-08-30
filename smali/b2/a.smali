###### Class b2.a (b2.a)
.class public final Lb2/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Lc2/a;

.field public b:Ljava/lang/ref/WeakReference;

.field public c:Ljava/lang/ref/WeakReference;

.field public d:Landroid/view/View$OnClickListener;

.field public e:Z


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_34

    .line 8
    :cond_7
    :try_start_7
    const-string v0, "view"

    .line 9
    .line 10
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lb2/a;->d:Landroid/view/View$OnClickListener;

    .line 14
    .line 15
    if-eqz v0, :cond_16

    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    goto :goto_16

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    goto :goto_35

    .line 23
    :cond_16
    :goto_16
    iget-object p1, p0, Lb2/a;->c:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/view/View;

    .line 30
    .line 31
    iget-object v0, p0, Lb2/a;->b:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/View;

    .line 38
    .line 39
    if-eqz p1, :cond_34

    .line 40
    .line 41
    if-eqz v0, :cond_34

    .line 42
    .line 43
    iget-object v1, p0, Lb2/a;->a:Lc2/a;

    .line 44
    .line 45
    const-string v2, "null cannot be cast to non-null type com.facebook.appevents.codeless.internal.EventBinding"

    .line 46
    .line 47
    invoke-static {v2, v1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, p1, v0}, Lb2/c;->c(Lc2/a;Landroid/view/View;Landroid/view/View;)V
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_14

    .line 51
    .line 52
    .line 53
    :cond_34
    :goto_34
    return-void

    .line 54
    :goto_35
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
