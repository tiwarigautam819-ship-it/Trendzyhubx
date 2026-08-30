###### Class y1.o (y1.o)
.class public final Ly1/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:Ljava/util/Map;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 1
    const-string v16, "fb_iap_test_dedup_result"

    .line 2
    .line 3
    const-string v17, "fb_iap_test_dedup_key_used"

    .line 4
    .line 5
    const-string v1, "fb_iap_package_name"

    .line 6
    .line 7
    const-string v2, "fb_iap_subs_auto_renewing"

    .line 8
    .line 9
    const-string v3, "fb_free_trial_period"

    .line 10
    .line 11
    const-string v4, "fb_intro_price_amount_micros"

    .line 12
    .line 13
    const-string v5, "fb_intro_price_cycles"

    .line 14
    .line 15
    const-string v6, "fb_iap_base_plan"

    .line 16
    .line 17
    const-string v7, "is_implicit_purchase_logging_enabled"

    .line 18
    .line 19
    const-string v8, "fb_iap_sdk_supported_library_versions"

    .line 20
    .line 21
    const-string v9, "is_autolog_app_events_enabled"

    .line 22
    .line 23
    const-string v10, "fb_iap_client_library_version"

    .line 24
    .line 25
    const-string v11, "fb_iap_subs_period"

    .line 26
    .line 27
    const-string v12, "fb_iap_purchase_token"

    .line 28
    .line 29
    const-string v13, "fb_iap_non_deduped_event_time"

    .line 30
    .line 31
    const-string v14, "fb_iap_actual_dedup_result"

    .line 32
    .line 33
    const-string v15, "fb_iap_actual_dedup_key_used"

    .line 34
    .line 35
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Li2/t;->p([Ljava/lang/Object;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "fb_iap_product_type"

    .line 44
    .line 45
    const-string v2, "fb_iap_purchase_time"

    .line 46
    .line 47
    const-string v3, "fb_iap_product_id"

    .line 48
    .line 49
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Li2/t;->p([Ljava/lang/Object;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Lr6/d;

    .line 58
    .line 59
    invoke-direct {v2, v0, v1}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lr6/d;

    .line 63
    .line 64
    sget-object v1, Ly1/p;->a:Ly1/p;

    .line 65
    .line 66
    invoke-direct {v0, v1, v2}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Ls6/r;->t(Lr6/d;)Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Ly1/o;->b:Ljava/util/Map;

    .line 74
    .line 75
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly1/o;->a:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ly1/p;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 1
    iget-object v0, p0, Ly1/o;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "key"

    .line 9
    .line 10
    invoke-static {v1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "value"

    .line 14
    .line 15
    invoke-static {v1, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :try_start_11
    sget-object v1, Ly1/e;->f:Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-static {p2}, Lm1/j;->n(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    instance-of v1, p3, Ljava/lang/String;

    .line 24
    .line 25
    if-nez v1, :cond_38

    .line 26
    .line 27
    instance-of v1, p3, Ljava/lang/Number;

    .line 28
    .line 29
    if-eqz v1, :cond_1f

    .line 30
    .line 31
    goto :goto_38

    .line 32
    :cond_1f
    new-instance p1, Lx1/l;

    .line 33
    .line 34
    const-string v0, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    new-array v2, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    aput-object p3, v2, v3

    .line 41
    .line 42
    const/4 p3, 0x1

    .line 43
    aput-object p2, v2, p3

    .line 44
    .line 45
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p2}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_38
    :goto_38
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_46

    .line 62
    .line 63
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_46
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/util/Map;

    .line 76
    .line 77
    if-eqz p1, :cond_51

    .line 78
    .line 79
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_51} :catch_51

    .line 80
    .line 81
    .line 82
    :catch_51
    :cond_51
    return-void
.end method
