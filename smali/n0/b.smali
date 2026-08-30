###### Class n0.b (n0.b)
.class public final Ln0/b;
.super Landroid/widget/Filter;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Ln0/a;


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Ln0/b;->a:Ln0/a;

    .line 2
    .line 3
    check-cast p1, Landroid/database/Cursor;

    .line 4
    .line 5
    check-cast v0, Lm/u2;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lm/u2;->c(Landroid/database/Cursor;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 6

    .line 1
    iget-object v0, p0, Ln0/b;->a:Ln0/a;

    .line 2
    .line 3
    check-cast v0, Lm/u2;

    .line 4
    .line 5
    iget-object v1, v0, Lm/u2;->k:Landroidx/appcompat/widget/SearchView;

    .line 6
    .line 7
    if-nez p1, :cond_b

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_f
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_31

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1d

    .line 28
    .line 29
    goto :goto_31

    .line 30
    :cond_1d
    :try_start_1d
    iget-object v1, v0, Lm/u2;->l:Landroid/app/SearchableInfo;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lm/u2;->g(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_31

    .line 37
    .line 38
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_28} :catch_29

    .line 39
    .line 40
    .line 41
    goto :goto_32

    .line 42
    :catch_29
    move-exception p1

    .line 43
    const-string v0, "SuggestionsAdapter"

    .line 44
    .line 45
    const-string v1, "Search suggestions query threw an exception."

    .line 46
    .line 47
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :cond_31
    :goto_31
    move-object p1, v3

    .line 51
    :goto_32
    new-instance v0, Landroid/widget/Filter$FilterResults;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_42

    .line 57
    .line 58
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 63
    .line 64
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 65
    .line 66
    goto :goto_47

    .line 67
    :cond_42
    const/4 p1, 0x0

    .line 68
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 69
    .line 70
    iput-object v3, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 71
    .line 72
    :goto_47
    return-object v0
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    .line 1
    iget-object p1, p0, Ln0/b;->a:Ln0/a;

    .line 2
    .line 3
    iget-object v0, p1, Ln0/a;->c:Landroid/database/Cursor;

    .line 4
    .line 5
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz p2, :cond_11

    .line 8
    .line 9
    if-eq p2, v0, :cond_11

    .line 10
    .line 11
    check-cast p2, Landroid/database/Cursor;

    .line 12
    .line 13
    check-cast p1, Lm/u2;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lm/u2;->b(Landroid/database/Cursor;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method
