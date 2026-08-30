###### Class r0.b (r0.b)
.class public final Lr0/b;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Lo3/a;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 7

    .line 1
    new-instance v0, Lo3/a;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lo3/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p2, v1}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lr0/b;->a:Landroid/widget/EditText;

    .line 13
    .line 14
    iput-object v0, p0, Lr0/b;->b:Lo3/a;

    .line 15
    .line 16
    sget-object p1, Lp0/k;->k:Lp0/k;

    .line 17
    .line 18
    if-eqz p1, :cond_59

    .line 19
    .line 20
    invoke-static {}, Lp0/k;->a()Lp0/k;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lp0/k;->b()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p2, v0, :cond_59

    .line 30
    .line 31
    if-nez p3, :cond_21

    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    iget-object p2, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 35
    .line 36
    if-nez p2, :cond_2c

    .line 37
    .line 38
    new-instance p2, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p2, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 44
    .line 45
    :cond_2c
    iget-object p1, p1, Lp0/k;->e:Lp0/f;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object p2, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 51
    .line 52
    iget-object p1, p1, Lp0/f;->c:Lcom/google/firebase/messaging/y;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lq0/b;

    .line 57
    .line 58
    const/4 v0, 0x4

    .line 59
    invoke-virtual {p1, v0}, Lj0/a0;->a(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4c

    .line 64
    .line 65
    iget-object v2, p1, Lj0/a0;->d:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    iget p1, p1, Lj0/a0;->a:I

    .line 70
    .line 71
    add-int/2addr v0, p1

    .line 72
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move p1, v1

    .line 78
    :goto_4d
    const-string v0, "android.support.text.emoji.emojiCompat_metadataVersion"

    .line 79
    .line 80
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 84
    .line 85
    const-string p2, "android.support.text.emoji.emojiCompat_replaceAll"

    .line 86
    .line 87
    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    :cond_59
    return-void
.end method


# virtual methods
.method public final deleteSurroundingText(II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lr0/b;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lr0/b;->b:Lo3/a;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v0, p1, p2, v1}, Lo3/a;->g(Lr0/b;Landroid/text/Editable;IIZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1a

    .line 18
    .line 19
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_19

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    return v1

    .line 27
    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method public final deleteSurroundingTextInCodePoints(II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lr0/b;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lr0/b;->b:Lo3/a;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {p0, v0, p1, p2, v1}, Lo3/a;->g(Lr0/b;Landroid/text/Editable;IIZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1b

    .line 18
    .line 19
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingTextInCodePoints(II)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_19

    .line 24
    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return p1

    .line 28
    :cond_1b
    :goto_1b
    return v1
.end method
