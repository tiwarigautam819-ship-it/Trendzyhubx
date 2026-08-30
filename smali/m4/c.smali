###### Class m4.c (m4.c)
.class public abstract Lm4/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lm4/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lm4/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm4/c;->a:Lm4/b;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const-string v2, "profile"

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 17
    .line 18
    const-string v2, "email"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
