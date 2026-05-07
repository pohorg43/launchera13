.class public final Lcom/oplus/card/proxy/CardServiceProxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/config/domain/IConfigServiceProxy;
.implements Lcom/oplus/card/manager/domain/ICardManagerProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/proxy/CardServiceProxy$Companion;
    }
.end annotation


# static fields
.field public static final CALLBACK_ID_CARD_CONFIG_CHANGE:Ljava/lang/String; = "card_config_change_to_launcher"

.field public static final CALLBACK_ID_CHANGE_CARD_EVENT:Ljava/lang/String; = "change_card_event_to_launcher"

.field public static final CARD_CONNECTOR:Ljava/lang/String; = "&"

.field public static final CARD_PREFIX:Ljava/lang/String; = "card:"

.field public static final Companion:Lcom/oplus/card/proxy/CardServiceProxy$Companion;

.field public static final HOST_ID_LAUNCHER:Ljava/lang/String; = "1"

.field public static final TAG:Ljava/lang/String; = "CardServiceProxy"

.field private static mIsRegisterCardConfigCallback:Z


# instance fields
.field private final callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private configGetterCallback:Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;

.field private final coroutineScope:Lq3/f0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/proxy/CardServiceProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/proxy/CardServiceProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/proxy/CardServiceProxy;->Companion:Lcom/oplus/card/proxy/CardServiceProxy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/oplus/card/proxy/CardServiceProxy;-><init>(Lq3/f0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lq3/f0;)V
    .registers 3

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy;->coroutineScope:Lq3/f0;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy;->callbackMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lq3/f0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    sget-object p1, Lcom/oplus/card/util/CardScope;->INSTANCE:Lcom/oplus/card/util/CardScope;

    :cond_6
    invoke-direct {p0, p1}, Lcom/oplus/card/proxy/CardServiceProxy;-><init>(Lq3/f0;)V

    return-void
.end method

.method public static final synthetic access$getMIsRegisterCardConfigCallback$cp()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/card/proxy/CardServiceProxy;->mIsRegisterCardConfigCallback:Z

    return v0
.end method

.method public static final synthetic access$setMIsRegisterCardConfigCallback$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/card/proxy/CardServiceProxy;->mIsRegisterCardConfigCallback:Z

    return-void
.end method

.method private final convertToCallbackId(III)Ljava/lang/String;
    .registers 5

    const-string p0, "card:"

    const-string v0, "&"

    invoke-static {p0, p1, v0, p2, v0}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sb.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic convertToCallbackId$default(Lcom/oplus/card/proxy/CardServiceProxy;IIIILjava/lang/Object;)Ljava/lang/String;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x1

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/card/proxy/CardServiceProxy;->convertToCallbackId(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createUIDataChannel(Lkotlin/jvm/functions/Function1;III)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/UIData;",
            "Ly2/p;",
            ">;III)V"
        }
    .end annotation

    move-object v2, p0

    move-object v0, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const-string v1, "cb"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4, v5}, Lcom/oplus/card/proxy/CardServiceProxy;->convertToCallbackId(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/oplus/card/proxy/CardServiceProxyImplKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/launcher3/card/CardConstant;->INSTANCE:Lcom/android/launcher3/card/CardConstant;

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/launcher3/card/CardConstant;->logCardTag(III)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v9, "createUIDataChannel cardName = "

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    new-instance v7, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$uiDataCallback$1;

    invoke-direct {v7, p1}, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$uiDataCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    monitor-enter p0

    :try_start_2c
    iget-object v0, v2, Lcom/oplus/card/proxy/CardServiceProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_4b

    monitor-exit p0

    iget-object v0, v2, Lcom/oplus/card/proxy/CardServiceProxy;->coroutineScope:Lq3/f0;

    const/4 v9, 0x0

    new-instance v11, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2;

    const/4 v8, 0x0

    move-object v1, v11

    move-object v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/oplus/card/proxy/CardServiceProxy$createUIDataChannel$2;-><init>(Lcom/oplus/card/proxy/CardServiceProxy;IIILjava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroyUIDataChannel(Lkotlin/jvm/functions/Function1;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/UIData;",
            "Ly2/p;",
            ">;III)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/oplus/card/proxy/CardServiceProxy;->convertToCallbackId(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/card/CardConstant;->INSTANCE:Lcom/android/launcher3/card/CardConstant;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/launcher3/card/CardConstant;->logCardTag(III)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string p4, "CardServiceProxy, destroyUIDataChannel "

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/oplus/card/proxy/CardServiceProxyImplKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    monitor-enter p0

    :try_start_24
    iget-object p3, p0, Lcom/oplus/card/proxy/CardServiceProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_35

    check-cast p1, Lkotlin/jvm/functions/Function1;

    goto :goto_36

    :cond_35
    move-object p1, p4

    :goto_36
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_48

    monitor-exit p0

    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxy;->coroutineScope:Lq3/f0;

    const/4 v2, 0x0

    new-instance v4, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;

    invoke-direct {v4, p2, v0, p4}, Lcom/oplus/card/proxy/CardServiceProxy$destroyUIDataChannel$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lb3/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getConfigGetterCallback()Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/proxy/CardServiceProxy;->configGetterCallback:Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;

    return-object p0
.end method

.method public registerCardConfigCallback(Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;)V
    .registers 10

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "CardServiceProxy,registerCardConfigCallback"

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$configCallback$1;

    invoke-direct {v0, p1}, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$configCallback$1;-><init>(Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;)V

    const-string v1, "card_config_change_to_launcher"

    invoke-static {v1, p1}, Lcom/oplus/card/proxy/CardServiceProxyImplKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_18
    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2e

    monitor-exit p0

    iget-object v2, p0, Lcom/oplus/card/proxy/CardServiceProxy;->coroutineScope:Lq3/f0;

    const/4 v3, 0x0

    new-instance v5, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;

    const/4 p0, 0x0

    invoke-direct {v5, v0, p0}, Lcom/oplus/card/proxy/CardServiceProxy$registerCardConfigCallback$2;-><init>(Lkotlin/jvm/functions/Function1;Lb3/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerChangeCardEventCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "change_card_event_to_launcher"

    invoke-static {v0, p1}, Lcom/oplus/card/proxy/CardServiceProxyImplKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/oplus/card/proxy/CardServiceProxy$registerChangeCardEventCallback$changeCardEventCallback$1;

    invoke-direct {v1, p1}, Lcom/oplus/card/proxy/CardServiceProxy$registerChangeCardEventCallback$changeCardEventCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    monitor-enter p0

    :try_start_11
    iget-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_27

    monitor-exit p0

    iget-object v2, p0, Lcom/oplus/card/proxy/CardServiceProxy;->coroutineScope:Lq3/f0;

    const/4 v3, 0x0

    new-instance v5, Lcom/oplus/card/proxy/CardServiceProxy$registerChangeCardEventCallback$2;

    const/4 p0, 0x0

    invoke-direct {v5, v1, p0}, Lcom/oplus/card/proxy/CardServiceProxy$registerChangeCardEventCallback$2;-><init>(Lkotlin/jvm/functions/Function1;Lb3/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public replaceUIDataChannel(Lkotlin/jvm/functions/Function1;III)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/UIData;",
            "Ly2/p;",
            ">;III)V"
        }
    .end annotation

    move-object v2, p0

    move-object/from16 v0, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const-string v1, "cb"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4, v5}, Lcom/oplus/card/proxy/CardServiceProxy;->convertToCallbackId(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/oplus/card/proxy/CardServiceProxyImplKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/launcher3/card/CardConstant;->INSTANCE:Lcom/android/launcher3/card/CardConstant;

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/launcher3/card/CardConstant;->logCardTag(III)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "replaceUIDataChannel: callbackId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    new-instance v8, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$uiDataCallback$1;

    invoke-direct {v8, v7, v0}, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$uiDataCallback$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    monitor-enter p0

    :try_start_3b
    iget-object v0, v2, Lcom/oplus/card/proxy/CardServiceProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_5b

    monitor-exit p0

    iget-object v9, v2, Lcom/oplus/card/proxy/CardServiceProxy;->coroutineScope:Lq3/f0;

    const/4 v10, 0x0

    new-instance v12, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;

    const/4 v0, 0x0

    move-object v1, v12

    move-object v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v7, v8

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/oplus/card/proxy/CardServiceProxy$replaceUIDataChannel$2;-><init>(Lcom/oplus/card/proxy/CardServiceProxy;IIILjava/lang/String;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void

    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;III)V
    .registers 13

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxy;->coroutineScope:Lq3/f0;

    new-instance p0, Lcom/oplus/card/proxy/CardServiceProxy$requestCardAction$1;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/oplus/card/proxy/CardServiceProxy$requestCardAction$1;-><init>(Lcom/oplus/card/manager/domain/model/CardAction;IIILb3/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public requestInitConfig()V
    .registers 7

    iget-object v0, p0, Lcom/oplus/card/proxy/CardServiceProxy;->coroutineScope:Lq3/f0;

    new-instance v3, Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lcom/oplus/card/proxy/CardServiceProxy$requestInitConfig$1;-><init>(Lb3/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public final setConfigGetterCallback(Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy;->configGetterCallback:Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;

    return-void
.end method

.method public setupConfigGetterCallback(Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;)V
    .registers 3

    const-string v0, "configGetterCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/card/proxy/CardServiceProxy;->configGetterCallback:Lcom/oplus/card/manager/domain/CardManager$ConfigGetterCallback;

    return-void
.end method

.method public stopObserveUIDataChannel(Lkotlin/jvm/functions/Function1;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/UIData;",
            "Ly2/p;",
            ">;III)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/oplus/card/proxy/CardServiceProxy;->convertToCallbackId(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/card/CardConstant;->INSTANCE:Lcom/android/launcher3/card/CardConstant;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/launcher3/card/CardConstant;->logCardTag(III)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "stopObserveUIDataChannel: callbackId = "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/oplus/card/proxy/CardServiceProxyImplKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    monitor-enter p0

    :try_start_32
    iget-object p3, p0, Lcom/oplus/card/proxy/CardServiceProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_43

    check-cast p1, Lkotlin/jvm/functions/Function1;

    goto :goto_44

    :cond_43
    move-object p1, p4

    :goto_44
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_56

    monitor-exit p0

    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxy;->coroutineScope:Lq3/f0;

    const/4 v2, 0x0

    new-instance v4, Lcom/oplus/card/proxy/CardServiceProxy$stopObserveUIDataChannel$2;

    invoke-direct {v4, p2, v0, p4}, Lcom/oplus/card/proxy/CardServiceProxy$stopObserveUIDataChannel$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lb3/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterCardConfigCallback(Lcom/oplus/card/config/domain/IConfigServiceProxy$Callback;)V
    .registers 11

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v1, "CardServiceProxy,unregisterCardConfigCallback"

    invoke-virtual {v0, v1}, Lcom/oplus/card/util/LogD;->log(Ljava/lang/String;)V

    const-string v0, "card_config_change_to_launcher"

    invoke-static {v0, p1}, Lcom/oplus/card/proxy/CardServiceProxyImplKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    monitor-enter p0

    :try_start_18
    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    check-cast p1, Lkotlin/jvm/functions/Function1;

    goto :goto_2a

    :cond_29
    move-object p1, v2

    :goto_2a
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_3c

    monitor-exit p0

    iget-object v3, p0, Lcom/oplus/card/proxy/CardServiceProxy;->coroutineScope:Lq3/f0;

    const/4 v4, 0x0

    new-instance v6, Lcom/oplus/card/proxy/CardServiceProxy$unregisterCardConfigCallback$2;

    invoke-direct {v6, v0, v2}, Lcom/oplus/card/proxy/CardServiceProxy$unregisterCardConfigCallback$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lb3/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterChangeCardEventCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/oplus/card/manager/domain/model/ChangeCardEvent;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "change_card_event_to_launcher"

    invoke-static {v0, p1}, Lcom/oplus/card/proxy/CardServiceProxyImplKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    monitor-enter p0

    :try_start_11
    iget-object v1, p0, Lcom/oplus/card/proxy/CardServiceProxy;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->isFunctionOfArity(Ljava/lang/Object;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    check-cast p1, Lkotlin/jvm/functions/Function1;

    goto :goto_23

    :cond_22
    move-object p1, v2

    :goto_23
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_35

    monitor-exit p0

    iget-object v3, p0, Lcom/oplus/card/proxy/CardServiceProxy;->coroutineScope:Lq3/f0;

    const/4 v4, 0x0

    new-instance v6, Lcom/oplus/card/proxy/CardServiceProxy$unregisterChangeCardEventCallback$2;

    invoke-direct {v6, v0, v2}, Lcom/oplus/card/proxy/CardServiceProxy$unregisterChangeCardEventCallback$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lb3/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method
