###### Class f0.i (f0.i)
.class public final Lf0/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lf0/h;


# instance fields
.field public final a:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/getcapacitor/a;->f(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lf0/i;->a:Landroid/os/LocaleList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lf0/i;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/getcapacitor/a;->C(Landroid/os/LocaleList;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lf0/i;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lf0/i;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    check-cast p1, Lf0/h;

    .line 4
    .line 5
    invoke-interface {p1}, Lf0/h;->b()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1, v0}, Lcom/getcapacitor/a;->A(Ljava/lang/Object;Landroid/os/LocaleList;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final get(I)Ljava/util/Locale;
    .registers 3

    .line 1
    iget-object v0, p0, Lf0/i;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/getcapacitor/a;->n(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lf0/i;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/getcapacitor/a;->B(Landroid/os/LocaleList;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lf0/i;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/getcapacitor/a;->x(Landroid/os/LocaleList;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lf0/i;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/getcapacitor/a;->a(Landroid/os/LocaleList;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lf0/i;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/getcapacitor/a;->j(Landroid/os/LocaleList;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
