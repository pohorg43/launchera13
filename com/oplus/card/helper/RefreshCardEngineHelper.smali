.class public final Lcom/oplus/card/helper/RefreshCardEngineHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/RefreshCardEngineHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/helper/RefreshCardEngineHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "RefreshCardEngineHelper"


# instance fields
.field private final hostView:Lcom/android/launcher3/card/CommonCardView;

.field private final mEngineUpdateListener:Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/helper/RefreshCardEngineHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/helper/RefreshCardEngineHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->Companion:Lcom/oplus/card/helper/RefreshCardEngineHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/CommonCardView;)V
    .registers 3

    const-string v0, "hostView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->hostView:Lcom/android/launcher3/card/CommonCardView;

    new-instance p1, Lcom/oplus/card/helper/RefreshCardEngineHelper$mEngineUpdateListener$1;

    invoke-direct {p1, p0}, Lcom/oplus/card/helper/RefreshCardEngineHelper$mEngineUpdateListener$1;-><init>(Lcom/oplus/card/helper/RefreshCardEngineHelper;)V

    iput-object p1, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->mEngineUpdateListener:Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;

    return-void
.end method

.method private final readyRefresh()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->hostView:Lcom/android/launcher3/card/CommonCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/EngineCardView;->setEngine(Lcom/oplus/card/helper/SmartEngine;)V

    iget-object p0, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->hostView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/EngineCardView;->setSmartView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getHostView()Lcom/android/launcher3/card/CommonCardView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->hostView:Lcom/android/launcher3/card/CommonCardView;

    return-object p0
.end method

.method public final onAttach()V
    .registers 2

    sget-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    iget-object p0, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->mEngineUpdateListener:Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;

    invoke-virtual {v0, p0}, Lcom/oplus/card/helper/SmartEngineHelper;->addEngineUpdateListener(Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;)V

    return-void
.end method

.method public final onDetach()V
    .registers 2

    sget-object v0, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    iget-object p0, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->mEngineUpdateListener:Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;

    invoke-virtual {v0, p0}, Lcom/oplus/card/helper/SmartEngineHelper;->removeEngineUpdateListener(Lcom/oplus/card/helper/SmartEngineHelper$OnSmartEngineUpdateListener;)V

    return-void
.end method

.method public refreshCardEngineIfNeed()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->hostView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    instance-of v0, v0, Lcom/oplus/card/helper/NormalSmartEngine;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->hostView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    goto :goto_1c

    :cond_15
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    :goto_1c
    const-string v0, "refreshCardEngineIfNeed:"

    const-string v2, "RefreshCardEngineHelper"

    if-eqz v1, :cond_3f

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->hostView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is inVisible."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/card/helper/RefreshCardEngineHelper;->readyRefresh()V

    return-void

    :cond_3f
    iget-object v1, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->hostView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/CommonCardView;->getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/CardModelWrapper;->isCurrentResume()Z

    move-result v1

    if-nez v1, :cond_68

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->hostView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is Not Resume."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/card/helper/RefreshCardEngineHelper;->readyRefresh()V

    return-void

    :cond_68
    invoke-direct {p0}, Lcom/oplus/card/helper/RefreshCardEngineHelper;->readyRefresh()V

    iget-object v0, p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;->hostView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CommonCardView;->getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->getPreViewUiData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object v0

    if-nez v0, :cond_78

    goto :goto_7f

    :cond_78
    invoke-virtual {p0}, Lcom/oplus/card/helper/RefreshCardEngineHelper;->getHostView()Lcom/android/launcher3/card/CommonCardView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/EngineCardView;->obtainViewWithEngine(Lcom/oplus/card/manager/domain/model/UIData;)V

    :goto_7f
    return-void
.end method
