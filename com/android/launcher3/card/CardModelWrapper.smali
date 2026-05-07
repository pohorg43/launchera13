.class public Lcom/android/launcher3/card/CardModelWrapper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "CardModelWrapper"


# instance fields
.field private mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

.field private mCurrentResume:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/card/manager/domain/model/CardModel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/CardModelWrapper;Lcom/android/launcher3/card/cache/CachedEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->lambda$tryUseUiDataFromCache$0(Lcom/android/launcher3/card/cache/CachedEntry;)V

    return-void
.end method

.method private synthetic lambda$tryUseUiDataFromCache$0(Lcom/android/launcher3/card/cache/CachedEntry;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/launcher3/card/cache/CachedEntry;->getUIData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object p1

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->isCardAvailable(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getUiData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "CardModelWrapper"

    const/4 v5, 0x0

    if-nez v1, :cond_46

    if-eqz v0, :cond_46

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "CardModel.uiData is null, use cache.id=%d,type=%d"

    invoke-static {v4, v1, v0}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0, p1, v5}, Lcom/oplus/card/manager/domain/model/CardModel;->receiveUIData(Lcom/oplus/card/manager/domain/model/UIData;Z)V

    goto :goto_65

    :cond_46
    new-array p1, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "CardModel.uiData is loaded, ignore cache.id=%d,type=%d"

    invoke-static {v4, p0, p1}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_65
    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/launcher3/card/CardConstant;->INSTANCE:Lcom/android/launcher3/card/CardConstant;

    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v3

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result p0

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/launcher3/card/CardConstant;->logCardTag(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "CardModelWrapper"

    invoke-static {v0, p1, p0}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method private requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_CREATE()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v1

    if-ne p1, v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->isSeedingCard()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_RESUME()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v3

    if-ne p1, v3, :cond_23

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_SHOW()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p1

    goto :goto_2d

    :cond_23
    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_PAUSE()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v3

    if-ne p1, v3, :cond_2d

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_HIDE()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p1

    :cond_2d
    :goto_2d
    const-string v3, ""

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/card/CardModelWrapper;->requestSeedingCardAction(Lcom/oplus/card/manager/domain/model/CardAction;Ljava/lang/String;)V

    goto :goto_38

    :cond_33
    iget-object v3, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v3, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V

    :goto_38
    if-eqz v2, :cond_4d

    if-eqz v1, :cond_4d

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_UPDATE_DATA()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedParams;->getInitData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/card/CardModelWrapper;->requestSeedingCardAction(Lcom/oplus/card/manager/domain/model/CardAction;Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method private requestSeedingCardAction(Lcom/oplus/card/manager/domain/model/CardAction;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getSeedingAction(Lcom/oplus/card/manager/domain/model/CardAction;Lcom/android/launcher3/card/seed/SeedParams;Ljava/lang/String;)Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V

    return-void
.end method

.method private tryUseUiDataFromCache()V
    .registers 5

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getUiData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5e

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "CardModelWrapper"

    const-string v2, "CardModel.uiData is null, try load cache.id=%d,type=%d"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/card/cache/CardCache;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCardCache()Lcom/android/launcher3/card/cache/CardCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v2

    new-instance v3, Landroidx/core/view/a;

    invoke-direct {v3, p0}, Landroidx/core/view/a;-><init>(Lcom/android/launcher3/card/CardModelWrapper;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/card/cache/CardCache;->getCardCachedEntry(IILcom/android/launcher3/card/cache/CardCache$OnCacheLoadedCallback;)V

    :cond_5e
    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->bindView(Lcom/oplus/card/manager/domain/ICardView;)V

    return-void
.end method

.method public create()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "create, hasCreate = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate()Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_CREATE()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V

    :cond_2c
    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_DESTROY()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V

    return-void
.end method

.method public getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    return-object p0
.end method

.method public getPreViewUiData()Lcom/oplus/card/manager/domain/model/UIData;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getUiData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object p0

    return-object p0
.end method

.method public getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object p0

    return-object p0
.end method

.method public isCurrentResume()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    return p0
.end method

.method public notifyCardManagerDestroy(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCardManagerDestroy dragToAssistant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    if-eqz p1, :cond_26

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p1, p0}, Lcom/oplus/card/manager/domain/CardManager;->stopObserveUIDataChannel(Lcom/oplus/card/manager/domain/model/CardModel;)V

    goto :goto_3f

    :cond_26
    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v1

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/oplus/card/manager/domain/CardManager;->destroyCard(III)V

    :goto_3f
    return-void
.end method

.method public notifyCardReplaceHost()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "notifyCardReplaceHost"

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result v3

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/oplus/card/manager/domain/CardManager;->callReplaceUIDataChannel(IIILcom/oplus/card/manager/domain/model/CardModel;)V

    return-void
.end method

.method public pause()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string/jumbo v0, "pause, mCurrentResume = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    if-nez v0, :cond_2b

    return v1

    :cond_2b
    iput-boolean v1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_PAUSE()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V

    const/4 p0, 0x1

    return p0
.end method

.method public renderFail()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "renderFail"

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_RENDER_FAIL()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V

    return-void
.end method

.method public resetCurrentResumeState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    return-void
.end method

.method public resetUiData()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->resetUiData()V

    :cond_7
    return-void
.end method

.method public resume(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string/jumbo v0, "resume, mCurrentResume = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ignoreState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    if-eqz v0, :cond_28

    if-nez p1, :cond_28

    return v1

    :cond_28
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCurrentResume:Z

    invoke-direct {p0}, Lcom/android/launcher3/card/CardModelWrapper;->tryUseUiDataFromCache()V

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_RESUME()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V

    return p1
.end method

.method public setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_11

    if-eqz p2, :cond_11

    iput-object p1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_SUBSCRIBED()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V

    :cond_11
    iput-object p1, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setCardModel, needSubscribed = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public setPreViewUiData(Lcom/oplus/card/manager/domain/model/UIData;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "setPreViewUiData uiData.size = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/UIData;->getData()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/model/CardModel;->receiveUIData(Lcom/oplus/card/manager/domain/model/UIData;)V

    return-void
.end method

.method public subscribed()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "subscribed"

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_SUBSCRIBED()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V

    return-void
.end method

.method public unSubscribed()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "unSubscribed"

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->logD(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/card/manager/domain/model/CardAction;->Companion:Lcom/oplus/card/manager/domain/model/CardAction$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/model/CardAction$Companion;->getACTION_UNSUBSCRIBED()Lcom/oplus/card/manager/domain/model/CardAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/CardModelWrapper;->requestCardAction(Lcom/oplus/card/manager/domain/model/CardAction;)V

    return-void
.end method

.method public unbindView()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CardModelWrapper;->mCardModel:Lcom/oplus/card/manager/domain/model/CardModel;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->unbindView()V

    return-void
.end method
