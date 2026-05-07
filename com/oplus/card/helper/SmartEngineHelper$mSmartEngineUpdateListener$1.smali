.class public final Lcom/oplus/card/helper/SmartEngineHelper$mSmartEngineUpdateListener$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/helper/SmartEngineHelper;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/card/helper/SmartEngineHelper$mSmartEngineUpdateListener$1;->onReceive$lambda-0(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method private static final onReceive$lambda-0(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    sget-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/oplus/card/helper/SmartEngineHelper;->access$initSmartViewApi(Lcom/oplus/card/helper/SmartEngineHelper;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p0, "mSmartEngineUpdateListener.onReceive, intent:"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartEngineHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6b

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_14

    goto :goto_6b

    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    invoke-static {}, Lcom/oplus/card/helper/SmartEngineHelper;->access$getMSmartEngineManager$p()Lcom/oplus/smartsdk/SmartEngineManager;

    move-result-object p0

    if-nez p0, :cond_27

    goto :goto_2c

    :cond_27
    sget-object p2, Lcom/android/launcher3/model/l0;->g:Lcom/android/launcher3/model/l0;

    invoke-virtual {p0, p2}, Lcom/oplus/smartsdk/SmartEngineManager;->getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V

    :goto_2c
    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngineHelper;->getMEngineUpdateListeners()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "SmartEngine PACKAGE_ADDED, listeners size = :"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngineHelper;->getMLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngineHelper;->getMEngineUpdateListeners()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;

    invoke-interface {p1}, Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;->onSmartEngineUpdate()V

    goto :goto_52

    :cond_62
    sget-object p0, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngineHelper;->getMLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_6b
    :goto_6b
    return-void
.end method
