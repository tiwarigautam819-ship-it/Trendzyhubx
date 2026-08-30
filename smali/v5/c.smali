###### Class v5.c (v5.c)
.class public abstract Lv5/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Z

.field public static final b:Lv5/b;

.field public static final c:Lv5/b;

.field public static final d:Lt5/a;

.field public static final e:Lt5/a;

.field public static final f:Lt5/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "java.sql.Date"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :catch_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    sput-boolean v0, Lv5/c;->a:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2b

    .line 12
    .line 13
    new-instance v0, Lv5/b;

    .line 14
    .line 15
    const-class v1, Ljava/sql/Date;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lt5/f;-><init>(Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lv5/c;->b:Lv5/b;

    .line 21
    .line 22
    new-instance v0, Lv5/b;

    .line 23
    .line 24
    const-class v1, Ljava/sql/Timestamp;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lt5/f;-><init>(Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lv5/c;->c:Lv5/b;

    .line 30
    .line 31
    sget-object v0, Lv5/a;->c:Lt5/a;

    .line 32
    .line 33
    sput-object v0, Lv5/c;->d:Lt5/a;

    .line 34
    .line 35
    sget-object v0, Lv5/a;->d:Lt5/a;

    .line 36
    .line 37
    sput-object v0, Lv5/c;->e:Lt5/a;

    .line 38
    .line 39
    sget-object v0, Lv5/a;->e:Lt5/a;

    .line 40
    .line 41
    sput-object v0, Lv5/c;->f:Lt5/a;

    .line 42
    .line 43
    goto :goto_36

    .line 44
    :cond_2b
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lv5/c;->b:Lv5/b;

    .line 46
    .line 47
    sput-object v0, Lv5/c;->c:Lv5/b;

    .line 48
    .line 49
    sput-object v0, Lv5/c;->d:Lt5/a;

    .line 50
    .line 51
    sput-object v0, Lv5/c;->e:Lt5/a;

    .line 52
    .line 53
    sput-object v0, Lv5/c;->f:Lt5/a;

    .line 54
    .line 55
    :goto_36
    return-void
.end method
