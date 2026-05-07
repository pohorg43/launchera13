.class public final Lcom/android/launcher3/card/seed/SeedCardEngine;
.super Lcom/oplus/card/helper/SmartEngine;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/seed/SeedCardEngine$Companion;,
        Lcom/android/launcher3/card/seed/SeedCardEngine$InitSuccessCallback;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/seed/SeedCardEngine$Companion;

.field public static final SEEDLING_LOAD_FAILED:I = 0x800

.field public static final SEEDLING_LOAD_FINISHED:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SeedCardEngine"


# instance fields
.field private context:Landroid/content/Context;

.field private final mCardCached:Z

.field private final seedParams:Lcom/android/launcher3/card/seed/SeedParams;

.field private seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

.field private uiDataBytes:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/seed/SeedCardEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/seed/SeedCardEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/seed/SeedCardEngine;->Companion:Lcom/android/launcher3/card/seed/SeedCardEngine$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/card/seed/SeedParams;",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "seedParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/oplus/card/helper/SmartEngine;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    sget-object p1, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->tryGetCacheUSCard(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    iput-boolean p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->mCardCached:Z

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/seed/SeedCardEngine;->createCardName(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/SmartEngine;->setCardName(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$buildSeedCardIntent(Lcom/android/launcher3/card/seed/SeedCardEngine;Lcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/seed/SeedCardEngine;->buildSeedCardIntent(Lcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSeedling$p(Lcom/android/launcher3/card/seed/SeedCardEngine;)Lcom/oplus/seedling/sdk/seedling/ISeedling;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    return-object p0
.end method

.method private final buildSeedCardIntent(Lcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;
    .registers 9

    new-instance p0, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedParams;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedParams;->getCardSize()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedParams;->getInitData()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;-><init>(Ljava/lang/String;ILjava/lang/String;ZJ)V

    return-object p0
.end method


# virtual methods
.method public createCardName(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    const-string v0, ""

    if-nez p1, :cond_7

    goto :goto_3d

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/seed/SeedParams;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/seed/SeedParams;->getCreateType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedParams;->getCardSize()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3c

    goto :goto_3d

    :cond_3c
    move-object v0, p0

    :goto_3d
    return-object v0
.end method

.method public getCardCache()Lcom/oplus/seedling/sdk/seedling/ISeedling;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    return-object p0
.end method

.method public bridge synthetic getCardCache()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getCardCache()Lcom/oplus/seedling/sdk/seedling/ISeedling;

    move-result-object p0

    return-object p0
.end method

.method public getCardScreenshot()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getViewScreenshot()Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getMCardCached()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->mCardCached:Z

    return p0
.end method

.method public final getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    return-object p0
.end method

.method public final getShortcuts()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/seedling/sdk/entity/ShortcutsConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getShortcutsConfigInfo()Ljava/util/List;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public interceptResume()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isCardCached()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->mCardCached:Z

    return p0
.end method

.method public isErrorCode(I)Z
    .registers 2

    const/16 p0, 0x800

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public obtainView([B)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", obtainView: data.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_16

    move-object v2, v1

    goto :goto_1b

    :cond_16
    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SeedCardEngine"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2b

    move-object p1, v1

    goto :goto_73

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-nez v0, :cond_31

    move-object v0, v1

    goto :goto_36

    :cond_31
    invoke-interface {v0, p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->updateData([B)V

    sget-object v0, Ly2/p;->a:Ly2/p;

    :goto_36
    if-nez v0, :cond_47

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->uiDataBytes:[B

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ", seedling is null, update in the future."

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_4a

    goto :goto_4f

    :catchall_4a
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_4f
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_56

    goto :goto_71

    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", updateData: error = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    sget-object p1, Ly2/p;->a:Ly2/p;

    :goto_73
    if-nez p1, :cond_104

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getMCardCached()Z

    move-result p1

    if-eqz p1, :cond_a7

    const-string/jumbo p1, "obtainView， reuse seeding:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getMCardCached()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/seed/SeedCardEngine;->onLoadFinished(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V

    goto :goto_104

    :cond_a7
    :try_start_a7
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_b3

    const-string p1, "context is null, startSeedling failed"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b3
    sget-object p1, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedCardClient;->seedingManager()Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v0

    if-nez v0, :cond_bc

    goto :goto_d0

    :cond_bc
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardEngine;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/card/seed/SeedCardEngine;->buildSeedCardIntent(Lcom/android/launcher3/card/seed/SeedParams;)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    move-result-object v3

    invoke-interface {v0, v1, v3, p0}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->startSeedling(Landroid/content/Context;Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;)V

    sget-object v1, Ly2/p;->a:Ly2/p;

    :goto_d0
    if-nez v1, :cond_da

    new-instance v0, Lcom/android/launcher3/card/seed/SeedCardEngine$obtainView$2$1$1$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/seed/SeedCardEngine$obtainView$2$1$1$1;-><init>(Lcom/android/launcher3/card/seed/SeedCardEngine;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->addEngineCallback(Lcom/android/launcher3/card/seed/SeedCardEngine$InitSuccessCallback;)V

    :cond_da
    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_dc
    .catchall {:try_start_a7 .. :try_end_dc} :catchall_dd

    goto :goto_e2

    :catchall_dd
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_e2
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_e9

    goto :goto_104

    :cond_e9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", obtainView: error = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_104
    :goto_104
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$DefaultImpls;->onFailed(Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;ILjava/lang/String;)V

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .registers 4

    const-string v0, "errorMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onFailed: errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SeedCardEngine"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCallback()Lkotlin/jvm/functions/Function2;

    move-result-object p0

    const/16 p1, 0x800

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onInVisible(Landroid/view/View;)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", onInVisible = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getOnVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "SeedCardEngine"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-nez p1, :cond_21

    goto :goto_31

    :cond_21
    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getOnVisible()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/card/helper/SmartEngine;->setOnVisible(Z)V

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->onHide()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->endRecordExposeTime()V

    :cond_31
    :goto_31
    return-void
.end method

.method public onLoadFinished(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
    .registers 5

    const-string/jumbo v0, "seedling"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onLoadFinished: seedling = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedCardEngine"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    new-instance v1, Lcom/android/launcher3/card/seed/SeedCardEngine$onLoadFinished$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/card/seed/SeedCardEngine$onLoadFinished$1;-><init>(Lcom/android/launcher3/card/seed/SeedCardEngine;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/seed/SeedParams;->setPageIdGetter(Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getUpkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/seed/SeedParams;->setUpkVersion(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->uiDataBytes:[B

    if-eqz v0, :cond_56

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->updateData([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->uiDataBytes:[B

    :cond_56
    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onReceiveData(Lcom/oplus/seedling/sdk/seedling/ISeedling;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$DefaultImpls;->onReceiveData(Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;Lcom/oplus/seedling/sdk/seedling/ISeedling;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V

    return-void
.end method

.method public onVisible(Landroid/view/View;)V
    .registers 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", onVisible = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getOnVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SeedCardEngine"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-nez p1, :cond_26

    goto :goto_36

    :cond_26
    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getOnVisible()Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/card/helper/SmartEngine;->setOnVisible(Z)V

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->onShow()V

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->beginRecordExposeTime()V

    :cond_36
    :goto_36
    return-void
.end method

.method public releaseView(Landroid/view/View;)V
    .registers 3

    const-string/jumbo p1, "releaseView: seedling = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SeedCardEngine"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-nez p1, :cond_28

    goto :goto_2b

    :cond_28
    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->destroy()V

    :goto_2b
    iget-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    invoke-static {p1}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->unregister(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->seedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;->context:Landroid/content/Context;

    return-void
.end method
