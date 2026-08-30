###### Class n0.a (n0.a)
.class public abstract Ln0/a;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/database/Cursor;

.field public d:I

.field public e:Lcom/google/android/gms/internal/measurement/r4;

.field public f:Lm/u1;

.field public g:Ln0/b;


# virtual methods
.method public abstract a(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method public b(Landroid/database/Cursor;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ln0/a;->c:Landroid/database/Cursor;

    .line 2
    .line 3
    if-ne p1, v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_40

    .line 7
    :cond_6
    if-eqz v0, :cond_16

    .line 8
    .line 9
    iget-object v1, p0, Ln0/a;->e:Lcom/google/android/gms/internal/measurement/r4;

    .line 10
    .line 11
    if-eqz v1, :cond_f

    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    iget-object v1, p0, Ln0/a;->f:Lm/u1;

    .line 17
    .line 18
    if-eqz v1, :cond_16

    .line 19
    .line 20
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 21
    .line 22
    .line 23
    :cond_16
    iput-object p1, p0, Ln0/a;->c:Landroid/database/Cursor;

    .line 24
    .line 25
    if-eqz p1, :cond_37

    .line 26
    .line 27
    iget-object v1, p0, Ln0/a;->e:Lcom/google/android/gms/internal/measurement/r4;

    .line 28
    .line 29
    if-eqz v1, :cond_21

    .line 30
    .line 31
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 32
    .line 33
    .line 34
    :cond_21
    iget-object v1, p0, Ln0/a;->f:Lm/u1;

    .line 35
    .line 36
    if-eqz v1, :cond_28

    .line 37
    .line 38
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 39
    .line 40
    .line 41
    :cond_28
    const-string v1, "_id"

    .line 42
    .line 43
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Ln0/a;->d:I

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Ln0/a;->a:Z

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 53
    .line 54
    .line 55
    goto :goto_40

    .line 56
    :cond_37
    const/4 p1, -0x1

    .line 57
    iput p1, p0, Ln0/a;->d:I

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Ln0/a;->a:Z

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 63
    .line 64
    .line 65
    :goto_40
    if-eqz v0, :cond_45

    .line 66
    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 68
    .line 69
    .line 70
    :cond_45
    return-void
.end method

.method public abstract c(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method public abstract d(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getCount()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Ln0/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Ln0/a;->c:Landroid/database/Cursor;

    .line 6
    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget-boolean v0, p0, Ln0/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1d

    .line 4
    .line 5
    iget-object v0, p0, Ln0/a;->c:Landroid/database/Cursor;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 8
    .line 9
    .line 10
    if-nez p2, :cond_17

    .line 11
    .line 12
    move-object p1, p0

    .line 13
    check-cast p1, Lm/u2;

    .line 14
    .line 15
    iget p2, p1, Lm/u2;->i:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iget-object p1, p1, Lm/u2;->j:Landroid/view/LayoutInflater;

    .line 19
    .line 20
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    :cond_17
    iget-object p1, p0, Ln0/a;->c:Landroid/database/Cursor;

    .line 25
    .line 26
    invoke-virtual {p0, p2, p1}, Ln0/a;->a(Landroid/view/View;Landroid/database/Cursor;)V

    .line 27
    .line 28
    .line 29
    return-object p2

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public final getFilter()Landroid/widget/Filter;
    .registers 2

    .line 1
    iget-object v0, p0, Ln0/a;->g:Ln0/b;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    new-instance v0, Ln0/b;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/widget/Filter;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p0, v0, Ln0/b;->a:Ln0/a;

    .line 11
    .line 12
    iput-object v0, p0, Ln0/a;->g:Ln0/b;

    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Ln0/a;->g:Ln0/b;

    .line 15
    .line 16
    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-boolean v0, p0, Ln0/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Ln0/a;->c:Landroid/database/Cursor;

    .line 6
    .line 7
    if-eqz v0, :cond_e

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Ln0/a;->c:Landroid/database/Cursor;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public final getItemId(I)J
    .registers 5

    .line 1
    iget-boolean v0, p0, Ln0/a;->a:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_19

    .line 6
    .line 7
    iget-object v0, p0, Ln0/a;->c:Landroid/database/Cursor;

    .line 8
    .line 9
    if-eqz v0, :cond_19

    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_19

    .line 16
    .line 17
    iget-object p1, p0, Ln0/a;->c:Landroid/database/Cursor;

    .line 18
    .line 19
    iget v0, p0, Ln0/a;->d:I

    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0

    .line 26
    :cond_19
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget-boolean v0, p0, Ln0/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_24

    .line 4
    .line 5
    iget-object v0, p0, Ln0/a;->c:Landroid/database/Cursor;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_18

    .line 12
    .line 13
    if-nez p2, :cond_12

    .line 14
    .line 15
    invoke-virtual {p0, p3}, Ln0/a;->d(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_12
    iget-object p1, p0, Ln0/a;->c:Landroid/database/Cursor;

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Ln0/a;->a(Landroid/view/View;Landroid/database/Cursor;)V

    .line 22
    .line 23
    .line 24
    return-object p2

    .line 25
    :cond_18
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string p3, "couldn\'t move cursor to position "

    .line 28
    .line 29
    invoke-static {p1, p3}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p2

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p2, "this should only be called when the cursor is valid"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method
