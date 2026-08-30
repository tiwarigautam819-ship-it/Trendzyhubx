###### Class com.google.android.gms.internal.measurement.b (com.google.android.gms.internal.measurement.b)
.class public final Lcom/google/android/gms/internal/measurement/b;
.super Lcom/google/android/gms/internal/measurement/j;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/measurement/b;->c:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;
    .registers 5

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/measurement/b;->c:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_8
    return-object p0

    .line 10
    :pswitch_9
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 11
    .line 12
    return-object p1

    .line 13
    :pswitch_c
    new-instance p1, Lcom/google/android/gms/internal/measurement/g;

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
