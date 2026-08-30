###### Class b2.b (b2.b)
.class public final Lb2/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Lc2/a;

.field public b:Ljava/lang/ref/WeakReference;

.field public c:Ljava/lang/ref/WeakReference;

.field public d:Landroid/widget/AdapterView$OnItemClickListener;

.field public e:Z


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lb2/b;->d:Landroid/widget/AdapterView$OnItemClickListener;

    .line 7
    .line 8
    if-eqz v1, :cond_10

    .line 9
    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move v4, p3

    .line 13
    move-wide v5, p4

    .line 14
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 15
    .line 16
    .line 17
    :cond_10
    iget-object p1, p0, Lb2/b;->c:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/view/View;

    .line 24
    .line 25
    iget-object p2, p0, Lb2/b;->b:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Landroid/widget/AdapterView;

    .line 32
    .line 33
    if-eqz p1, :cond_29

    .line 34
    .line 35
    if-eqz p2, :cond_29

    .line 36
    .line 37
    iget-object p3, p0, Lb2/b;->a:Lc2/a;

    .line 38
    .line 39
    invoke-static {p3, p1, p2}, Lb2/c;->c(Lc2/a;Landroid/view/View;Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_29
    return-void
.end method
