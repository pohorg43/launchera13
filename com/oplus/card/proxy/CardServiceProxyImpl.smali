.class public final Lcom/oplus/card/proxy/CardServiceProxyImpl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/card/proxy/CardServiceProxyImpl;

.field public static final KEY_CONNECTOR:Ljava/lang/String; = "&"

.field private static final observeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Ly2/p;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/proxy/CardServiceProxyImpl;

    invoke-direct {v0}, Lcom/oplus/card/proxy/CardServiceProxyImpl;-><init>()V

    sput-object v0, Lcom/oplus/card/proxy/CardServiceProxyImpl;->INSTANCE:Lcom/oplus/card/proxy/CardServiceProxyImpl;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/oplus/card/proxy/CardServiceProxyImpl;->observeMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getObserveMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Ly2/p;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/card/proxy/CardServiceProxyImpl;->observeMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string p0, "clazz"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic observeWithCallbackId(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {p0}, Lcom/oplus/card/util/DispatchersUtil;->cardServer()Lq3/b0;

    move-result-object p0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/oplus/card/proxy/CardServiceProxyImpl$observeWithCallbackId$$inlined$observeWithCallbackId$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/oplus/card/proxy/CardServiceProxyImpl$observeWithCallbackId$$inlined$observeWithCallbackId$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;[BLb3/d;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v0, p3}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final synthetic observeWithCallbackId(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Lb3/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {p0}, Lcom/oplus/card/util/DispatchersUtil;->cardServer()Lq3/b0;

    move-result-object p0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/oplus/card/proxy/CardServiceProxyImpl$observeWithCallbackId$3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p2, v1}, Lcom/oplus/card/proxy/CardServiceProxyImpl$observeWithCallbackId$3;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;[BLb3/d;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v0, p4}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final synthetic replaceObserveWithCallbackId(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {p0}, Lcom/oplus/card/util/DispatchersUtil;->cardServer()Lq3/b0;

    move-result-object p0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/oplus/card/proxy/CardServiceProxyImpl$replaceObserveWithCallbackId$$inlined$replaceObserveWithCallbackId$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/oplus/card/proxy/CardServiceProxyImpl$replaceObserveWithCallbackId$$inlined$replaceObserveWithCallbackId$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;[BLb3/d;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v0, p3}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final synthetic replaceObserveWithCallbackId(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Lb3/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {p0}, Lcom/oplus/card/util/DispatchersUtil;->cardServer()Lq3/b0;

    move-result-object p0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/oplus/card/proxy/CardServiceProxyImpl$replaceObserveWithCallbackId$3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p2, v1}, Lcom/oplus/card/proxy/CardServiceProxyImpl$replaceObserveWithCallbackId$3;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;[BLb3/d;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {p0, v0, p4}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final sendMessageToCardServer(Lcom/oplus/card/manager/domain/model/CardAction;IIILb3/d;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/manager/domain/model/CardAction;",
            "III",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {p0}, Lcom/oplus/card/util/DispatchersUtil;->cardServer()Lq3/b0;

    move-result-object p0

    new-instance v6, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/card/proxy/CardServiceProxyImpl$sendMessageToCardServer$2;-><init>(Lcom/oplus/card/manager/domain/model/CardAction;IIILb3/d;)V

    invoke-static {p0, v6, p5}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final stopObserveWithCallbackId(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {p0}, Lcom/oplus/card/util/DispatchersUtil;->cardServer()Lq3/b0;

    move-result-object p0

    new-instance v0, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/oplus/card/proxy/CardServiceProxyImpl$stopObserveWithCallbackId$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    invoke-static {p0, v0, p3}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_15

    return-object p0

    :cond_15
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final unObserveWithCallbackId(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {p0}, Lcom/oplus/card/util/DispatchersUtil;->cardServer()Lq3/b0;

    move-result-object p0

    new-instance v0, Lcom/oplus/card/proxy/CardServiceProxyImpl$unObserveWithCallbackId$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/oplus/card/proxy/CardServiceProxyImpl$unObserveWithCallbackId$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    invoke-static {p0, v0, p3}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_15

    return-object p0

    :cond_15
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method
