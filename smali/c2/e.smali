###### Class c2.e (c2.e)
.class public final Lc2/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lc2/e;

.field public static b:Ljava/lang/ref/WeakReference;

.field public static c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lc2/e;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc2/e;->a:Lc2/e;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lc2/e;->b:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method

.method public static final a(Landroid/view/View;)Ljava/util/ArrayList;
    .registers 7

    .line 1
    const-class v0, Lc2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    instance-of v3, p0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v3, :cond_2c

    .line 19
    .line 20
    move-object v3, p0

    .line 21
    check-cast v3, Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_1b
    if-ge v4, v3, :cond_2c

    .line 29
    .line 30
    move-object v5, p0

    .line 31
    check-cast v5, Landroid/view/ViewGroup;

    .line 32
    .line 33
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_2a

    .line 38
    .line 39
    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_1b

    .line 43
    :catchall_2a
    move-exception p0

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    return-object v1

    .line 46
    :goto_2d
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v2
.end method

.method public static final b(Landroid/view/View;)I
    .registers 9

    .line 1
    const-class v0, Lc2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "view"

    .line 12
    .line 13
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    instance-of v1, p0, Landroid/widget/ImageView;

    .line 17
    .line 18
    if-eqz v1, :cond_15

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v1, v2

    .line 23
    :goto_16
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1e

    .line 28
    .line 29
    or-int/lit8 v1, v1, 0x20

    .line 30
    .line 31
    :cond_1e
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_8a

    .line 35
    sget-object v4, Lc2/e;->a:Lc2/e;

    .line 36
    .line 37
    if-eqz v3, :cond_27

    .line 38
    .line 39
    goto :goto_6c

    .line 40
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    instance-of v5, v3, Landroid/widget/AdapterView;

    .line 45
    .line 46
    if-eqz v5, :cond_30

    .line 47
    .line 48
    goto :goto_66

    .line 49
    :cond_30
    const-string v5, "android.support.v4.view.NestedScrollingChild"

    .line 50
    .line 51
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_4e

    .line 55
    const/4 v7, 0x0

    .line 56
    if-eqz v6, :cond_3b

    .line 57
    .line 58
    :catch_39
    :goto_39
    move-object v5, v7

    .line 59
    goto :goto_45

    .line 60
    :cond_3b
    :try_start_3b
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v5
    :try_end_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_3f} :catch_39
    .catchall {:try_start_3b .. :try_end_3f} :catchall_40

    .line 64
    goto :goto_45

    .line 65
    :catchall_40
    move-exception v5

    .line 66
    :try_start_41
    invoke-static {v5, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_39

    .line 70
    :goto_45
    if-eqz v5, :cond_50

    .line 71
    .line 72
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_50

    .line 77
    .line 78
    goto :goto_66

    .line 79
    :catchall_4e
    move-exception v3

    .line 80
    goto :goto_69

    .line 81
    :cond_50
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v5
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_4e

    .line 85
    if-eqz v5, :cond_57

    .line 86
    .line 87
    goto :goto_5e

    .line 88
    :cond_57
    :try_start_57
    const-class v7, Lj0/n;
    :try_end_59
    .catch Ljava/lang/ClassNotFoundException; {:try_start_57 .. :try_end_59} :catch_5e
    .catchall {:try_start_57 .. :try_end_59} :catchall_5a

    .line 89
    .line 90
    goto :goto_5e

    .line 91
    :catchall_5a
    move-exception v5

    .line 92
    :try_start_5b
    invoke-static {v5, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :catch_5e
    :goto_5e
    if-eqz v7, :cond_6c

    .line 96
    .line 97
    invoke-virtual {v7, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_4e

    .line 101
    if-eqz v3, :cond_6c

    .line 102
    .line 103
    :goto_66
    or-int/lit16 v1, v1, 0x200

    .line 104
    .line 105
    goto :goto_6c

    .line 106
    :goto_69
    :try_start_69
    invoke-static {v3, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_6c
    :goto_6c
    instance-of v3, p0, Landroid/widget/TextView;

    .line 110
    .line 111
    if-eqz v3, :cond_93

    .line 112
    .line 113
    or-int/lit16 v3, v1, 0x401

    .line 114
    .line 115
    instance-of v4, p0, Landroid/widget/Button;

    .line 116
    .line 117
    if-eqz v4, :cond_88

    .line 118
    .line 119
    or-int/lit16 v3, v1, 0x405

    .line 120
    .line 121
    instance-of v4, p0, Landroid/widget/Switch;

    .line 122
    .line 123
    if-eqz v4, :cond_7f

    .line 124
    .line 125
    or-int/lit16 v1, v1, 0x2405

    .line 126
    .line 127
    goto :goto_8c

    .line 128
    :cond_7f
    instance-of v4, p0, Landroid/widget/CheckBox;

    .line 129
    .line 130
    if-eqz v4, :cond_88

    .line 131
    .line 132
    const v3, 0x8405

    .line 133
    .line 134
    .line 135
    or-int/2addr v1, v3

    .line 136
    goto :goto_8c

    .line 137
    :cond_88
    move v1, v3

    .line 138
    goto :goto_8c

    .line 139
    :catchall_8a
    move-exception p0

    .line 140
    goto :goto_c3

    .line 141
    :goto_8c
    instance-of p0, p0, Landroid/widget/EditText;

    .line 142
    .line 143
    if-eqz p0, :cond_c2

    .line 144
    .line 145
    or-int/lit16 v1, v1, 0x800

    .line 146
    .line 147
    goto :goto_c2

    .line 148
    :cond_93
    instance-of v3, p0, Landroid/widget/Spinner;

    .line 149
    .line 150
    if-nez v3, :cond_c0

    .line 151
    .line 152
    instance-of v3, p0, Landroid/widget/DatePicker;

    .line 153
    .line 154
    if-eqz v3, :cond_9c

    .line 155
    .line 156
    goto :goto_c0

    .line 157
    :cond_9c
    instance-of v3, p0, Landroid/widget/RatingBar;

    .line 158
    .line 159
    if-eqz v3, :cond_a4

    .line 160
    .line 161
    const/high16 p0, 0x10000

    .line 162
    .line 163
    or-int/2addr v1, p0

    .line 164
    goto :goto_c2

    .line 165
    :cond_a4
    instance-of v3, p0, Landroid/widget/RadioGroup;

    .line 166
    .line 167
    if-eqz v3, :cond_ab

    .line 168
    .line 169
    or-int/lit16 v1, v1, 0x4000

    .line 170
    .line 171
    goto :goto_c2

    .line 172
    :cond_ab
    instance-of v3, p0, Landroid/view/ViewGroup;

    .line 173
    .line 174
    if-eqz v3, :cond_c2

    .line 175
    .line 176
    sget-object v3, Lc2/e;->b:Ljava/lang/ref/WeakReference;

    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Landroid/view/View;

    .line 183
    .line 184
    invoke-virtual {v4, p0, v3}, Lc2/e;->l(Landroid/view/View;Landroid/view/View;)Z

    .line 185
    .line 186
    .line 187
    move-result p0
    :try_end_bb
    .catchall {:try_start_69 .. :try_end_bb} :catchall_8a

    .line 188
    if-eqz p0, :cond_c2

    .line 189
    .line 190
    or-int/lit8 v1, v1, 0x40

    .line 191
    .line 192
    goto :goto_c2

    .line 193
    :cond_c0
    :goto_c0
    or-int/lit16 v1, v1, 0x1000

    .line 194
    .line 195
    :cond_c2
    :goto_c2
    return v1

    .line 196
    :goto_c3
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    return v2
.end method

.method public static final c(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 8

    .line 1
    const-class v0, Lc2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "view"

    .line 12
    .line 13
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v3, "com.facebook.react.ReactRootView"

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_29

    .line 31
    .line 32
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lc2/e;->b:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    goto :goto_29

    .line 40
    :catchall_27
    move-exception p0

    .line 41
    goto :goto_61

    .line 42
    :cond_29
    :goto_29
    new-instance v1, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_27

    .line 45
    .line 46
    .line 47
    :try_start_2e
    invoke-static {p0, v1}, Lc2/e;->m(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lorg/json/JSONArray;

    .line 51
    .line 52
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lc2/e;->a(Landroid/view/View;)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x0

    .line 64
    :goto_3f
    if-ge v5, v4, :cond_53

    .line 65
    .line 66
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Landroid/view/View;

    .line 71
    .line 72
    invoke-static {v6}, Lc2/e;->c(Landroid/view/View;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_3f

    .line 82
    :catch_51
    move-exception p0

    .line 83
    goto :goto_59

    .line 84
    :cond_53
    const-string p0, "childviews"

    .line 85
    .line 86
    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_58} :catch_51
    .catchall {:try_start_2e .. :try_end_58} :catchall_27

    .line 87
    .line 88
    .line 89
    return-object v1

    .line 90
    :goto_59
    :try_start_59
    const-string v3, "c2.e"

    .line 91
    .line 92
    const-string v4, "Failed to create JSONObject for view."

    .line 93
    .line 94
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_27

    .line 95
    .line 96
    .line 97
    return-object v1

    .line 98
    :goto_61
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object v2
.end method

.method public static final e(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .registers 6

    .line 1
    const-class v0, Lc2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "android.view.View"

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, "mListenerInfo"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v1, :cond_1f

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_1f

    .line 30
    :catchall_1d
    move-exception p0

    .line 31
    goto :goto_44

    .line 32
    :cond_1f
    :goto_1f
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_26

    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_26
    const-string v1, "android.view.View$ListenerInfo"

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v4, "mOnClickListener"

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_43

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string v1, "null cannot be cast to non-null type android.view.View.OnClickListener"

    .line 61
    .line 62
    invoke-static {v1, p0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    check-cast p0, Landroid/view/View$OnClickListener;
    :try_end_42
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_42} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_42} :catch_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_42} :catch_47
    .catchall {:try_start_a .. :try_end_42} :catchall_1d

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_43
    return-object v2

    .line 69
    :goto_44
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :catch_47
    return-object v2
.end method

.method public static final f(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 6

    .line 1
    const-class v0, Lc2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_4b

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "android.view.View"

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, "mListenerInfo"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v1, :cond_1f

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_1f

    .line 30
    :catchall_1d
    move-exception p0

    .line 31
    goto :goto_4c

    .line 32
    :cond_1f
    :goto_1f
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_26

    .line 37
    .line 38
    goto :goto_4b

    .line 39
    :cond_26
    const-string v1, "android.view.View$ListenerInfo"

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v4, "mOnTouchListener"

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_4b

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string v1, "null cannot be cast to non-null type android.view.View.OnTouchListener"

    .line 61
    .line 62
    invoke-static {v1, p0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    check-cast p0, Landroid/view/View$OnTouchListener;
    :try_end_42
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_42} :catch_49
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_42} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_42} :catch_43
    .catchall {:try_start_a .. :try_end_42} :catchall_1d

    .line 66
    .line 67
    return-object p0

    .line 68
    :catch_43
    :try_start_43
    sget-object p0, Lx1/r;->a:Lx1/r;

    .line 69
    .line 70
    goto :goto_4b

    .line 71
    :catch_46
    sget-object p0, Lx1/r;->a:Lx1/r;

    .line 72
    .line 73
    goto :goto_4b

    .line 74
    :catch_49
    sget-object p0, Lx1/r;->a:Lx1/r;
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_1d

    .line 75
    .line 76
    :cond_4b
    :goto_4b
    return-object v2

    .line 77
    :goto_4c
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-object v2
.end method

.method public static final g(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    .line 1
    const-class v0, Lc2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    instance-of v1, p0, Landroid/widget/EditText;

    .line 12
    .line 13
    if-eqz v1, :cond_17

    .line 14
    .line 15
    check-cast p0, Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_23

    .line 22
    :catchall_15
    move-exception p0

    .line 23
    goto :goto_30

    .line 24
    :cond_17
    instance-of v1, p0, Landroid/widget/TextView;

    .line 25
    .line 26
    if-eqz v1, :cond_22

    .line 27
    .line 28
    check-cast p0, Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move-object p0, v2

    .line 36
    :goto_23
    if-eqz p0, :cond_2d

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_2c

    .line 43
    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    return-object p0

    .line 46
    :cond_2d
    :goto_2d
    const-string p0, ""
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_15

    .line 47
    .line 48
    return-object p0

    .line 49
    :goto_30
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object v2
.end method

.method public static final h(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4

    .line 1
    const-class v0, Lc2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_17

    .line 11
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    instance-of v1, p0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v1, :cond_17

    .line 18
    .line 19
    check-cast p0, Landroid/view/ViewGroup;
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_15

    .line 20
    .line 21
    return-object p0

    .line 22
    :catchall_15
    move-exception p0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    :goto_17
    return-object v2

    .line 25
    :goto_18
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v2
.end method

.method public static final i(Landroid/view/View;)Ljava/lang/String;
    .registers 11

    .line 1
    const-class v0, Lc2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    instance-of v1, p0, Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz v1, :cond_2c

    .line 14
    .line 15
    move-object v1, p0

    .line 16
    check-cast v1, Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v3, p0, Landroid/widget/Switch;

    .line 23
    .line 24
    if-eqz v3, :cond_fe

    .line 25
    .line 26
    check-cast p0, Landroid/widget/Switch;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_29

    .line 33
    .line 34
    const-string p0, "1"

    .line 35
    .line 36
    :goto_23
    move-object v1, p0

    .line 37
    goto/16 :goto_fe

    .line 38
    .line 39
    :catchall_26
    move-exception p0

    .line 40
    goto/16 :goto_10b

    .line 41
    .line 42
    :cond_29
    const-string p0, "0"

    .line 43
    .line 44
    goto :goto_23

    .line 45
    :cond_2c
    instance-of v1, p0, Landroid/widget/Spinner;

    .line 46
    .line 47
    if-eqz v1, :cond_47

    .line 48
    .line 49
    move-object v1, p0

    .line 50
    check-cast v1, Landroid/widget/Spinner;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-lez v1, :cond_fd

    .line 57
    .line 58
    check-cast p0, Landroid/widget/Spinner;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_fd

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto/16 :goto_fe

    .line 71
    .line 72
    :cond_47
    instance-of v1, p0, Landroid/widget/DatePicker;

    .line 73
    .line 74
    const/4 v3, 0x2

    .line 75
    const/4 v4, 0x1

    .line 76
    const/4 v5, 0x0

    .line 77
    if-eqz v1, :cond_83

    .line 78
    .line 79
    move-object v1, p0

    .line 80
    check-cast v1, Landroid/widget/DatePicker;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    move-object v6, p0

    .line 87
    check-cast v6, Landroid/widget/DatePicker;

    .line 88
    .line 89
    invoke-virtual {v6}, Landroid/widget/DatePicker;->getMonth()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    check-cast p0, Landroid/widget/DatePicker;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    const-string v7, "%04d-%02d-%02d"

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const/4 v8, 0x3

    .line 114
    new-array v9, v8, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v1, v9, v5

    .line 117
    .line 118
    aput-object v6, v9, v4

    .line 119
    .line 120
    aput-object p0, v9, v3

    .line 121
    .line 122
    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v7, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    goto/16 :goto_fe

    .line 131
    .line 132
    :cond_83
    instance-of v1, p0, Landroid/widget/TimePicker;

    .line 133
    .line 134
    if-eqz v1, :cond_bf

    .line 135
    .line 136
    move-object v1, p0

    .line 137
    check-cast v1, Landroid/widget/TimePicker;

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v6, "view.currentHour"

    .line 144
    .line 145
    invoke-static {v6, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    check-cast p0, Landroid/widget/TimePicker;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    const-string v6, "view.currentMinute"

    .line 159
    .line 160
    invoke-static {v6, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    const-string v6, "%02d:%02d"

    .line 168
    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    new-array v7, v3, [Ljava/lang/Object;

    .line 178
    .line 179
    aput-object v1, v7, v5

    .line 180
    .line 181
    aput-object p0, v7, v4

    .line 182
    .line 183
    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-static {v6, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    goto :goto_fe

    .line 192
    :cond_bf
    instance-of v1, p0, Landroid/widget/RadioGroup;

    .line 193
    .line 194
    if-eqz v1, :cond_ee

    .line 195
    .line 196
    move-object v1, p0

    .line 197
    check-cast v1, Landroid/widget/RadioGroup;

    .line 198
    .line 199
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    move-object v3, p0

    .line 204
    check-cast v3, Landroid/widget/RadioGroup;

    .line 205
    .line 206
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    :goto_d1
    if-ge v5, v3, :cond_fd

    .line 211
    .line 212
    move-object v4, p0

    .line 213
    check-cast v4, Landroid/widget/RadioGroup;

    .line 214
    .line 215
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-ne v6, v1, :cond_eb

    .line 224
    .line 225
    instance-of v6, v4, Landroid/widget/RadioButton;

    .line 226
    .line 227
    if-eqz v6, :cond_eb

    .line 228
    .line 229
    check-cast v4, Landroid/widget/RadioButton;

    .line 230
    .line 231
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    goto :goto_fe

    .line 236
    :cond_eb
    add-int/lit8 v5, v5, 0x1

    .line 237
    .line 238
    goto :goto_d1

    .line 239
    :cond_ee
    instance-of v1, p0, Landroid/widget/RatingBar;

    .line 240
    .line 241
    if-eqz v1, :cond_fd

    .line 242
    .line 243
    check-cast p0, Landroid/widget/RatingBar;

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    goto :goto_fe

    .line 254
    :cond_fd
    move-object v1, v2

    .line 255
    :cond_fe
    :goto_fe
    if-eqz v1, :cond_108

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    if-nez p0, :cond_107

    .line 262
    .line 263
    goto :goto_108

    .line 264
    :cond_107
    return-object p0

    .line 265
    :cond_108
    :goto_108
    const-string p0, ""
    :try_end_10a
    .catchall {:try_start_a .. :try_end_10a} :catchall_26

    .line 266
    .line 267
    return-object p0

    .line 268
    :goto_10b
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    return-object v2
.end method

.method public static final m(Landroid/view/View;Lorg/json/JSONObject;)V
    .registers 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-class v1, Lc2/e;

    .line 4
    .line 5
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_c

    .line 10
    .line 11
    goto/16 :goto_a0

    .line 12
    .line 13
    :cond_c
    :try_start_c
    const-string v2, "view"

    .line 14
    .line 15
    invoke-static {v2, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_54

    .line 16
    .line 17
    .line 18
    :try_start_11
    invoke-static {p0}, Lc2/e;->i(Landroid/view/View;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p0}, Lc2/e;->g(Landroid/view/View;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v6, "classname"

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    const-string v6, "classtypebitmask"

    .line 48
    .line 49
    invoke-static {p0}, Lc2/e;->b(Landroid/view/View;)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string v6, "id"

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Lc2/d;->b(Landroid/view/View;)Z

    .line 66
    .line 67
    .line 68
    move-result v6
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_44} :catch_9e
    .catchall {:try_start_11 .. :try_end_44} :catchall_54

    .line 69
    const-string v7, "text"

    .line 70
    .line 71
    if-nez v6, :cond_56

    .line 72
    .line 73
    :try_start_48
    invoke-static {v2}, Lq2/g0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lq2/g0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    goto :goto_5f

    .line 85
    :catchall_54
    move-exception p0

    .line 86
    goto :goto_a1

    .line 87
    :cond_56
    invoke-virtual {p1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v0, "is_user_input"

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    :goto_5f
    const-string v0, "hint"

    .line 97
    .line 98
    invoke-static {v3}, Lq2/g0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Lq2/g0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    if-eqz v4, :cond_7f

    .line 110
    .line 111
    const-string v0, "tag"

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v2}, Lq2/g0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v2}, Lq2/g0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    :cond_7f
    if-eqz v5, :cond_92

    .line 129
    .line 130
    const-string v0, "description"

    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v2}, Lq2/g0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v2}, Lq2/g0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    :cond_92
    sget-object v0, Lc2/e;->a:Lc2/e;

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Lc2/e;->d(Landroid/view/View;)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    const-string v0, "dimension"

    .line 154
    .line 155
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_9d} :catch_9e
    .catchall {:try_start_48 .. :try_end_9d} :catchall_54

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :catch_9e
    :try_start_9e
    sget-object p0, Lx1/r;->a:Lx1/r;
    :try_end_a0
    .catchall {:try_start_9e .. :try_end_a0} :catchall_54

    .line 160
    .line 161
    :goto_a0
    return-void

    .line 162
    :goto_a1
    invoke-static {p0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 6

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_4d

    .line 12
    .line 13
    .line 14
    :try_start_d
    const-string v2, "top"

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v2, "left"

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string v2, "width"

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v2, "height"

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string v2, "scrollx"

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string v2, "scrolly"

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    const-string v2, "visibility"

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_4c} :catch_4f
    .catchall {:try_start_d .. :try_end_4c} :catchall_4d

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :catchall_4d
    move-exception p1

    .line 79
    goto :goto_58

    .line 80
    :catch_4f
    move-exception p1

    .line 81
    :try_start_50
    const-string v2, "c2.e"

    .line 82
    .line 83
    const-string v3, "Failed to create JSONObject for dimension."

    .line 84
    .line 85
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_4d

    .line 86
    .line 87
    .line 88
    return-object v0

    .line 89
    :goto_58
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-object v1
.end method

.method public final j([FLandroid/view/View;)Landroid/view/View;
    .registers 8

    .line 1
    const-string v0, "null cannot be cast to non-null type android.view.View"

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_3d

    .line 11
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lc2/e;->k()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lc2/e;->c:Ljava/lang/reflect/Method;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_36

    .line 15
    .line 16
    if-eqz v1, :cond_3d

    .line 17
    .line 18
    if-nez p2, :cond_14

    .line 19
    .line 20
    goto :goto_3d

    .line 21
    :cond_14
    const/4 v3, 0x2

    .line 22
    :try_start_15
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object p1, v3, v4

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    aput-object p2, v3, p1

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    check-cast p1, Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-lez p2, :cond_3d

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v0, p1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    check-cast p1, Landroid/view/View;
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_35} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_35} :catch_38
    .catchall {:try_start_15 .. :try_end_35} :catchall_36

    .line 53
    .line 54
    return-object p1

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    goto :goto_3e

    .line 57
    :catch_38
    :try_start_38
    sget-object p1, Lx1/r;->a:Lx1/r;

    .line 58
    .line 59
    goto :goto_3d

    .line 60
    :catch_3b
    sget-object p1, Lx1/r;->a:Lx1/r;
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_36

    .line 61
    .line 62
    :cond_3d
    :goto_3d
    return-object v2

    .line 63
    :goto_3e
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-object v2
.end method

.method public final k()V
    .registers 6

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
    goto :goto_3c

    .line 8
    :cond_7
    :try_start_7
    sget-object v0, Lc2/e;->c:Ljava/lang/reflect/Method;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_2d

    .line 9
    .line 10
    if-eqz v0, :cond_c

    .line 11
    .line 12
    goto :goto_3c

    .line 13
    :cond_c
    :try_start_c
    const-string v0, "com.facebook.react.uimanager.TouchTargetHelper"

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "findTouchTargetView"

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    new-array v2, v2, [Ljava/lang/Class;

    .line 23
    .line 24
    const-class v3, [F

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object v3, v2, v4

    .line 28
    .line 29
    const-class v3, Landroid/view/ViewGroup;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    aput-object v3, v2, v4

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lc2/e;->c:Ljava/lang/reflect/Method;

    .line 39
    .line 40
    if-eqz v0, :cond_2f

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_2d
    move-exception v0

    .line 47
    goto :goto_3d

    .line 48
    :cond_2f
    const-string v0, "Required value was null."

    .line 49
    .line 50
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1
    :try_end_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_37} :catch_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_37} :catch_37
    .catchall {:try_start_c .. :try_end_37} :catchall_2d

    .line 56
    :catch_37
    :try_start_37
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 57
    .line 58
    goto :goto_3c

    .line 59
    :catch_3a
    sget-object v0, Lx1/r;->a:Lx1/r;
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_2d

    .line 60
    .line 61
    :goto_3c
    return-void

    .line 62
    :goto_3d
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final l(Landroid/view/View;Landroid/view/View;)Z
    .registers 9

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    goto :goto_52

    .line 9
    :cond_8
    :try_start_8
    const-string v0, "view"

    .line 10
    .line 11
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "com.facebook.react.views.view.ReactViewGroup"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_52

    .line 29
    .line 30
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_50

    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v0, :cond_26

    .line 37
    .line 38
    goto :goto_3e

    .line 39
    :cond_26
    const/4 v0, 0x2

    .line 40
    :try_start_27
    new-array v4, v0, [I

    .line 41
    .line 42
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 43
    .line 44
    .line 45
    aget v5, v4, v1

    .line 46
    .line 47
    int-to-float v5, v5

    .line 48
    aget v4, v4, v2

    .line 49
    .line 50
    int-to-float v4, v4

    .line 51
    new-array v0, v0, [F

    .line 52
    .line 53
    aput v5, v0, v1

    .line 54
    .line 55
    aput v4, v0, v2
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_3a

    .line 56
    .line 57
    move-object v3, v0

    .line 58
    goto :goto_3e

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    :try_start_3b
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_3e
    invoke-virtual {p0, v3, p2}, Lc2/e;->j([FLandroid/view/View;)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    if-eqz p2, :cond_52

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 74
    .line 75
    .line 76
    move-result p1
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_50

    .line 77
    if-ne p2, p1, :cond_52

    .line 78
    .line 79
    move v1, v2

    .line 80
    goto :goto_52

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    :goto_52
    return v1

    .line 84
    :goto_53
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return v1
.end method
