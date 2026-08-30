###### Class m0.e (m0.e)
.class public final Lm0/e;
.super Lj0/b;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lj0/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 5
    .line 6
    const-class v0, Landroid/widget/ScrollView;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_16

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final b(Landroid/view/View;Lk0/d;)V
    .registers 5

    .line 1
    iget-object p2, p2, Lk0/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    iget-object v0, p0, Lj0/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 9
    .line 10
    const-class v0, Landroid/widget/ScrollView;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_52

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_52

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-lez v1, :cond_3a

    .line 40
    .line 41
    sget-object v1, Lk0/c;->d:Lk0/c;

    .line 42
    .line 43
    iget-object v1, v1, Lk0/c;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 46
    .line 47
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lk0/c;->e:Lk0/c;

    .line 51
    .line 52
    iget-object v1, v1, Lk0/c;->a:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 55
    .line 56
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 57
    .line 58
    .line 59
    :cond_3a
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-ge p1, v0, :cond_52

    .line 64
    .line 65
    sget-object p1, Lk0/c;->c:Lk0/c;

    .line 66
    .line 67
    iget-object p1, p1, Lk0/c;->a:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 72
    .line 73
    .line 74
    sget-object p1, Lk0/c;->f:Lk0/c;

    .line 75
    .line 76
    iget-object p1, p1, Lk0/c;->a:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 81
    .line 82
    .line 83
    :cond_52
    return-void
.end method

.method public final c(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Lj0/b;->c(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p3, :cond_8

    .line 7
    .line 8
    return v0

    .line 9
    :cond_8
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez p3, :cond_13

    .line 17
    .line 18
    goto/16 :goto_95

    .line 19
    .line 20
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    new-instance v2, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_30

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_30

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    :cond_30
    const/16 v2, 0x1000

    .line 50
    .line 51
    if-eq p2, v2, :cond_6a

    .line 52
    .line 53
    const/16 v2, 0x2000

    .line 54
    .line 55
    if-eq p2, v2, :cond_43

    .line 56
    .line 57
    const v2, 0x1020038

    .line 58
    .line 59
    .line 60
    if-eq p2, v2, :cond_43

    .line 61
    .line 62
    const v2, 0x102003a

    .line 63
    .line 64
    .line 65
    if-eq p2, v2, :cond_6a

    .line 66
    .line 67
    goto :goto_95

    .line 68
    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    sub-int/2addr p3, p2

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    sub-int/2addr p3, p2

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    sub-int/2addr p2, p3

    .line 83
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eq p2, p3, :cond_95

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    sub-int/2addr v1, p3

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    sub-int/2addr p2, p3

    .line 103
    invoke-virtual {p1, v1, p2, v0}, Landroidx/core/widget/NestedScrollView;->v(IIZ)V

    .line 104
    .line 105
    .line 106
    return v0

    .line 107
    :cond_6a
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    sub-int/2addr p3, p2

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    sub-int/2addr p3, p2

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    add-int/2addr p2, p3

    .line 122
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-eq p2, p3, :cond_95

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    sub-int/2addr v1, p3

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    sub-int/2addr p2, p3

    .line 146
    invoke-virtual {p1, v1, p2, v0}, Landroidx/core/widget/NestedScrollView;->v(IIZ)V

    .line 147
    .line 148
    .line 149
    return v0

    .line 150
    :cond_95
    :goto_95
    return v1
.end method
