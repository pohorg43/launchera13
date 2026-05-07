.class public Lcom/oplus/ext/registry/ExtRegistry;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BASE_CLASS_EXT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/oplus/ext/registry/MultiCreator;",
            ">;"
        }
    .end annotation
.end field

.field private static final BASE_CLASS_EXT_OBJ_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/oplus/ext/registry/MultiObjCreator;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXT_CLASS_CREATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final EXT_OBJ_GETTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/oplus/ext/registry/IExtCreatorObjGetter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ExtRegistry"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/oplus/ext/registry/ExtRegistry;->EXT_CLASS_CREATORS:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/oplus/ext/registry/ExtRegistry;->BASE_CLASS_EXT_MAP:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/oplus/ext/registry/ExtRegistry;->EXT_OBJ_GETTERS:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/oplus/ext/registry/ExtRegistry;->BASE_CLASS_EXT_OBJ_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyOverride(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/oplus/ext/registry/ExtRegistry;->EXT_CLASS_CREATORS:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/model/h1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/model/h1;-><init>(Ljava/util/Map;I)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private static createExtObj(Ljava/lang/Class;Ljava/lang/Class;)Lcom/oplus/ext/core/IExtCreator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/oplus/ext/core/IExtCreator<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/ext/registry/ExtRegistry;->BASE_CLASS_EXT_OBJ_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/ext/registry/MultiObjCreator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ExtRegistry"

    if-eqz v0, :cond_29

    if-eqz p1, :cond_29

    invoke-virtual {v0, p1}, Lcom/oplus/ext/registry/MultiObjCreator;->getObject(Ljava/lang/Class;)Lcom/oplus/ext/core/IExtCreator;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v0, v4, v2

    const-string p1, "create from multi obj creator base:%s, creator:%s"

    invoke-static {v3, p1, v4}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :cond_2a
    :goto_2a
    if-nez v0, :cond_49

    sget-object p1, Lcom/oplus/ext/registry/ExtRegistry;->EXT_OBJ_GETTERS:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ext/registry/IExtCreatorObjGetter;

    if-eqz p0, :cond_49

    invoke-interface {p0}, Lcom/oplus/ext/registry/IExtCreatorObjGetter;->get()Lcom/oplus/ext/core/IExtCreator;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_49

    new-array p0, v2, [Ljava/lang/Object;

    aput-object v0, p0, v1

    const-string p1, "create from obj creator:%s"

    invoke-static {v3, p1, p0}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    return-object v0
.end method

.method private static fetchOverrideList(Landroid/content/Context;)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExt(Ljava/lang/Class;)Lcom/oplus/ext/core/IExtCreator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/oplus/ext/core/IExtCreator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/ext/registry/ExtRegistry;->getExt(Ljava/lang/Class;Ljava/lang/Class;)Lcom/oplus/ext/core/IExtCreator;

    move-result-object p0

    return-object p0
.end method

.method public static getExt(Ljava/lang/Class;Ljava/lang/Class;)Lcom/oplus/ext/core/IExtCreator;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/oplus/ext/core/IExtCreator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0, p1}, Lcom/oplus/ext/registry/ExtRegistry;->createExtObj(Ljava/lang/Class;Ljava/lang/Class;)Lcom/oplus/ext/core/IExtCreator;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "ExtRegistry"

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_20

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v4

    aput-object v1, p1, v3

    const-string p0, "create extObj ext:%s,obj:%s"

    invoke-static {v5, p0, p1}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    return-object v1

    :cond_21
    sget-object v1, Lcom/oplus/ext/registry/ExtRegistry;->BASE_CLASS_EXT_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/ext/registry/MultiCreator;

    if-eqz v1, :cond_45

    if-eqz p1, :cond_45

    invoke-virtual {v1, p1}, Lcom/oplus/ext/registry/MultiCreator;->getCreator(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_46

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object v1, v2, v3

    const-string p1, "create from multi creator base:%s, creator:%s"

    invoke-static {v5, p1, v2}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    :cond_45
    move-object v1, v0

    :cond_46
    :goto_46
    if-nez v1, :cond_62

    sget-object p1, Lcom/oplus/ext/registry/ExtRegistry;->EXT_CLASS_CREATORS:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_62

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_62

    new-array p0, v3, [Ljava/lang/Object;

    aput-object v1, p0, v4

    const-string p1, "create from creator:%s"

    invoke-static {v5, p1, p0}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_62
    if-nez v1, :cond_65

    return-object v0

    :cond_65
    :try_start_65
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/ext/core/IExtCreator;
    :try_end_6b
    .catch Ljava/lang/IllegalAccessException; {:try_start_65 .. :try_end_6b} :catch_6c
    .catch Ljava/lang/InstantiationException; {:try_start_65 .. :try_end_6b} :catch_6c
    .catch Ljava/lang/ClassCastException; {:try_start_65 .. :try_end_6b} :catch_6c

    return-object p0

    :catch_6c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "failed to create instance for:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .registers 3

    invoke-static {p0}, Lcom/oplus/ext/registry/ExtRegistry;->fetchOverrideList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    array-length v0, p0

    if-lez v0, :cond_e

    invoke-static {p1, p0}, Lcom/oplus/ext/registry/ExtRegistry;->parseOverrideList(Ljava/lang/ClassLoader;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    if-eqz p0, :cond_14

    invoke-static {p0}, Lcom/oplus/ext/registry/ExtRegistry;->applyOverride(Ljava/util/Map;)V

    :cond_14
    return-void
.end method

.method private static parseOverrideList(Ljava/lang/ClassLoader;[Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_4
    if-ge v3, v0, :cond_4f

    aget-object v4, p1, v3

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v5, v6, :cond_21

    aget-object v5, v4, v1

    new-array v6, v7, [Ljava/lang/Object;

    aget-object v4, v4, v7

    aput-object v4, v6, v1

    const-string v4, "format error![%s/%s]"

    invoke-static {v4, v5, v6}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4c

    :cond_21
    aget-object v5, v4, v1

    aget-object v6, v4, v7

    :try_start_25
    invoke-virtual {p0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/oplus/ext/registry/ExtRegistry;->validateOverrideItem(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4c

    if-nez v2, :cond_3b

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v8

    :cond_3b
    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3e} :catch_3f

    goto :goto_4c

    :catch_3f
    aget-object v5, v4, v1

    new-array v6, v7, [Ljava/lang/Object;

    aget-object v4, v4, v7

    aput-object v4, v6, v1

    const-string v4, "failed to parse override item[%s/%s]:"

    invoke-static {v4, v5, v6}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4f
    return-object v2
.end method

.method public static registerExt(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lcom/oplus/ext/core/IExtCreator<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TC;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/oplus/ext/registry/ExtRegistry;->registerExt(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public static registerExt(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lcom/oplus/ext/core/IExtCreator<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TC;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_23

    if-nez p0, :cond_5

    goto :goto_23

    :cond_5
    if-eqz p1, :cond_1e

    sget-object v0, Lcom/oplus/ext/registry/ExtRegistry;->BASE_CLASS_EXT_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/ext/registry/MultiCreator;

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1, p2}, Lcom/oplus/ext/registry/MultiCreator;->putClass(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_23

    :cond_15
    new-instance v1, Lcom/oplus/ext/registry/MultiCreator;

    invoke-direct {v1, p1, p2}, Lcom/oplus/ext/registry/MultiCreator;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_1e
    sget-object p1, Lcom/oplus/ext/registry/ExtRegistry;->EXT_CLASS_CREATORS:Ljava/util/Map;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    :goto_23
    return-void
.end method

.method public static registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/oplus/ext/registry/IExtCreatorObjGetter<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    return-void
.end method

.method public static registerObj(Ljava/lang/Class;Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/oplus/ext/registry/IExtCreatorObjGetter<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_23

    if-nez p0, :cond_5

    goto :goto_23

    :cond_5
    if-eqz p1, :cond_1e

    sget-object v0, Lcom/oplus/ext/registry/ExtRegistry;->BASE_CLASS_EXT_OBJ_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/ext/registry/MultiObjCreator;

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1, p2}, Lcom/oplus/ext/registry/MultiObjCreator;->putGetter(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    goto :goto_23

    :cond_15
    new-instance v1, Lcom/oplus/ext/registry/MultiObjCreator;

    invoke-direct {v1, p1, p2}, Lcom/oplus/ext/registry/MultiObjCreator;-><init>(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_1e
    sget-object p1, Lcom/oplus/ext/registry/ExtRegistry;->EXT_OBJ_GETTERS:Ljava/util/Map;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    :goto_23
    return-void
.end method

.method private static validateOverrideItem(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_a
    const/4 v5, 0x1

    if-ge v4, v3, :cond_65

    aget-object v6, v2, v4

    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-nez v7, :cond_14

    goto :goto_62

    :cond_14
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/oplus/ext/core/IExtCreator;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v6, v6, v0

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4e

    aget-object v6, p2, v0

    new-array v7, v5, [Ljava/lang/Object;

    aget-object v5, p2, v5

    aput-object v5, v7, v0

    const-string v5, "interface type param error! [%s/%s]"

    invoke-static {v5, v6, v7}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_62

    :cond_4e
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aget-object v2, p2, v0

    aput-object v2, v1, v0

    aget-object v2, p2, v5

    aput-object v2, v1, v5

    const-string v2, "ExtRegistry"

    const-string v3, "parse ext override item:[%s/%s]"

    invoke-static {v2, v3, v1}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v5

    goto :goto_65

    :cond_62
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_65
    :goto_65
    if-nez v1, :cond_6c

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_2

    :cond_6c
    return v1
.end method
