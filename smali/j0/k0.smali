###### Class j0.k0 (j0.k0)
.class public abstract Lj0/k0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static a:Ljava/util/WeakHashMap; = null

.field public static b:Ljava/lang/reflect/Field; = null

.field public static c:Z = false

.field public static final d:Lj0/x;

.field public static final e:Lj0/z;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj0/x;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj0/k0;->d:Lj0/x;

    .line 7
    .line 8
    new-instance v0, Lj0/z;

    .line 9
    .line 10
    invoke-direct {v0}, Lj0/z;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lj0/k0;->e:Lj0/z;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/view/View;)Lj0/o0;
    .registers 3

    .line 1
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    :cond_b
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lj0/o0;

    .line 19
    .line 20
    if-nez v0, :cond_1f

    .line 21
    .line 22
    new-instance v0, Lj0/o0;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lj0/o0;-><init>(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 28
    .line 29
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1f
    return-object v0
.end method

.method public static b(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_8

    .line 6
    .line 7
    goto/16 :goto_b8

    .line 8
    .line 9
    :cond_8
    sget-object v0, Lj0/j0;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    const v0, 0x7f0900e0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lj0/j0;

    .line 19
    .line 20
    if-nez v1, :cond_24

    .line 21
    .line 22
    new-instance v1, Lj0/j0;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-object v2, v1, Lj0/j0;->a:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    iput-object v2, v1, Lj0/j0;->b:Landroid/util/SparseArray;

    .line 31
    .line 32
    iput-object v2, v1, Lj0/j0;->c:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_24
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v2, 0x1

    .line 42
    if-nez v0, :cond_8a

    .line 43
    .line 44
    iget-object v0, v1, Lj0/j0;->a:Ljava/util/WeakHashMap;

    .line 45
    .line 46
    if-eqz v0, :cond_32

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 49
    .line 50
    .line 51
    :cond_32
    sget-object v0, Lj0/j0;->d:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3b

    .line 58
    .line 59
    goto :goto_8a

    .line 60
    :cond_3b
    monitor-enter v0

    .line 61
    :try_start_3c
    iget-object v3, v1, Lj0/j0;->a:Ljava/util/WeakHashMap;

    .line 62
    .line 63
    if-nez v3, :cond_4a

    .line 64
    .line 65
    new-instance v3, Ljava/util/WeakHashMap;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v3, v1, Lj0/j0;->a:Ljava/util/WeakHashMap;

    .line 71
    .line 72
    goto :goto_4a

    .line 73
    :catchall_48
    move-exception p0

    .line 74
    goto :goto_88

    .line 75
    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    sub-int/2addr v3, v2

    .line 80
    :goto_4f
    if-ltz v3, :cond_86

    .line 81
    .line 82
    sget-object v4, Lj0/j0;->d:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Landroid/view/View;

    .line 95
    .line 96
    if-nez v5, :cond_65

    .line 97
    .line 98
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_83

    .line 102
    :cond_65
    iget-object v4, v1, Lj0/j0;->a:Ljava/util/WeakHashMap;

    .line 103
    .line 104
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v4, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    :goto_70
    instance-of v5, v4, Landroid/view/View;

    .line 114
    .line 115
    if-eqz v5, :cond_83

    .line 116
    .line 117
    iget-object v5, v1, Lj0/j0;->a:Ljava/util/WeakHashMap;

    .line 118
    .line 119
    move-object v6, v4

    .line 120
    check-cast v6, Landroid/view/View;

    .line 121
    .line 122
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 123
    .line 124
    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    goto :goto_70

    .line 132
    :cond_83
    :goto_83
    add-int/lit8 v3, v3, -0x1

    .line 133
    .line 134
    goto :goto_4f

    .line 135
    :cond_86
    monitor-exit v0

    .line 136
    goto :goto_8a

    .line 137
    :goto_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3c .. :try_end_89} :catchall_48

    .line 138
    throw p0

    .line 139
    :cond_8a
    :goto_8a
    invoke-virtual {v1, p0}, Lj0/j0;->a(Landroid/view/View;)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_b5

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p0, :cond_b5

    .line 154
    .line 155
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_b5

    .line 160
    .line 161
    iget-object v0, v1, Lj0/j0;->b:Landroid/util/SparseArray;

    .line 162
    .line 163
    if-nez v0, :cond_ab

    .line 164
    .line 165
    new-instance v0, Landroid/util/SparseArray;

    .line 166
    .line 167
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v0, v1, Lj0/j0;->b:Landroid/util/SparseArray;

    .line 171
    .line 172
    :cond_ab
    iget-object v0, v1, Lj0/j0;->b:Landroid/util/SparseArray;

    .line 173
    .line 174
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 175
    .line 176
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_b5
    if-eqz p0, :cond_b8

    .line 183
    .line 184
    return v2

    .line 185
    :cond_b8
    :goto_b8
    const/4 p0, 0x0

    .line 186
    return p0
.end method

.method public static c(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_b

    .line 6
    .line 7
    invoke-static {p0}, Lj0/g0;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    sget-boolean v0, Lj0/k0;->c:Z

    .line 13
    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    goto :goto_35

    .line 17
    :cond_10
    sget-object v0, Lj0/k0;->b:Ljava/lang/reflect/Field;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-nez v0, :cond_26

    .line 21
    .line 22
    :try_start_15
    const-class v0, Landroid/view/View;

    .line 23
    .line 24
    const-string v2, "mAccessibilityDelegate"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lj0/k0;->b:Ljava/lang/reflect/Field;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_23

    .line 33
    .line 34
    .line 35
    goto :goto_26

    .line 36
    :catchall_23
    sput-boolean v1, Lj0/k0;->c:Z

    .line 37
    .line 38
    goto :goto_35

    .line 39
    :cond_26
    :goto_26
    :try_start_26
    sget-object v0, Lj0/k0;->b:Ljava/lang/reflect/Field;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    .line 46
    .line 47
    if-eqz v0, :cond_35

    .line 48
    .line 49
    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_33

    .line 50
    .line 51
    return-object p0

    .line 52
    :catchall_33
    sput-boolean v1, Lj0/k0;->c:Z

    .line 53
    .line 54
    :cond_35
    :goto_35
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static d(Lm/r;)[Ljava/lang/String;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_b

    .line 6
    .line 7
    invoke-static {p0}, Lj0/i0;->a(Landroid/view/View;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    const v0, 0x7f0900dc

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, [Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method

.method public static e(Landroid/view/View;I)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "accessibility"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_14

    .line 18
    .line 19
    goto/16 :goto_aa

    .line 20
    .line 21
    :cond_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/16 v3, 0x1c

    .line 25
    .line 26
    const-class v4, Ljava/lang/CharSequence;

    .line 27
    .line 28
    const v5, 0x7f0900d9

    .line 29
    .line 30
    .line 31
    if-lt v1, v3, :cond_25

    .line 32
    .line 33
    invoke-static {p0}, Lj0/f0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    goto :goto_31

    .line 38
    :cond_25
    invoke-virtual {p0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_30

    .line 47
    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move-object v6, v2

    .line 50
    :goto_31
    check-cast v6, Ljava/lang/CharSequence;

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    if-eqz v6, :cond_44

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_44

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_44

    .line 66
    .line 67
    move v6, v7

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    const/4 v6, 0x0

    .line 70
    :goto_45
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    const/16 v9, 0x20

    .line 75
    .line 76
    if-nez v8, :cond_ab

    .line 77
    .line 78
    if-eqz v6, :cond_50

    .line 79
    .line 80
    goto :goto_ab

    .line 81
    :cond_50
    if-ne p1, v9, :cond_84

    .line 82
    .line 83
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {p0, v6}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v9}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v6}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-lt v1, v3, :cond_70

    .line 107
    .line 108
    invoke-static {p0}, Lj0/f0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    goto :goto_7b

    .line 113
    :cond_70
    invoke-virtual {p0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v4, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_7b

    .line 122
    .line 123
    move-object v2, p0

    .line 124
    :cond_7b
    :goto_7b
    check-cast v2, Ljava/lang/CharSequence;

    .line 125
    .line 126
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_84
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_aa

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    :try_start_8e
    invoke-interface {v0, p0, p0, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_91
    .catch Ljava/lang/AbstractMethodError; {:try_start_8e .. :try_end_91} :catch_92

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :catch_92
    move-exception p1

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const-string v0, " does not fully implement ViewParent"

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const-string v0, "ViewCompat"

    .line 167
    .line 168
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .line 170
    .line 171
    :cond_aa
    :goto_aa
    return-void

    .line 172
    :cond_ab
    :goto_ab
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v6, :cond_b2

    .line 177
    .line 178
    goto :goto_b4

    .line 179
    :cond_b2
    const/16 v9, 0x800

    .line 180
    .line 181
    :goto_b4
    invoke-virtual {v0, v9}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 185
    .line 186
    .line 187
    if-eqz v6, :cond_e0

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-lt v1, v3, :cond_c7

    .line 194
    .line 195
    invoke-static {p0}, Lj0/f0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    goto :goto_d2

    .line 200
    :cond_c7
    invoke-virtual {p0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_d2

    .line 209
    .line 210
    move-object v2, v1

    .line 211
    :cond_d2
    :goto_d2
    check-cast v2, Ljava/lang/CharSequence;

    .line 212
    .line 213
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-nez p1, :cond_e0

    .line 221
    .line 222
    invoke-virtual {p0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 223
    .line 224
    .line 225
    :cond_e0
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public static f(Landroid/view/View;Lj0/f;)Lj0/f;
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "ViewCompat"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3b

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "performReceiveContent: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", view="

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "["

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "]"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_3b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    const/16 v1, 0x1f

    .line 63
    .line 64
    if-lt v0, v1, :cond_46

    .line 65
    .line 66
    invoke-static {p0, p1}, Lj0/i0;->b(Landroid/view/View;Lj0/f;)Lj0/f;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_46
    const v0, 0x7f0900db

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lm0/j;

    .line 79
    .line 80
    sget-object v1, Lj0/k0;->d:Lj0/x;

    .line 81
    .line 82
    if-eqz v0, :cond_67

    .line 83
    .line 84
    invoke-static {p0, p1}, Lm0/j;->a(Landroid/view/View;Lj0/f;)Lj0/f;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-nez p1, :cond_5b

    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    return-object p0

    .line 92
    :cond_5b
    instance-of v0, p0, Lj0/s;

    .line 93
    .line 94
    if-eqz v0, :cond_62

    .line 95
    .line 96
    move-object v1, p0

    .line 97
    check-cast v1, Lj0/s;

    .line 98
    .line 99
    :cond_62
    invoke-interface {v1, p1}, Lj0/s;->a(Lj0/f;)Lj0/f;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_67
    instance-of v0, p0, Lj0/s;

    .line 105
    .line 106
    if-eqz v0, :cond_6e

    .line 107
    .line 108
    move-object v1, p0

    .line 109
    check-cast v1, Lj0/s;

    .line 110
    .line 111
    :cond_6e
    invoke-interface {v1, p1}, Lj0/s;->a(Lj0/f;)Lj0/f;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method

.method public static g(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .registers 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_9

    .line 6
    .line 7
    invoke-static/range {p0 .. p6}, Lj0/g0;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

.method public static h(Landroid/view/View;Lj0/b;)V
    .registers 3

    .line 1
    if-nez p1, :cond_f

    .line 2
    .line 3
    invoke-static {p0}, Lj0/k0;->c(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lj0/a;

    .line 8
    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    new-instance p1, Lj0/b;

    .line 12
    .line 13
    invoke-direct {p1}, Lj0/b;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_19

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_19
    if-nez p1, :cond_1d

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    iget-object p1, p1, Lj0/b;->b:Lj0/a;

    .line 31
    .line 32
    :goto_1f
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static i(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 8

    .line 1
    new-instance v0, Lj0/y;

    .line 2
    .line 3
    const/16 v4, 0x1c

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    const v1, 0x7f0900d9

    .line 7
    .line 8
    .line 9
    const-class v2, Ljava/lang/CharSequence;

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lj0/y;-><init>(ILjava/lang/Class;III)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, p1}, Lj0/a0;->d(Landroid/view/View;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lj0/k0;->e:Lj0/z;

    .line 20
    .line 21
    if-eqz p1, :cond_3f

    .line 22
    .line 23
    iget-object p1, v0, Lj0/z;->a:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_26

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_26

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 v1, 0x0

    .line 40
    :goto_27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3e

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 61
    .line 62
    .line 63
    :cond_3e
    return-void

    .line 64
    :cond_3f
    iget-object p1, v0, Lj0/z;->a:Ljava/util/WeakHashMap;

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
