.class public final Lcom/oplus/card/manager/domain/model/CardModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/manager/domain/model/CardModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/manager/domain/model/CardModel$Companion;

.field private static final TAG:Ljava/lang/String; = "CardModel"


# instance fields
.field private cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

.field private final cardId:I

.field private final cardManagerProxy$delegate:Ly2/e;

.field private cardView:Lcom/oplus/card/manager/domain/ICardView;

.field private final config:Lcom/oplus/card/config/domain/model/CardConfigInfo;

.field private hasCreate:Z

.field private final hostId:I

.field private final seedParams:Lcom/android/launcher3/card/seed/SeedParams;

.field private final type:I

.field private uiData:Lcom/oplus/card/manager/domain/model/UIData;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/manager/domain/model/CardModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardModel;->Companion:Lcom/oplus/card/manager/domain/model/CardModel$Companion;

    return-void
.end method

.method public constructor <init>(IIILcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;)V
    .registers 7

    const-class v0, Lcom/oplus/card/manager/domain/ICardManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->type:I

    iput p2, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardId:I

    iput p3, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hostId:I

    iput-object p4, p0, Lcom/oplus/card/manager/domain/model/CardModel;->config:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    iput-object p5, p0, Lcom/oplus/card/manager/domain/model/CardModel;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    sget-object p1, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {p1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_37

    invoke-virtual {p1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Ln3/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.card.di.GlobalDI.injectSingle>"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ly2/e;

    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardManagerProxy$delegate:Ly2/e;

    iput-object p4, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-void

    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "the class are not injected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getCardManagerProxy()Lcom/oplus/card/manager/domain/ICardManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardManagerProxy$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/domain/ICardManagerProxy;

    return-object p0
.end method


# virtual methods
.method public final bindView(Lcom/oplus/card/manager/domain/ICardView;)V
    .registers 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-eqz v0, :cond_c

    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    return-void

    :cond_c
    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->uiData:Lcom/oplus/card/manager/domain/model/UIData;

    if-nez v0, :cond_13

    goto :goto_16

    :cond_13
    invoke-interface {p1, v0}, Lcom/oplus/card/manager/domain/ICardView;->onUpdateUIData(Lcom/oplus/card/manager/domain/model/UIData;)V

    :goto_16
    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-nez v0, :cond_1b

    goto :goto_3a

    :cond_1b
    invoke-interface {p1, v0}, Lcom/oplus/card/manager/domain/ICardView;->onUpdateCardConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_26

    goto :goto_31

    :cond_26
    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedParams;->getCategory()I

    move-result p1

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v2

    if-ne p1, v2, :cond_31

    const/4 v1, 0x1

    :cond_31
    :goto_31
    if-nez v1, :cond_3a

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->saveCardCategory2DB(I)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final getCardConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-object p0
.end method

.method public final getCardId()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardId:I

    return p0
.end method

.method public final getConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->config:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-object p0
.end method

.method public final getHasCreate()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate:Z

    return p0
.end method

.method public final getHostId()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hostId:I

    return p0
.end method

.method public final getSeedCardConfig()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->isSeedingCard()Z

    move-result v0

    if-nez v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    if-nez p0, :cond_13

    goto :goto_40

    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedParams;->getServiceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "service_id"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedParams;->getCreateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "card_create_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedParams;->getCardSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "card_size"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "seedling_entrance"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :goto_40
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "json.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getSeedConfig, callback = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    return-object p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->type:I

    return p0
.end method

.method public final getUiData()Lcom/oplus/card/manager/domain/model/UIData;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->uiData:Lcom/oplus/card/manager/domain/model/UIData;

    return-object p0
.end method

.method public final hasCreate()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate:Z

    return p0
.end method

.method public final isSeedingCard()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_17

    :cond_a
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v0

    if-ne v0, v2, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v3

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_17
    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object p0

    if-nez p0, :cond_21

    :cond_1f
    move v1, v3

    goto :goto_2c

    :cond_21
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedParams;->getCategory()I

    move-result p0

    if-ne p0, v2, :cond_1f

    goto :goto_2c

    :cond_28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2c
    return v1
.end method

.method public final notifyCardConfigChange$OplusLauncher_OPPOPallExportAallRelease(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-nez p0, :cond_c

    goto :goto_f

    :cond_c
    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->onUpdateCardConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    :goto_f
    return-void
.end method

.method public final receiveUIData(Lcom/oplus/card/manager/domain/model/UIData;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/card/manager/domain/model/CardModel;->receiveUIData(Lcom/oplus/card/manager/domain/model/UIData;Z)V

    return-void
.end method

.method public final receiveUIData(Lcom/oplus/card/manager/domain/model/UIData;Z)V
    .registers 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    move-object v1, v2

    goto :goto_15

    :cond_11
    invoke-interface {v1}, Lcom/oplus/card/manager/domain/ICardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", receiveUIData, dataSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/UIData;->getData()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forceChangeCardUI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/UIData;->getForceChangeCardUI()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", updateCache = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->uiData:Lcom/oplus/card/manager/domain/model/UIData;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/UIData;->getForceChangeCardUI()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-nez p0, :cond_55

    goto :goto_59

    :cond_55
    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->logCardInfo()Ljava/lang/String;

    move-result-object v2

    :goto_59
    const-string p0, " data is NOT update, ignore."

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_63
    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->uiData:Lcom/oplus/card/manager/domain/model/UIData;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->type:I

    invoke-virtual {p1, v0}, Lcom/oplus/card/manager/domain/model/UIData;->setCardType(I)V

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-nez v0, :cond_72

    goto :goto_75

    :cond_72
    invoke-interface {v0, p1}, Lcom/oplus/card/manager/domain/ICardView;->onUpdateUIData(Lcom/oplus/card/manager/domain/model/UIData;)V

    :goto_75
    if-eqz p2, :cond_8f

    iget p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hostId:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8f

    sget-object p1, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getCardCache()Lcom/android/launcher3/card/cache/CardCache;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/cache/CardCache;->updateCardCache(Lcom/oplus/card/manager/domain/model/CardModel;)V

    :cond_8f
    return-void
.end method

.method public final requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V
    .registers 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCardAction, action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hasCreate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cardModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardManagerProxy()Lcom/oplus/card/manager/domain/ICardManagerProxy;

    move-result-object v0

    iget v1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->type:I

    iget v2, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardId:I

    iget v3, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hostId:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/oplus/card/manager/domain/ICardManagerProxy;->requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;III)V

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardModel;->Companion:Lcom/oplus/card/manager/domain/model/CardModel$Companion;

    sget-object v1, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_CREATE()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/oplus/card/manager/domain/model/CardModel$Companion;->sameLifeCircle(Lcom/oplus/card/manager/domain/model/CardAction;Lcom/oplus/card/manager/domain/model/CardAction;)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate:Z

    goto :goto_5d

    :cond_50
    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_DESTROY()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/card/manager/domain/model/CardModel$Companion;->sameLifeCircle(Lcom/oplus/card/manager/domain/model/CardAction;Lcom/oplus/card/manager/domain/model/CardAction;)Z

    move-result p1

    if-eqz p1, :cond_5d

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate:Z

    :cond_5d
    :goto_5d
    return-void
.end method

.method public final resetUiData()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_b

    :cond_7
    invoke-interface {v0}, Lcom/oplus/card/manager/domain/ICardView;->logCardInfo()Ljava/lang/String;

    move-result-object v0

    :goto_b
    const-string v2, ", resetUiData"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CardModel"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->uiData:Lcom/oplus/card/manager/domain/model/UIData;

    return-void
.end method

.method public final saveCardCategory2DB(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-interface {v1}, Lcom/oplus/card/manager/domain/ICardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "saveCardCategory2DB category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    if-nez v0, :cond_28

    goto :goto_2b

    :cond_28
    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/seed/SeedParams;->setCategory(I)V

    :goto_2b
    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    if-nez p0, :cond_30

    goto :goto_33

    :cond_30
    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->onCardCategoryGet(I)V

    :goto_33
    return-void
.end method

.method public final setHasCreate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate:Z

    return-void
.end method

.method public final unbindView()V
    .registers 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/card/manager/domain/model/CardModel;->cardView:Lcom/oplus/card/manager/domain/ICardView;

    return-void
.end method
