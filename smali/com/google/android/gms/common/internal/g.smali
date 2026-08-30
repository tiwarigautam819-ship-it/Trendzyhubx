###### Class com.google.android.gms.common.internal.g (com.google.android.gms.common.internal.g)
.class public final Lcom/google/android/gms/common/internal/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    iput p1, p0, Lcom/google/android/gms/common/internal/g;->a:I

    packed-switch p1, :pswitch_data_58

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 15
    :pswitch_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f08004a

    const/high16 v0, 0x7f080000

    const v1, 0x7f08004c

    .line 16
    filled-new-array {v1, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 17
    new-array v0, p1, [I

    fill-array-data v0, :array_5e

    iput-object v0, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 18
    new-array p1, p1, [I

    fill-array-data p1, :array_70

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    const p1, 0x7f08000f

    const v0, 0x7f080030

    const v1, 0x7f080031

    .line 19
    filled-new-array {v1, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    const p1, 0x7f080043

    const v0, 0x7f08004d

    .line 20
    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    const p1, 0x7f080004

    const v0, 0x7f08000a

    const v1, 0x7f080003

    const v2, 0x7f080009

    .line 21
    filled-new-array {v1, v2, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x3
        :pswitch_9
    .end packed-switch

    :array_5e
    .array-data 4
        0x7f080018
        0x7f08003b
        0x7f08001f
        0x7f08001a
        0x7f08001b
        0x7f08001e
        0x7f08001d
    .end array-data

    :array_70
    .array-data 4
        0x7f080049
        0x7f08004b
        0x7f080011
        0x7f080045
        0x7f080046
        0x7f080047
        0x7f080048
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/internal/g;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_b

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_f

    :cond_b
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    sget-object p2, Lm4/a;->a:Lm4/a;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    new-instance p2, Ljava/util/HashSet;

    .line 3
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_35

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    return-void

    .line 6
    :cond_35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lr7/m;Ljava/lang/String;Lr7/k;Lb0/d;Ljava/util/Map;)V
    .registers 7

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/internal/g;->a:I

    const-string v0, "url"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "method"

    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 14
    iput-object p5, p0, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lt4/g;Lcom/google/firebase/messaging/s;Lg5/a;Lg5/a;Lh5/e;)V
    .registers 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/g;->a:I

    .line 22
    new-instance v0, Lu3/b;

    .line 23
    invoke-virtual {p1}, Lt4/g;->a()V

    .line 24
    iget-object v1, p1, Lt4/g;->a:Landroid/content/Context;

    .line 25
    invoke-direct {v0, v1}, Lu3/b;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 31
    iput-object p4, p0, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 32
    iput-object p5, p0, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu7/d;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/common/internal/g;->a:I

    const-string v0, "taskRunner"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 35
    sget-object p1, Ly7/h;->a:Ly7/g;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    return-void
.end method

.method public static b([II)Z
    .registers 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_e

    .line 5
    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    if-ne v3, p1, :cond_b

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_e
    return v1
.end method

.method public static d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 7

    .line 1
    const v0, 0x7f04005e

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f04005c

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Lm/v2;->b(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {v0, p1}, Lc0/a;->b(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, p1}, Lc0/a;->b(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x4

    .line 24
    new-array v2, v2, [[I

    .line 25
    .line 26
    sget-object v3, Lm/v2;->b:[I

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v3, v2, v4

    .line 30
    .line 31
    sget-object v3, Lm/v2;->d:[I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    aput-object v3, v2, v4

    .line 35
    .line 36
    sget-object v3, Lm/v2;->c:[I

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    aput-object v3, v2, v4

    .line 40
    .line 41
    sget-object v3, Lm/v2;->f:[I

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    aput-object v3, v2, v4

    .line 45
    .line 46
    filled-new-array {p0, v1, v0, p1}, [I

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    invoke-direct {p1, v2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method

.method public static f(Lm/f2;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const v0, 0x7f08003f

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lm/f2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f080040

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v1}, Lm/f2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p1, :cond_33

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, p2, :cond_33

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ne p1, p2, :cond_33

    .line 39
    .line 40
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 41
    .line 42
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    goto :goto_4f

    .line 52
    :cond_33
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 53
    .line 54
    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v2, Landroid/graphics/Canvas;

    .line 59
    .line 60
    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 75
    .line 76
    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .line 78
    .line 79
    move-object p1, v2

    .line 80
    :goto_4f
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 83
    .line 84
    .line 85
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    .line 87
    if-eqz v2, :cond_67

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-ne v2, p2, :cond_67

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-ne v2, p2, :cond_67

    .line 100
    .line 101
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    .line 103
    goto :goto_7d

    .line 104
    :cond_67
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 105
    .line 106
    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v3, Landroid/graphics/Canvas;

    .line 111
    .line 112
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    .line 120
    .line 121
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 122
    .line 123
    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .line 125
    .line 126
    :goto_7d
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    .line 127
    .line 128
    const/4 v2, 0x3

    .line 129
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    aput-object v0, v2, v1

    .line 132
    .line 133
    const/4 v0, 0x1

    .line 134
    aput-object p0, v2, v0

    .line 135
    .line 136
    const/4 p0, 0x2

    .line 137
    aput-object p1, v2, p0

    .line 138
    .line 139
    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    const/high16 p1, 0x1020000

    .line 143
    .line 144
    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 145
    .line 146
    .line 147
    const p1, 0x102000f

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 151
    .line 152
    .line 153
    const p1, 0x102000d

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 157
    .line 158
    .line 159
    return-object p2
.end method

.method public static j(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p2, :cond_8

    .line 6
    .line 7
    sget-object p2, Lm/p;->b:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    :cond_8
    sget-object v0, Lm/p;->b:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    const-class v0, Lm/p;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_d
    invoke-static {p1, p2}, Lm/f2;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_16

    .line 18
    monitor-exit v0

    .line 19
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception p0

    .line 24
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    .line 25
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "Property \"autoMetadata\" has not been set"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public c()Lf3/h;
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    const-string v0, " transportName"

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const-string v0, ""

    .line 11
    .line 12
    :goto_b
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lf3/l;

    .line 15
    .line 16
    if-nez v1, :cond_17

    .line 17
    .line 18
    const-string v1, " encodedPayload"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Long;

    .line 27
    .line 28
    if-nez v1, :cond_23

    .line 29
    .line 30
    const-string v1, " eventMillis"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Long;

    .line 39
    .line 40
    if-nez v1, :cond_2f

    .line 41
    .line 42
    const-string v1, " uptimeMillis"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/util/HashMap;

    .line 51
    .line 52
    if-nez v1, :cond_3b

    .line 53
    .line 54
    const-string v1, " autoMetadata"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_6b

    .line 65
    .line 66
    new-instance v2, Lf3/h;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 69
    .line 70
    move-object v3, v0

    .line 71
    check-cast v3, Ljava/lang/String;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    .line 74
    .line 75
    move-object v4, v0

    .line 76
    check-cast v4, Ljava/lang/Integer;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 79
    .line 80
    move-object v5, v0

    .line 81
    check-cast v5, Lf3/l;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Ljava/lang/Long;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Ljava/lang/Long;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 100
    .line 101
    move-object v10, v0

    .line 102
    check-cast v10, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-direct/range {v2 .. v10}, Lf3/h;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lf3/l;JJLjava/util/HashMap;)V

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :cond_6b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    const-string v2, "Missing required properties:"

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1
.end method

.method public e(Lp4/q;)Lp4/q;
    .registers 4

    .line 1
    new-instance v0, Lc1/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/getcapacitor/n;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/getcapacitor/n;-><init>(Lcom/google/android/gms/common/internal/g;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lp4/q;->i(Ljava/util/concurrent/Executor;Lp4/a;)Lp4/q;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 11

    .line 1
    const v0, 0x7f080014

    .line 2
    .line 3
    .line 4
    if-ne p2, v0, :cond_d

    .line 5
    .line 6
    const p2, 0x7f060015

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lz7/l;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    const v0, 0x7f080042

    .line 15
    .line 16
    .line 17
    if-ne p2, v0, :cond_1a

    .line 18
    .line 19
    const p2, 0x7f060018

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lz7/l;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1a
    const v0, 0x7f080041

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-ne p2, v0, :cond_7c

    .line 32
    .line 33
    const/4 p2, 0x3

    .line 34
    new-array v0, p2, [[I

    .line 35
    .line 36
    new-array p2, p2, [I

    .line 37
    .line 38
    const v2, 0x7f040064

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v2}, Lm/v2;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x2

    .line 46
    const v5, 0x7f04005d

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    if-eqz v3, :cond_58

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_58

    .line 57
    .line 58
    sget-object v2, Lm/v2;->b:[I

    .line 59
    .line 60
    aput-object v2, v0, v1

    .line 61
    .line 62
    invoke-virtual {v3, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    aput v2, p2, v1

    .line 67
    .line 68
    sget-object v1, Lm/v2;->e:[I

    .line 69
    .line 70
    aput-object v1, v0, v6

    .line 71
    .line 72
    invoke-static {p1, v5}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    aput p1, p2, v6

    .line 77
    .line 78
    sget-object p1, Lm/v2;->f:[I

    .line 79
    .line 80
    aput-object p1, v0, v4

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    aput p1, p2, v4

    .line 87
    .line 88
    goto :goto_76

    .line 89
    :cond_58
    sget-object v3, Lm/v2;->b:[I

    .line 90
    .line 91
    aput-object v3, v0, v1

    .line 92
    .line 93
    invoke-static {p1, v2}, Lm/v2;->b(Landroid/content/Context;I)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    aput v3, p2, v1

    .line 98
    .line 99
    sget-object v1, Lm/v2;->e:[I

    .line 100
    .line 101
    aput-object v1, v0, v6

    .line 102
    .line 103
    invoke-static {p1, v5}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    aput v1, p2, v6

    .line 108
    .line 109
    sget-object v1, Lm/v2;->f:[I

    .line 110
    .line 111
    aput-object v1, v0, v4

    .line 112
    .line 113
    invoke-static {p1, v2}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    aput p1, p2, v4

    .line 118
    .line 119
    :goto_76
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 120
    .line 121
    invoke-direct {p1, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 122
    .line 123
    .line 124
    return-object p1

    .line 125
    :cond_7c
    const v0, 0x7f080008

    .line 126
    .line 127
    .line 128
    if-ne p2, v0, :cond_8d

    .line 129
    .line 130
    const p2, 0x7f04005c

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p2}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_8d
    const v0, 0x7f080002

    .line 143
    .line 144
    .line 145
    if-ne p2, v0, :cond_97

    .line 146
    .line 147
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :cond_97
    const v0, 0x7f080007

    .line 153
    .line 154
    .line 155
    if-ne p2, v0, :cond_a8

    .line 156
    .line 157
    const p2, 0x7f04005a

    .line 158
    .line 159
    .line 160
    invoke-static {p1, p2}, Lm/v2;->c(Landroid/content/Context;I)I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    return-object p1

    .line 169
    :cond_a8
    const v0, 0x7f08003d

    .line 170
    .line 171
    .line 172
    if-eq p2, v0, :cond_f8

    .line 173
    .line 174
    const v0, 0x7f08003e

    .line 175
    .line 176
    .line 177
    if-ne p2, v0, :cond_b3

    .line 178
    .line 179
    goto :goto_f8

    .line 180
    :cond_b3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, [I

    .line 183
    .line 184
    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/g;->b([II)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_c5

    .line 189
    .line 190
    const p2, 0x7f04005f

    .line 191
    .line 192
    .line 193
    invoke-static {p1, p2}, Lm/v2;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    return-object p1

    .line 198
    :cond_c5
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, [I

    .line 201
    .line 202
    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/g;->b([II)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_d7

    .line 207
    .line 208
    const p2, 0x7f060014

    .line 209
    .line 210
    .line 211
    invoke-static {p1, p2}, Lz7/l;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    return-object p1

    .line 216
    :cond_d7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, [I

    .line 219
    .line 220
    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/g;->b([II)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_e9

    .line 225
    .line 226
    const p2, 0x7f060013

    .line 227
    .line 228
    .line 229
    invoke-static {p1, p2}, Lz7/l;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    return-object p1

    .line 234
    :cond_e9
    const v0, 0x7f08003a

    .line 235
    .line 236
    .line 237
    if-ne p2, v0, :cond_f6

    .line 238
    .line 239
    const p2, 0x7f060016

    .line 240
    .line 241
    .line 242
    invoke-static {p1, p2}, Lz7/l;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    return-object p1

    .line 247
    :cond_f6
    const/4 p1, 0x0

    .line 248
    return-object p1

    .line 249
    :cond_f8
    :goto_f8
    const p2, 0x7f060017

    .line 250
    .line 251
    .line 252
    invoke-static {p1, p2}, Lz7/l;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    return-object p1
.end method

.method public h()Lcom/google/firebase/messaging/z;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/z;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/google/firebase/messaging/z;->e:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lr7/m;

    .line 16
    .line 17
    iput-object v1, v0, Lcom/google/firebase/messaging/z;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lb0/d;

    .line 28
    .line 29
    iput-object v1, v0, Lcom/google/firebase/messaging/z;->d:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2e

    .line 40
    .line 41
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    goto :goto_32

    .line 47
    :cond_2e
    invoke-static {v1}, Ls6/r;->y(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_32
    iput-object v1, v0, Lcom/google/firebase/messaging/z;->e:Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Lr7/k;

    .line 56
    .line 57
    invoke-virtual {v1}, Lr7/k;->c()Lr7/j;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 62
    .line 63
    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "sender"

    .line 7
    .line 8
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "subtype"

    .line 12
    .line 13
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "gmp_app_id"

    .line 17
    .line 18
    iget-object p2, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p2, Lt4/g;

    .line 21
    .line 22
    invoke-virtual {p2}, Lt4/g;->a()V

    .line 23
    .line 24
    .line 25
    iget-object p2, p2, Lt4/g;->c:Lt4/j;

    .line 26
    .line 27
    iget-object p2, p2, Lt4/j;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "gmsv"

    .line 33
    .line 34
    iget-object p2, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p2, Lcom/google/firebase/messaging/s;

    .line 37
    .line 38
    monitor-enter p2

    .line 39
    :try_start_26
    iget v0, p2, Lcom/google/firebase/messaging/s;->b:I

    .line 40
    .line 41
    if-nez v0, :cond_3a

    .line 42
    .line 43
    const-string v0, "com.google.android.gms"

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lcom/google/firebase/messaging/s;->d(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_3a

    .line 50
    .line 51
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 52
    .line 53
    iput v0, p2, Lcom/google/firebase/messaging/s;->b:I

    .line 54
    .line 55
    goto :goto_3a

    .line 56
    :catchall_37
    move-exception p1

    .line 57
    goto/16 :goto_113

    .line 58
    .line 59
    :cond_3a
    :goto_3a
    iget v0, p2, Lcom/google/firebase/messaging/s;->b:I
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_37

    .line 60
    .line 61
    monitor-exit p2

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p1, "osv"

    .line 70
    .line 71
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p1, "app_ver"

    .line 81
    .line 82
    iget-object p2, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p2, Lcom/google/firebase/messaging/s;

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/google/firebase/messaging/s;->a()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p1, "app_ver_name"

    .line 94
    .line 95
    iget-object p2, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p2, Lcom/google/firebase/messaging/s;

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/google/firebase/messaging/s;->b()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string p1, "firebase-app-name-hash"

    .line 107
    .line 108
    iget-object p2, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p2, Lt4/g;

    .line 111
    .line 112
    invoke-virtual {p2}, Lt4/g;->a()V

    .line 113
    .line 114
    .line 115
    iget-object p2, p2, Lt4/g;->b:Ljava/lang/String;

    .line 116
    .line 117
    const-string v0, "SHA-1"

    .line 118
    .line 119
    :try_start_76
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    const/16 v0, 0xb

    .line 132
    .line 133
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2
    :try_end_88
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_76 .. :try_end_88} :catch_89

    .line 137
    goto :goto_8b

    .line 138
    :catch_89
    const-string p2, "[HASH-ERROR]"

    .line 139
    .line 140
    :goto_8b
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :try_start_8e
    iget-object p1, p0, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p1, Lh5/e;

    .line 146
    .line 147
    check-cast p1, Lh5/d;

    .line 148
    .line 149
    invoke-virtual {p1}, Lh5/d;->e()Lp4/q;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {p1}, Lj7/g;->a(Lp4/i;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lh5/a;

    .line 158
    .line 159
    iget-object p1, p1, Lh5/a;->a:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-nez p2, :cond_b0

    .line 166
    .line 167
    const-string p2, "Goog-Firebase-Installations-Auth"

    .line 168
    .line 169
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_bf

    .line 173
    :catch_ac
    move-exception p1

    .line 174
    goto :goto_b8

    .line 175
    :catch_ae
    move-exception p1

    .line 176
    goto :goto_b8

    .line 177
    :cond_b0
    const-string p1, "FirebaseMessaging"

    .line 178
    .line 179
    const-string p2, "FIS auth token is empty"

    .line 180
    .line 181
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8e .. :try_end_b7} :catch_ae
    .catch Ljava/lang/InterruptedException; {:try_start_8e .. :try_end_b7} :catch_ac

    .line 182
    .line 183
    .line 184
    goto :goto_bf

    .line 185
    :goto_b8
    const-string p2, "FirebaseMessaging"

    .line 186
    .line 187
    const-string v0, "Failed to get FIS auth token"

    .line 188
    .line 189
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .line 191
    .line 192
    :goto_bf
    const-string p1, "appid"

    .line 193
    .line 194
    iget-object p2, p0, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p2, Lh5/e;

    .line 197
    .line 198
    check-cast p2, Lh5/d;

    .line 199
    .line 200
    invoke-virtual {p2}, Lh5/d;->d()Lp4/q;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-static {p2}, Lj7/g;->a(Lp4/i;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const-string p1, "cliv"

    .line 214
    .line 215
    const-string p2, "fcm-24.0.2"

    .line 216
    .line 217
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast p1, Lg5/a;

    .line 223
    .line 224
    invoke-interface {p1}, Lg5/a;->get()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    check-cast p1, Le5/g;

    .line 229
    .line 230
    iget-object p2, p0, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast p2, Lg5/a;

    .line 233
    .line 234
    invoke-interface {p2}, Lg5/a;->get()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    check-cast p2, Lo5/b;

    .line 239
    .line 240
    if-eqz p1, :cond_112

    .line 241
    .line 242
    if-eqz p2, :cond_112

    .line 243
    .line 244
    check-cast p1, Le5/d;

    .line 245
    .line 246
    invoke-virtual {p1}, Le5/d;->a()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    const/4 v0, 0x1

    .line 251
    if-eq p1, v0, :cond_112

    .line 252
    .line 253
    const-string v0, "Firebase-Client-Log-Type"

    .line 254
    .line 255
    invoke-static {p1}, Landroidx/fragment/app/m1;->e(I)I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string p1, "Firebase-Client"

    .line 267
    .line 268
    invoke-virtual {p2}, Lo5/b;->a()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_112
    return-void

    .line 276
    :goto_113
    :try_start_113
    monitor-exit p2
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_37

    .line 277
    throw p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lp4/q;
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/g;->i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_59
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_57

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lu3/b;

    .line 7
    .line 8
    sget-object p2, Lu3/h;->c:Lu3/h;

    .line 9
    .line 10
    iget-object v0, p1, Lu3/b;->c:Lk6/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lk6/b;->d()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const v2, 0xb71b00

    .line 17
    .line 18
    .line 19
    if-ge v1, v2, :cond_34

    .line 20
    .line 21
    invoke-virtual {v0}, Lk6/b;->e()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_28

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lu3/b;->a(Landroid/os/Bundle;)Lp4/q;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lu3/o;

    .line 32
    .line 33
    invoke-direct {v1, p1, p3}, Lu3/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2, v1}, Lp4/q;->j(Ljava/util/concurrent/Executor;Lp4/a;)Lp4/q;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_28
    new-instance p1, Ljava/io/IOException;

    .line 42
    .line 43
    const-string p2, "MISSING_INSTANCEID_SERVICE"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lj7/g;->k(Ljava/lang/Exception;)Lp4/q;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_34
    iget-object p1, p1, Lu3/b;->b:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {p1}, Lu3/n;->a(Landroid/content/Context;)Lu3/n;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v0, Lu3/m;

    .line 60
    .line 61
    monitor-enter p1

    .line 62
    :try_start_3d
    iget v1, p1, Lu3/n;->d:I

    .line 63
    .line 64
    add-int/lit8 v2, v1, 0x1

    .line 65
    .line 66
    iput v2, p1, Lu3/n;->d:I
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_54

    .line 67
    .line 68
    monitor-exit p1

    .line 69
    const/4 v2, 0x1

    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-direct {v0, v1, v3, p3, v2}, Lu3/m;-><init>(IILandroid/os/Bundle;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lu3/n;->b(Lu3/m;)Lp4/q;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object p3, Lu3/d;->b:Lu3/d;

    .line 79
    .line 80
    invoke-virtual {p1, p2, p3}, Lp4/q;->i(Ljava/util/concurrent/Executor;Lp4/a;)Lp4/q;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :catchall_54
    move-exception p2

    .line 86
    :try_start_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    .line 87
    throw p2

    .line 88
    :catch_57
    move-exception p1

    .line 89
    goto :goto_5a

    .line 90
    :catch_59
    move-exception p1

    .line 91
    :goto_5a
    invoke-static {p1}, Lj7/g;->k(Ljava/lang/Exception;)Lp4/q;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/internal/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_96

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/Map;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Request{method="

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", url="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lr7/m;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lr7/k;

    .line 44
    .line 45
    invoke-virtual {v2}, Lr7/k;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_78

    .line 50
    .line 51
    const-string v3, ", headers=["

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lr7/k;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/4 v3, 0x0

    .line 61
    :goto_3c
    move-object v4, v2

    .line 62
    check-cast v4, Ld7/a;

    .line 63
    .line 64
    invoke-virtual {v4}, Ld7/a;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_73

    .line 69
    .line 70
    invoke-virtual {v4}, Ld7/a;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    add-int/lit8 v5, v3, 0x1

    .line 75
    .line 76
    if-ltz v3, :cond_6b

    .line 77
    .line 78
    check-cast v4, Lr6/d;

    .line 79
    .line 80
    iget-object v6, v4, Lr6/d;->a:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v6, Ljava/lang/String;

    .line 83
    .line 84
    iget-object v4, v4, Lr6/d;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v4, Ljava/lang/String;

    .line 87
    .line 88
    if-lez v3, :cond_5e

    .line 89
    .line 90
    const-string v3, ", "

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_5e
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const/16 v3, 0x3a

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move v3, v5

    .line 107
    goto :goto_3c

    .line 108
    :cond_6b
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 109
    .line 110
    const-string v1, "Index overflow has happened."

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_73
    const/16 v2, 0x5d

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :cond_78
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_86

    .line 126
    .line 127
    const-string v2, ", tags="

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    :cond_86
    const/16 v0, 0x7d

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 145
    .line 146
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    return-object v0

    .line 150
    nop

    .line 151
    :pswitch_data_96
    .packed-switch 0x4
        :pswitch_a
    .end packed-switch
.end method
