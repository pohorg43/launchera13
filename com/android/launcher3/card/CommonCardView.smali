.class public Lcom/android/launcher3/card/CommonCardView;
.super Lcom/android/launcher3/card/EngineCardView;
.source ""

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/CommonCardView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/card/EngineCardView;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/CommonCardView$Companion;

.field private static final TAG:Ljava/lang/String; = "LauncherCardView-Common"


# instance fields
.field private cacheActivated:Z

.field private cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

.field private cardConfigChange:Z

.field private cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

.field private keepResumedMark:Z

.field private final refreshCardEngineHelper$delegate:Ly2/e;

.field private final renderFailRetry$delegate:Ly2/e;

.field private serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

.field private unsubscribedMark:Z

.field private final useNoPermissionHelper$delegate:Ly2/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/CommonCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/CommonCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/CommonCardView;->Companion:Lcom/android/launcher3/card/CommonCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/EngineCardView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->renderFailRetry$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$refreshCardEngineHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$refreshCardEngineHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->refreshCardEngineHelper$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->useNoPermissionHelper$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->renderFailRetry$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$refreshCardEngineHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$refreshCardEngineHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->refreshCardEngineHelper$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->useNoPermissionHelper$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/EngineCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->renderFailRetry$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$refreshCardEngineHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$refreshCardEngineHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->refreshCardEngineHelper$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->useNoPermissionHelper$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/EngineCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {p1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$renderFailRetry$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->renderFailRetry$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$refreshCardEngineHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$refreshCardEngineHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->refreshCardEngineHelper$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/CommonCardView$useNoPermissionHelper$2;-><init>(Lcom/android/launcher3/card/CommonCardView;)V

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->useNoPermissionHelper$delegate:Ly2/e;

    return-void
.end method

.method private final applyDefaultLayoutParams(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final getRefreshCardEngineHelper()Lcom/oplus/card/helper/RefreshCardEngineHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->refreshCardEngineHelper$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/helper/RefreshCardEngineHelper;

    return-object p0
.end method

.method private final getRenderFailRetry()Lcom/android/launcher3/card/RenderFailRetry;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->renderFailRetry$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/RenderFailRetry;

    return-object p0
.end method

.method private final getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->useNoPermissionHelper$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/NoPermissionHelper;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public addNoPermissionView()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->noPermissionViewShowing()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/NoPermissionHelper;->addOrRemoveView(Z)V

    :cond_e
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    const-string v2, "itemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->tryGetCachePicture(Lcom/android/launcher3/card/LauncherCardInfo;)Landroid/graphics/Picture;

    move-result-object v0

    if-nez v0, :cond_32

    goto :goto_65

    :cond_32
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "draw: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " drawPicture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCardBounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherCardView-Common"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    :cond_65
    :goto_65
    return-void
.end method

.method public executeCardDestroy(Z)V
    .registers 4

    const-string v0, "executeCardDestroy -- dragToAssistant: "

    const-string v1, "LauncherCardView-Common"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->notifyCardManagerDestroy(Z)V

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragToAssistant:Z

    :cond_15
    return-void
.end method

.method public executeCardReplaceHost()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->notifyCardReplaceHost()V

    return-void
.end method

.method public findCardView([I)Lcom/android/launcher3/card/LauncherCardView;
    .registers 4

    const-string v0, "ints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    const/4 v1, 0x0

    aget v1, p1, v1

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    const/4 v1, 0x1

    aget p1, p1, v1

    if-ne v0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public final getCacheActivated()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/CommonCardView;->cacheActivated:Z

    return p0
.end method

.method public final getCardConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-object p0
.end method

.method public getCardModel()Lcom/android/launcher3/card/CardModelWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    return-object p0
.end method

.method public final getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    return-object p0
.end method

.method public getErrorCallback()Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getRenderFailRetry()Lcom/android/launcher3/card/RenderFailRetry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/RenderFailRetry;->getErrorCallback()Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;

    move-result-object p0

    return-object p0
.end method

.method public final getKeepResumedMark()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    return p0
.end method

.method public final getServiceInfo()Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    return-object p0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_e
    if-nez v0, :cond_15

    invoke-super {p0}, Lcom/android/launcher3/card/EngineCardView;->getSize()I

    move-result p0

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_19
    return p0
.end method

.method public getUiDataForDrag()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->getPreViewUiData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_b

    goto :goto_13

    :cond_b
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/UIData;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_13

    :cond_12
    move-object v0, p0

    :goto_13
    return-object v0
.end method

.method public final getUnsubscribedMark()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    return p0
.end method

.method public getViewScreenshot(Z)Landroid/graphics/Bitmap;
    .registers 11

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz p1, :cond_23

    new-instance v3, Ly2/i;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_49

    :cond_23
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v3, Ly2/i;

    iget-object v4, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_49
    iget-object v4, v3, Ly2/i;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_137

    iget-object v4, v3, Ly2/i;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-gtz v4, :cond_5f

    goto/16 :goto_137

    :cond_5f
    iget-object v4, v3, Ly2/i;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v3, v3, Ly2/i;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v5, 0x7f0a038a

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0a01c2

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz p1, :cond_af

    const p1, 0x7f0a011f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_96

    goto :goto_af

    :cond_96
    invoke-static {p1}, Lcom/android/common/util/BitmapUtils;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_9d

    goto :goto_af

    :cond_9d
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v4, v7, v8, p1, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object p1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p1, v7}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_af
    :goto_af
    const/4 p1, 0x1

    if-eqz v5, :cond_c8

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const-string/jumbo v8, "noPermissionView.getChildAt(0)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_c4

    move v7, p1

    goto :goto_c5

    :cond_c4
    move v7, v2

    :goto_c5
    if-eqz v7, :cond_c8

    goto :goto_df

    :cond_c8
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v5

    if-nez v5, :cond_d0

    :cond_ce
    move v5, v2

    goto :goto_d7

    :cond_d0
    invoke-virtual {v5}, Lcom/oplus/card/helper/SmartEngine;->isSeedCardEngine()Z

    move-result v5

    if-ne v5, p1, :cond_ce

    move v5, p1

    :goto_d7
    if-eqz v5, :cond_db

    move-object v5, v1

    goto :goto_df

    :cond_db
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object v5

    :goto_df
    if-nez v5, :cond_11f

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v5

    if-nez v5, :cond_e8

    goto :goto_ef

    :cond_e8
    invoke-virtual {v5}, Lcom/oplus/card/helper/SmartEngine;->isSeedCardEngine()Z

    move-result v5

    if-ne v5, p1, :cond_ef

    move v2, p1

    :cond_ef
    :goto_ef
    if-eqz v2, :cond_fc

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMViewScreenshot()Landroid/graphics/Picture;

    move-result-object p1

    if-nez p1, :cond_f8

    goto :goto_fc

    :cond_f8
    invoke-virtual {v4, p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    return-object v3

    :cond_fc
    :goto_fc
    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mPreloadBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_104

    invoke-virtual {p0, v4}, Lcom/android/launcher3/card/LauncherCardView;->drawPreloadImage(Landroid/graphics/Canvas;)V

    goto :goto_11e

    :cond_104
    if-nez v6, :cond_107

    goto :goto_11e

    :cond_107
    invoke-static {v6}, Lcom/android/common/util/BitmapUtils;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_10e

    return-object v1

    :cond_10e
    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->getRadiusArr()[F

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/util/BitmapUtils;->bitmapToPicture(Landroid/graphics/Bitmap;[F)Landroid/graphics/Picture;

    move-result-object p0

    invoke-virtual {v4, p0, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    sget-object p0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p0, p1}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :goto_11e
    return-object v3

    :cond_11f
    invoke-static {v5}, Lcom/android/common/util/BitmapUtils;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_126

    return-object v1

    :cond_126
    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->getRadiusArr()[F

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/util/BitmapUtils;->bitmapToPicture(Landroid/graphics/Bitmap;[F)Landroid/graphics/Picture;

    move-result-object p0

    invoke-virtual {v4, p0, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    sget-object p0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    invoke-virtual {p0, p1}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-object v3

    :cond_137
    :goto_137
    const-string p0, "LauncherCardView-Common"

    const-string p1, "getViewScreenshot, bitmap width and height must be > 0"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getVisibility()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    const/4 p0, 0x4

    :goto_c
    return p0
.end method

.method public handleGetViewCallback(Landroid/view/View;I)Z
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;->handleGetViewCallback(Landroid/view/View;I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    const/16 p1, 0x400

    const/4 v1, 0x1

    if-ne p2, p1, :cond_27

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_1d

    :cond_16
    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate()Z

    move-result p1

    if-ne p1, v1, :cond_1d

    move v0, v1

    :cond_1d
    :goto_1d
    if-nez v0, :cond_24

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->create()V

    :cond_24
    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/CommonCardView;->resumeCard(Z)V

    :cond_27
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2e

    goto :goto_34

    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->applyDefaultLayoutParams(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->updateDragContent()V

    :goto_34
    return v1
.end method

.method public final handleOnPauseForShot()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_16

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->refreshViewScreenshot()V

    :cond_16
    :goto_16
    return-void
.end method

.method public logCardInfo()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v0

    if-nez v0, :cond_b

    const-string p0, "card model is null."

    return-object p0

    :cond_b
    sget-object v0, Lcom/android/launcher3/card/CardConstant;->INSTANCE:Lcom/android/launcher3/card/CardConstant;

    iget-object v1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v1}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v2}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/card/manager/domain/model/CardModel;->getCardId()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->getHostId()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/card/CardConstant;->logCardTag(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public markCacheActivated()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->cacheActivated:Z

    return-void
.end method

.method public markKeepResumedStateOnDetach()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    return-void
.end method

.method public markUnsubscribedOnDetach()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "markUnsubscribedOnDetach"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-Common"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    return-void
.end method

.method public noPermissionViewShowing()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/NoPermissionHelper;->hasShowing()Z

    move-result p0

    return p0
.end method

.method public obtainNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-Common"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-super {p0}, Lcom/android/launcher3/card/LauncherCardView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/NoPermissionHelper;->onAttach()Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    iget-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    if-nez v0, :cond_32

    goto :goto_39

    :cond_32
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/card/helper/SmartEngine;->onVisible(Landroid/view/View;)V

    :goto_39
    return-void

    :cond_3a
    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getRefreshCardEngineHelper()Lcom/oplus/card/helper/RefreshCardEngineHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/card/helper/RefreshCardEngineHelper;->onAttach()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/CardModelWrapper;->bindView(Lcom/android/launcher3/card/LauncherCardView;)V

    :cond_4c
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    if-nez p1, :cond_19

    :cond_14
    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->create()V

    :cond_19
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p0

    if-nez p0, :cond_20

    goto :goto_23

    :cond_20
    invoke-virtual {p0}, Lcom/oplus/card/helper/SmartEngine;->addFailRetryProxy()V

    :goto_23
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p1}, Lcom/oplus/card/helper/SmartEngine;->removeFailRetryProxy()V

    :goto_10
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p1

    if-nez p1, :cond_17

    goto :goto_1e

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/card/helper/SmartEngine;->releaseView(Landroid/view/View;)V

    :goto_1e
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_2a

    :cond_25
    sget-object v0, Lcom/android/launcher3/card/CommonCardView$onDestroy$1;->INSTANCE:Lcom/android/launcher3/card/CommonCardView$onDestroy$1;

    invoke-virtual {p1, v0}, Lcom/oplus/card/helper/SmartEngine;->setCallback(Lkotlin/jvm/functions/Function2;)V

    :goto_2a
    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->destroy()V

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/CardModelWrapper;->notifyCardManagerDestroy(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMDragListener()Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMDragListener()Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMDragListener()Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->setCode(I)V

    :cond_4f
    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_54

    goto :goto_62

    :cond_54
    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :goto_62
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "LauncherCardView-Common"

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    iget-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->cacheActivated:Z

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->clearSpecifiedCard(Lcom/android/launcher3/card/EngineCardView;)V

    :cond_23
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    if-eqz v0, :cond_30

    const-string p0, "keep this card\'s current state, just move to another viewGroup"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_3b

    return-void

    :cond_3b
    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getRefreshCardEngineHelper()Lcom/oplus/card/helper/RefreshCardEngineHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/card/helper/RefreshCardEngineHelper;->onDetach()V

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->unbindView()V

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getRenderFailRetry()Lcom/android/launcher3/card/RenderFailRetry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/RenderFailRetry;->clearRetryRecord()V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_53

    goto :goto_61

    :cond_53
    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :goto_61
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    if-nez v0, :cond_68

    goto :goto_6b

    :cond_68
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->removeFailRetryProxy()V

    :goto_6b
    iget-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_a5

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragToAssistant:Z

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->pause()Z

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->destroy()V

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->unSubscribed()V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/CardModelWrapper;->notifyCardManagerDestroy(Z)V

    goto :goto_8d

    :cond_87
    const-string/jumbo v0, "onDetached -- ignore to unSubscribed because of mDragToAssistant"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8d
    iget-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->cacheActivated:Z

    if-nez v0, :cond_9f

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    if-nez v0, :cond_98

    goto :goto_9f

    :cond_98
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/helper/SmartEngine;->releaseView(Landroid/view/View;)V

    :cond_9f
    :goto_9f
    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->removeDefaultCardViewIfNeed()V

    iput-boolean v2, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    goto :goto_ab

    :cond_a5
    const-string/jumbo v0, "onDetached -- ignore to release because of unsubscribedMark"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ab
    iput-boolean v2, p0, Lcom/android/launcher3/card/CommonCardView;->cacheActivated:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    iput-boolean v2, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragToAssistant:Z

    return-void
.end method

.method public onMeasure(II)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    const-string v1, "mLauncher.workspace"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;->onMeasure(II)V

    return-void

    :cond_19
    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mCurPaddingRect:Landroid/graphics/Rect;

    invoke-interface {p0, v1, v0, p1, v2}, Lcom/android/launcher3/card/IAreaWidget;->calculatePaddingRect(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCurPaddingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;->onMeasure(II)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->handleOnPauseForShot()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->pauseCard()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 7

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->resumeCard(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getResumeRunnableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getResumeRunnableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    :goto_1e
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getResumeRunnableList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    mul-int/lit8 p1, p1, 0x10

    int-to-long v3, p1

    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    if-lt v1, v0, :cond_33

    goto :goto_35

    :cond_33
    move p1, v1

    goto :goto_1e

    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getResumeRunnableList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3c
    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher/Launcher;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/CommonCardView;->resumeCard(Z)V

    :cond_1f
    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_4f

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2c

    :cond_2a
    move p1, v0

    goto :goto_33

    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-ne p1, v1, :cond_2a

    move p1, v1

    :goto_33
    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p1

    if-nez p1, :cond_3d

    :cond_3b
    move v1, v0

    goto :goto_43

    :cond_3d
    invoke-virtual {p1}, Lcom/oplus/card/helper/SmartEngine;->isSeedCardEngine()Z

    move-result p1

    if-ne p1, v1, :cond_3b

    :goto_43
    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_4c

    goto :goto_4f

    :cond_4c
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onUpdateCardConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->isUsOrContainerCard(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->initSeedlingSdkAsync()V

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->refreshCardContentByConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    return-void
.end method

.method public onVisibilityChange(I)V
    .registers 3

    if-nez p1, :cond_5

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-nez p1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-interface {p0, v0}, Lcom/oplus/card/manager/domain/ICardView;->setTextVisible(Z)V

    if-nez p1, :cond_16

    invoke-super {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->onVisibilityChange(I)V

    :cond_16
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "onVisibilityChanged: visibility = "

    const-string v1, "LauncherCardView-Common"

    invoke-static {p2, v0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_c

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/NoPermissionHelper;->updatePermissionSettingColorIfNeeded()V

    :cond_c
    return-void
.end method

.method public pauseCard()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->pause()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_16

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/card/helper/SmartEngine;->onInVisible(Landroid/view/View;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public refreshCardContentByConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "refreshCardContentByConfig:"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-Common"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-eq v0, p1, :cond_4a

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfigChange:Z

    :cond_1e
    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/card/manager/domain/CardManager;->isSeedlingCard(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->obtainViewWithEngine(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    goto :goto_4a

    :cond_30
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p1

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->getPreViewUiData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->getPreViewUiData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->obtainViewWithEngine(Lcom/oplus/card/manager/domain/model/UIData;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public refreshForPermissionChanged(ZZ)V
    .registers 10

    const-string/jumbo v0, "refreshForPermissionChanged hasPermission:"

    const-string v1, ", needReCreate:"

    const-string v2, "LauncherCardView-Common"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_73

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_19

    :cond_14
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_19
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    sget-object v1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v3

    iget v4, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v5, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v6, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/oplus/card/manager/domain/CardManager;->isCardModeCreate(III)Z

    move-result v3

    const-string/jumbo v4, "refreshForPermissionChanged isCreateCard:"

    invoke-static {v3, v4, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_37

    if-nez v3, :cond_4f

    :cond_37
    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p2

    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v3, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    const-string v4, "info"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2, v3, p1}, Lcom/oplus/card/manager/domain/CardManager;->reCreatCard(IIILcom/android/launcher3/card/LauncherCardInfo;)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/card/CardModelWrapper;->setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;Z)V

    :cond_4f
    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->resetCurrentResumeState()V

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->subscribed()V

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/CardModelWrapper;->bindView(Lcom/android/launcher3/card/LauncherCardView;)V

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->recyclePreloadBitmap()V

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/NoPermissionHelper;->addOrRemoveView(Z)V

    goto :goto_a0

    :cond_73
    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->noPermissionViewShowing()Z

    move-result p1

    if-nez p1, :cond_92

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/card/NoPermissionHelper;->addOrRemoveView(Z)V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_92

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->recyclePreloadBitmap()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/CommonCardView;->updatePermissionSettingsView(Z)V

    :cond_92
    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->unbindView()V

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :goto_a0
    return-void
.end method

.method public refreshViewScreenshot()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_17

    :cond_8
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->getCardScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_17

    :cond_f
    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->getRadiusArr()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/util/BitmapUtils;->bitmapToPicture(Landroid/graphics/Bitmap;[F)Landroid/graphics/Picture;

    move-result-object v1

    :goto_17
    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/EngineCardView;->setMViewScreenshot(Landroid/graphics/Picture;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshViewScreenshot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " engine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mViewScreenshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMViewScreenshot()Landroid/graphics/Picture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-Common"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getMViewScreenshot()Landroid/graphics/Picture;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_56
    return-void
.end method

.method public removeDefaultCardViewIfNeed()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/EngineCardView;->setDefaultCard(Lcom/android/launcher3/card/DefaultCardView;)V

    return-void
.end method

.method public resetUiData()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardModelWrapper;->resetUiData()V

    return-void
.end method

.method public final resumeCard(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/card/CommonCardView;->resumeCard(ZZ)V

    return-void
.end method

.method public resumeCard(ZZ)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tryResumeCard: caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-Common"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_90

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_90

    :cond_34
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3d

    goto :goto_44

    :cond_3d
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->interceptResume()Z

    move-result v0

    if-ne v0, v3, :cond_44

    move v2, v3

    :cond_44
    :goto_44
    if-eqz v2, :cond_4c

    const-string p0, "interceptResume for seedlingCard."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4c
    iget-object v0, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->resume(Z)Z

    move-result p1

    if-eqz p1, :cond_8f

    if-eqz p2, :cond_6b

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p1

    if-eqz p1, :cond_6b

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p1

    if-nez p1, :cond_63

    goto :goto_8f

    :cond_63
    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/card/helper/SmartEngine;->onVisible(Landroid/view/View;)V

    goto :goto_8f

    :cond_6b
    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->getPreViewUiData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object p1

    if-eqz p1, :cond_8f

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getResumeRunnableList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8f

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p1

    if-nez p1, :cond_8f

    iget-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->getPreViewUiData()Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->obtainViewWithEngine(Lcom/oplus/card/manager/domain/model/UIData;)V

    :cond_8f
    :goto_8f
    return-void

    :cond_90
    :goto_90
    const-string/jumbo p0, "resumeCard but is land scape or no permission, no need fresh."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCacheActivated(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/CommonCardView;->cacheActivated:Z

    return-void
.end method

.method public final setCardConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardConfig:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    return-void
.end method

.method public setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;)V
    .registers 4

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    if-nez v0, :cond_25

    :cond_f
    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->hasCreate()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iget-object v1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/card/CardModelWrapper;->setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;Z)V

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object v0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getType()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/card/NoPermissionHelper;->initNoPermissionView(Landroid/content/Context;I)V

    return-void
.end method

.method public final setCardModelWrapper(Lcom/android/launcher3/card/CardModelWrapper;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->cardModelWrapper:Lcom/android/launcher3/card/CardModelWrapper;

    return-void
.end method

.method public final setKeepResumedMark(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/CommonCardView;->keepResumedMark:Z

    return-void
.end method

.method public setPreviewUiData(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_c
    const-string/jumbo v1, "setPreviewUiData: s.length = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-Common"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1b

    goto :goto_31

    :cond_1b
    sget-object v0, Lcom/oplus/card/manager/domain/model/UIData;->Companion:Lcom/oplus/card/manager/domain/model/UIData$Companion;

    invoke-virtual {v0, p1}, Lcom/oplus/card/manager/domain/model/UIData$Companion;->convertUIData(Ljava/lang/String;)Lcom/oplus/card/manager/domain/model/UIData;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/CardModelWrapper;->bindView(Lcom/android/launcher3/card/LauncherCardView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CardModelWrapper;->setPreViewUiData(Lcom/oplus/card/manager/domain/model/UIData;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public final setServiceInfo(Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/CommonCardView;->serviceInfo:Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    return-void
.end method

.method public final setUnsubscribedMark(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/CommonCardView;->unsubscribedMark:Z

    return-void
.end method

.method public updatePermissionSettingsView(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    sget-object v1, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    invoke-virtual {v1, v0}, Lcom/android/launcher/AppAdviceCheck;->isAppAdviceCard(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/NoPermissionHelper;->updatePermissionAppAdviceView(Z)V

    goto :goto_1d

    :cond_16
    invoke-direct {p0}, Lcom/android/launcher3/card/CommonCardView;->getUseNoPermissionHelper()Lcom/android/launcher3/card/NoPermissionHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/NoPermissionHelper;->updatePermissionSettingsView(Z)V

    :goto_1d
    return-void
.end method
