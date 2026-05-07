.class public synthetic Lj/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static synthetic a:[I

.field public static synthetic b:[I

.field public static synthetic c:[I

.field public static synthetic d:[I

.field public static synthetic e:[I


# direct methods
.method public static synthetic declared-synchronized a()[I
    .registers 2

    const-class v0, Lj/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lj/b;->a:[I

    if-nez v1, :cond_e

    const/4 v1, 0x3

    invoke-static {v1}, Lj/b;->g(I)[I

    move-result-object v1

    sput-object v1, Lj/b;->a:[I

    :cond_e
    sget-object v1, Lj/b;->a:[I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic declared-synchronized b()[I
    .registers 2

    const-class v0, Lj/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lj/b;->b:[I

    if-nez v1, :cond_e

    const/4 v1, 0x2

    invoke-static {v1}, Lj/b;->g(I)[I

    move-result-object v1

    sput-object v1, Lj/b;->b:[I

    :cond_e
    sget-object v1, Lj/b;->b:[I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic declared-synchronized c()[I
    .registers 2

    const-class v0, Lj/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lj/b;->c:[I

    if-nez v1, :cond_e

    const/4 v1, 0x3

    invoke-static {v1}, Lj/b;->g(I)[I

    move-result-object v1

    sput-object v1, Lj/b;->c:[I

    :cond_e
    sget-object v1, Lj/b;->c:[I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static com$airbnb$lottie$model$DocumentData$Justification$s$values()[I
    .registers 1

    invoke-static {}, Lj/b;->a()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static com$airbnb$lottie$model$content$PolystarShape$Type$s$values()[I
    .registers 1

    invoke-static {}, Lj/b;->b()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static com$airbnb$lottie$model$content$ShapeStroke$LineCapType$s$values()[I
    .registers 1

    invoke-static {}, Lj/b;->c()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static com$airbnb$lottie$model$content$ShapeStroke$LineJoinType$s$values()[I
    .registers 1

    invoke-static {}, Lj/b;->d()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static com$airbnb$lottie$model$layer$Layer$MatteType$s$values()[I
    .registers 1

    invoke-static {}, Lj/b;->e()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static com$otest$proxy$common$ProviderMethodName$s$valueOf(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lj/b;->o(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static com$otest$proxy$common$protocol$TestLogObserverProtocol$MethodName$s$valueOf(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lj/b;->p(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic declared-synchronized d()[I
    .registers 2

    const-class v0, Lj/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lj/b;->d:[I

    if-nez v1, :cond_e

    const/4 v1, 0x3

    invoke-static {v1}, Lj/b;->g(I)[I

    move-result-object v1

    sput-object v1, Lj/b;->d:[I

    :cond_e
    sget-object v1, Lj/b;->d:[I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic declared-synchronized e()[I
    .registers 2

    const-class v0, Lj/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lj/b;->e:[I

    if-nez v1, :cond_e

    const/4 v1, 0x4

    invoke-static {v1}, Lj/b;->g(I)[I

    move-result-object v1

    sput-object v1, Lj/b;->e:[I

    :cond_e
    sget-object v1, Lj/b;->e:[I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic f(I)I
    .registers 1

    if-eqz p0, :cond_5

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic g(I)[I
    .registers 4

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_b

    add-int/lit8 v2, v1, 0x1

    aput v2, v0, v1

    move v1, v2

    goto :goto_3

    :cond_b
    return-object v0
.end method

.method public static synthetic h(I)V
    .registers 1

    if-eqz p0, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static i(I)Landroid/graphics/Paint$Cap;
    .registers 2

    invoke-static {p0}, Lj/b;->f(I)I

    move-result p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p0

    :cond_c
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p0

    :cond_f
    sget-object p0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method public static j(I)Landroid/graphics/Paint$Join;
    .registers 2

    invoke-static {p0}, Lj/b;->f(I)I

    move-result p0

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    sget-object p0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p0

    :cond_11
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p0

    :cond_14
    sget-object p0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p0
.end method

.method public static synthetic k(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "PROVIDER_PARAM_IS_NULL"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "SHARED_PREFS_PARAM_ILLEGAL"

    return-object p0

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string p0, "PROVIDER_PARAM_ILLEGAL"

    return-object p0

    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    const-string p0, "DEX_NO_EXISTS"

    return-object p0

    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    const-string p0, "INVOKE_METHOD_PARAM_ILLEGAL"

    return-object p0

    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    const-string p0, "SUB_SERVICE_CLASS_NO_EXISTS"

    return-object p0

    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    const-string p0, "METHOD_RESULT_IS_NULL"

    return-object p0

    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    const-string p0, "PROVIDER_METHOD_NAME_ILLEGAL"

    return-object p0

    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    const-string p0, "FAIL"

    return-object p0

    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    const-string p0, "RESOURCE_PROXY_PARAM_IS_NULL"

    return-object p0

    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    const-string p0, "RESOURCE_NAME_IS_NOT_EXIST"

    return-object p0

    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    const-string p0, "RESOURCE_NAME_PARAM_IS_NULL"

    return-object p0

    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    const-string p0, "RESOURCE_ID_IS_VALID"

    return-object p0

    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    const-string p0, "RESOURCE_METHOD_IS_VALID"

    return-object p0

    :cond_5b
    const/16 v0, 0xf

    if-ne p0, v0, :cond_62

    const-string p0, "UNKNOWN_EXCEPTION"

    return-object p0

    :cond_62
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic l(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    const-string/jumbo p0, "provider param is null"

    return-object p0

    :cond_7
    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    const-string/jumbo p0, "shared prefs param illegal"

    return-object p0

    :cond_e
    const/4 v0, 0x3

    if-ne p0, v0, :cond_15

    const-string/jumbo p0, "provider param illegal"

    return-object p0

    :cond_15
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1c

    const-string/jumbo p0, "the dex file no exists"

    return-object p0

    :cond_1c
    const/4 v0, 0x5

    if-ne p0, v0, :cond_22

    const-string p0, "invoke method param is illegal"

    return-object p0

    :cond_22
    const/4 v0, 0x6

    if-ne p0, v0, :cond_28

    const-string p0, "can\'t find the sub service class"

    return-object p0

    :cond_28
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2e

    const-string p0, "invoke method result is null"

    return-object p0

    :cond_2e
    const/16 v0, 0x8

    if-ne p0, v0, :cond_36

    const-string/jumbo p0, "methodStr IllegalArgumentException"

    return-object p0

    :cond_36
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3d

    const-string p0, "execute fail"

    return-object p0

    :cond_3d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_45

    const-string/jumbo p0, "resource proxy param is null"

    return-object p0

    :cond_45
    const/16 v0, 0xb

    if-ne p0, v0, :cond_4d

    const-string/jumbo p0, "resource name is not exist"

    return-object p0

    :cond_4d
    const/16 v0, 0xc

    if-ne p0, v0, :cond_55

    const-string/jumbo p0, "the param of resource name is null in param bundle"

    return-object p0

    :cond_55
    const/16 v0, 0xd

    if-ne p0, v0, :cond_5d

    const-string/jumbo p0, "被测包中找不到资源ID对应资源"

    return-object p0

    :cond_5d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_65

    const-string/jumbo p0, "无定义的资源方法，具体查看资源方法类ResourceProxyMethod"

    return-object p0

    :cond_65
    const/16 v0, 0xf

    if-ne p0, v0, :cond_6c

    const-string p0, " 在resource资源中找不到resName的ID"

    return-object p0

    :cond_6c
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic m(I)I
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    const p0, 0x8370

    return p0

    :cond_7
    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    const p0, 0x812f

    return p0

    :cond_e
    const/4 v0, 0x3

    if-ne p0, v0, :cond_14

    const/16 p0, 0x2901

    return p0

    :cond_14
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic n(I)I
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic o(Ljava/lang/String;)I
    .registers 3

    const-string v0, "Name is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "INVOKE_METHOD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const-string v0, "GET_RESOURCE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p0, 0x2

    return p0

    :cond_19
    const-string v0, "EXCEPTION_HANDLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p0, 0x3

    return p0

    :cond_23
    const-string v0, "TEST_LOG_OBSERVER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 p0, 0x4

    return p0

    :cond_2d
    const-string v0, "GENERIC_SHARED_PREF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 p0, 0x5

    return p0

    :cond_37
    const-string v0, "GENERIC_PROVIDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 p0, 0x6

    return p0

    :cond_41
    const-string v0, "INIT_PROXY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 p0, 0x7

    return p0

    :cond_4b
    const-string v0, "GET_JAR_STATUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const/16 p0, 0x8

    return p0

    :cond_56
    const-string v0, "INJECT_DEX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/16 p0, 0x9

    return p0

    :cond_61
    const-string v0, "POST_DEX_FILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/16 p0, 0xa

    return p0

    :cond_6c
    const-string v0, "TEST_DEBUG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const/16 p0, 0xb

    return p0

    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No enum constant com.otest.proxy.common.ProviderMethodName."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic p(Ljava/lang/String;)I
    .registers 3

    const-string v0, "Name is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "INIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const-string v0, "QUERY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p0, 0x2

    return p0

    :cond_19
    const-string v0, "RELEASE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p0, 0x3

    return p0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No enum constant com.otest.proxy.common.protocol.TestLogObserverProtocol.MethodName."

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
