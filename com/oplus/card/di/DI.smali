.class public final Lcom/oplus/card/di/DI;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/card/di/DI;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/di/DI;

    invoke-direct {v0}, Lcom/oplus/card/di/DI;-><init>()V

    sput-object v0, Lcom/oplus/card/di/DI;->INSTANCE:Lcom/oplus/card/di/DI;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final load()V
    .registers 13

    const-class p0, Lcom/oplus/card/manager/domain/ICardManager;

    const-class v0, Lcom/oplus/card/manager/domain/ICardIdRepository;

    const-class v1, Lcom/oplus/card/manager/domain/ICardManagerProxy;

    const-class v2, Lcom/oplus/card/config/domain/ICardConfigInfoManager;

    const-class v3, Lcom/oplus/card/config/domain/ICardTypeRepository;

    const-class v4, Lcom/oplus/card/config/domain/IConfigServiceProxy;

    const-class v5, Lcom/oplus/card/proxy/CardServiceProxy;

    sget-object v6, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    sget-object v7, Lcom/oplus/card/di/DI$load$1;->INSTANCE:Lcom/oplus/card/di/DI$load$1;

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    const-class v9, Landroid/content/Context;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Object of the same class type are injected"

    if-nez v8, :cond_161

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    const-class v10, Landroid/content/Context;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v10

    new-instance v11, Lcom/oplus/card/di/DI$load$$inlined$single$1;

    invoke-direct {v11, v7}, Lcom/oplus/card/di/DI$load$$inlined$single$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v11}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v7

    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/oplus/card/di/DI$load$2;->INSTANCE:Lcom/oplus/card/di/DI$load$2;

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_15b

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v5

    new-instance v10, Lcom/oplus/card/di/DI$load$$inlined$single$2;

    invoke-direct {v10, v7}, Lcom/oplus/card/di/DI$load$$inlined$single$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v10}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v7

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/oplus/card/di/DI$load$3;->INSTANCE:Lcom/oplus/card/di/DI$load$3;

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_155

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v4

    new-instance v8, Lcom/oplus/card/di/DI$load$$inlined$single$3;

    invoke-direct {v8, v5}, Lcom/oplus/card/di/DI$load$$inlined$single$3;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v8}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/oplus/card/di/DI$load$4;->INSTANCE:Lcom/oplus/card/di/DI$load$4;

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_14f

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v3

    new-instance v7, Lcom/oplus/card/di/DI$load$$inlined$single$4;

    invoke-direct {v7, v4}, Lcom/oplus/card/di/DI$load$$inlined$single$4;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v7}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/oplus/card/di/DI$load$5;->INSTANCE:Lcom/oplus/card/di/DI$load$5;

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_149

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v2

    new-instance v5, Lcom/oplus/card/di/DI$load$$inlined$single$5;

    invoke-direct {v5, v3}, Lcom/oplus/card/di/DI$load$$inlined$single$5;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v5}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/oplus/card/di/DI$load$6;->INSTANCE:Lcom/oplus/card/di/DI$load$6;

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_143

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v1

    new-instance v4, Lcom/oplus/card/di/DI$load$$inlined$single$6;

    invoke-direct {v4, v2}, Lcom/oplus/card/di/DI$load$$inlined$single$6;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v4}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/oplus/card/di/DI$load$7;->INSTANCE:Lcom/oplus/card/di/DI$load$7;

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_13d

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v0

    new-instance v3, Lcom/oplus/card/di/DI$load$$inlined$single$7;

    invoke-direct {v3, v1}, Lcom/oplus/card/di/DI$load$$inlined$single$7;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v3}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oplus/card/di/DI$load$8;->INSTANCE:Lcom/oplus/card/di/DI$load$8;

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_137

    invoke-virtual {v6}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object p0

    new-instance v2, Lcom/oplus/card/di/DI$load$$inlined$single$8;

    invoke-direct {v2, v0}, Lcom/oplus/card/di/DI$load$$inlined$single$8;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_137
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_143
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_149
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_155
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_161
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unload()V
    .registers 1

    sget-object p0, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {p0}, Lcom/oplus/card/di/GlobalDI;->destroy()V

    return-void
.end method
