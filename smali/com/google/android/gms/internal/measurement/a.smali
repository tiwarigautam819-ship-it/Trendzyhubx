###### Class com.google.android.gms.internal.measurement.a (com.google.android.gms.internal.measurement.a)
.class public final synthetic Lcom/google/android/gms/internal/measurement/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public synthetic b:Lcom/google/android/gms/internal/measurement/v;


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/measurement/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a;->b:Lcom/google/android/gms/internal/measurement/v;

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/measurement/g6;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/v;->c:Lc5/h;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/g6;-><init>(Lc5/h;)V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a;->b:Lcom/google/android/gms/internal/measurement/v;

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/gms/internal/measurement/g6;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/v;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 21
    .line 22
    const-string v2, "internal.registerCallback"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/g6;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    .line 28
    .line 29
    return-object v1

    .line 30
    nop

    .line 31
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method
