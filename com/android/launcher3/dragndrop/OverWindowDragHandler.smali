.class public Lcom/android/launcher3/dragndrop/OverWindowDragHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/IDragEventHandler;
.implements Lcom/android/launcher3/DragSource;


# static fields
.field public static final DRAG_IN_LAUNCHER_PERCENT:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "OverWindowDragHandler"


# instance fields
.field private mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

.field private mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

.field private mCardManager:Lcom/oplus/card/manager/domain/CardManager;

.field private mClipDescription:Landroid/content/ClipDescription;

.field private mContext:Landroid/content/Context;

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

.field private mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private final mDragCountSufficient:Ljava/lang/Runnable;

.field private mDraggingInLauncher:Z

.field private mEnterLauncher:Z

.field private mEnterLauncherX:F

.field private mEnterLauncherY:F

.field private mGlobalCardView:Lcom/android/launcher3/card/LauncherCardView;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mOriginalView:Landroid/view/View;

.field private mPendingConfigUpdate:Ljava/lang/Runnable;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceHideAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler$1;-><init>(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCountSufficient:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->lambda$onSysDragStart$0(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDraggingInLauncher:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncher:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)Lcom/android/launcher3/dragndrop/DragCardInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    return-object p0
.end method

.method private assembleCardInfo(Lcom/android/launcher3/dragndrop/DragCardInfo;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    new-instance v1, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v1}, Lcom/android/launcher3/card/LauncherCardInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardType()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardId()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getHostId()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    iput v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/card/manager/domain/CardManager;->allocateCardId(I)I

    move-result v3

    iput v3, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    :cond_43
    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initSpans()V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSpanX()I

    move-result v3

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSpanY()I

    move-result v3

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    const/16 v3, -0x64

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardWidth()I

    move-result v3

    iput v3, v1, Lcom/android/launcher3/card/LauncherCardInfo;->minWidth:I

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardHeight()I

    move-result v3

    iput v3, v1, Lcom/android/launcher3/card/LauncherCardInfo;->minHeight:I

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v3}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result p1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_9b

    goto :goto_9c

    :cond_9b
    move v2, v3

    :goto_9c
    iput-boolean v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_116

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->convertFromCard(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "OverWindowDragHandler"

    if-nez p1, :cond_100

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c5

    goto :goto_100

    :cond_c5
    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetProviderInfoByComponentNameName(Landroid/content/ComponentName;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_f7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "assembleCardInfo failed: AppWidgetProviderInfo, CN = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f7
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iput-object v0, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p1, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_116

    :cond_100
    :goto_100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assembleCardInfo failed: ComponentName, configInfo = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    :cond_116
    :goto_116
    return-void
.end method

.method private dragDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_9

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :goto_f
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget-boolean v5, v4, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/high16 v6, 0x3f800000  # 1.0f

    if-eqz v5, :cond_3f

    iget-object v4, v4, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_40

    :cond_3f
    move v4, v6

    :goto_40
    iget-object v5, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-static {v5}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->isUsCardContainer(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-static {v2}, Lcom/android/common/util/LauncherUtil;->getMarginRectForUSCardContainer(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_53

    :cond_4d
    iget-object v5, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v5, v2}, Lcom/android/common/util/LauncherUtil;->getMarginRectForCard(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ShortcutAndWidgetContainer;)Landroid/graphics/Rect;

    move-result-object v5

    :goto_53
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellWidthHeight()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    mul-int/2addr v7, v1

    iget-object v9, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070740

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v6, v4

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v10, v6

    mul-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07021f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    iput v8, v3, Landroid/graphics/Rect;->left:I

    iput v8, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellWidthHeight()[I

    move-result-object v11

    aget v8, v11, v8

    mul-int/2addr v8, v1

    iput v8, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellWidthHeight()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v9, Landroid/graphics/Rect;->left:I

    iput v7, v9, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v6

    iput v1, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v5

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_ce

    new-instance p1, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/common/util/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    invoke-direct {p1, v3, v9, p0, v10}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;ZF)V

    goto :goto_d6

    :cond_ce
    new-instance p0, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/dragndrop/OplusAppWidgetHostViewDrawable;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/Rect;)V

    move-object p1, p0

    :goto_d6
    return-object p1
.end method

.method private synthetic lambda$onSysDragStart$0(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 4

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_f

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mGlobalCardView:Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p0, :cond_f

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->onUpdateCardConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    :cond_f
    return-void
.end method

.method private onSysDragEnd(Landroid/view/DragEvent;)Z
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSysDragEnd: dragEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverWindowDragHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentX:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentY:F

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_29

    return v1

    :cond_29
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->setGlobalDragging(Z)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    instance-of v2, v2, Lcom/android/launcher3/dragndrop/DragDriver$InternalDragDriver;

    if-eqz v2, :cond_40

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    move p1, v1

    :cond_40
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_70

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDraggingInLauncher:Z

    if-nez v0, :cond_70

    new-instance v0, Lcom/android/launcher3/dragndrop/DragResultInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardType()I

    move-result v3

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardId()I

    move-result v4

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getHostId()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/dragndrop/DragResultInfo;-><init>(IIIII)V

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/launcher3/dragndrop/IDragCallback;->notifyWidgetDragEnd(Lcom/android/launcher3/dragndrop/DragResultInfo;)V

    :cond_70
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDraggingInLauncher:Z

    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncher:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mGlobalCardView:Lcom/android/launcher3/card/LauncherCardView;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mPendingConfigUpdate:Ljava/lang/Runnable;

    sget-object p0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->removeGlobalTouchListener()V

    return p1
.end method

.method private onSysDragEnter(Landroid/view/DragEvent;)Z
    .registers 7

    const-string v0, "OverWindowDragHandler"

    const-string/jumbo v1, "onSysDragEnter: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentX:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDraggingInLauncher:Z

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncher:Z

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    const-wide/16 v1, 0x190

    const/4 v3, 0x2

    if-eqz v0, :cond_3e

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v4, v0}, Lcom/android/common/util/LauncherUtil;->checkCardAddEnable(Lcom/android/launcher3/Launcher;I)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result v0

    if-eq v0, v3, :cond_3e

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCountSufficient:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_67

    :cond_3e
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_60

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    invoke-static {v4, v0}, Lcom/android/common/util/LauncherUtil;->checkCardAddEnable(Lcom/android/launcher3/Launcher;I)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result v0

    if-eq v0, v3, :cond_60

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCountSufficient:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_67

    :cond_60
    sget-object v0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->addGlobalTouchListener(Lcom/android/launcher3/Launcher;)V

    :goto_67
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_81
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->onSyncDragEnter()V

    return p1
.end method

.method private onSysDragExited(Landroid/view/DragEvent;)Z
    .registers 4

    const-string v0, "OverWindowDragHandler"

    const-string/jumbo v1, "onSysDragExited: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onDragEvent(Landroid/view/DragEvent;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDraggingInLauncher:Z

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncher:Z

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->onSyncDragExit()V

    sget-object p0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->removeGlobalTouchListener()V

    const/4 p0, 0x1

    return p0
.end method

.method private onSysDragStart(Landroid/view/DragEvent;)Z
    .registers 23

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncherX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncherY:F

    iget v2, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncherX:F

    iput v2, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentX:F

    iput v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentY:F

    const-string/jumbo v1, "onSysDragStart: isDragging = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OverWindowDragHandler"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_49

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    instance-of v1, v1, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;

    if-eqz v1, :cond_49

    return v4

    :cond_49
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mClipDescription:Landroid/content/ClipDescription;

    if-eqz v1, :cond_201

    invoke-virtual {v1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_201

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "drag_config"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_201

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v5, "drag_to_launcher"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_7a

    goto/16 :goto_201

    :cond_7a
    sget-object v1, Lcom/android/launcher3/dragndrop/DragCardInfo;->Companion:Lcom/android/launcher3/dragndrop/DragCardInfo$Companion;

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragCardInfo$Companion;->convertDragInfo(Ljava/lang/String;)Lcom/android/launcher3/dragndrop/DragCardInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    if-nez v1, :cond_a2

    const-string/jumbo v1, "onSysDragStart: DragCardInfo convert failed! "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_a2
    :try_start_a2
    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    if-eqz v1, :cond_1da

    invoke-virtual {v1}, Lcom/android/launcher3/pm/UserCache;->isUserForeground()Z

    move-result v1
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_b0} :catch_1f9

    if-nez v1, :cond_b4

    goto/16 :goto_1da

    :cond_b4
    sget-object v1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->isOneHandedModeActivated()Z

    move-result v1

    if-eqz v1, :cond_c4

    const-string v0, "Drag"

    const-string v1, "global drag in OneHandedMode!"

    invoke-static {v0, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_c4
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_fd

    const-string v1, "cardType not found, dragInfo = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_fc

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_fc
    return v4

    :cond_fd
    iget-object v3, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_108

    move v3, v6

    goto :goto_109

    :cond_108
    move v3, v4

    :goto_109
    iput-boolean v3, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDraggingInLauncher:Z

    iget-object v3, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/dragndrop/DragController;->setGlobalDragging(Z)V

    iget-object v3, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mOriginalView:Landroid/view/View;

    if-eqz v3, :cond_11f

    iget-object v3, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_11f

    move v3, v6

    goto :goto_120

    :cond_11f
    move v3, v4

    :goto_120
    if-nez v3, :cond_136

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-direct {v0, v4}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->assembleCardInfo(Lcom/android/launcher3/dragndrop/DragCardInfo;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->preLoadCardView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_12e

    return v6

    :cond_12e
    new-instance v5, Lcom/android/launcher3/dragndrop/m;

    invoke-direct {v5, v0, v1}, Lcom/android/launcher3/dragndrop/m;-><init>(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    iput-object v5, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mPendingConfigUpdate:Ljava/lang/Runnable;

    goto :goto_163

    :cond_136
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mOriginalView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v5, :cond_151

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mOriginalView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/card/LauncherCardInfo;

    iput-object v5, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    iput-boolean v4, v5, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mOriginalView:Landroid/view/View;

    check-cast v4, Lcom/android/launcher3/card/LauncherCardView;

    goto :goto_15f

    :cond_151
    iget-object v4, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mOriginalView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iput-object v4, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mOriginalView:Landroid/view/View;

    check-cast v4, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    :goto_15f
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_163
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v7, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_172

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v5}, Lcom/android/launcher/togglebar/ToggleBarUtils;->onDragStart(Lcom/android/launcher/Launcher;)V

    :cond_172
    if-eqz v3, :cond_17a

    invoke-direct {v0, v6}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->tryChangeDragDriver(Z)Z

    move-result v5

    if-nez v5, :cond_1d2

    :cond_17a
    new-instance v5, Landroid/graphics/Point;

    iget v7, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncherX:F

    float-to-int v7, v7

    iget v8, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncherY:F

    float-to-int v8, v8

    invoke-direct {v5, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    new-instance v7, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v7}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    iput-object v5, v7, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    iput-object v2, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget v5, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncherX:F

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getTouchPointX()F

    move-result v8

    sub-float/2addr v5, v8

    float-to-int v12, v5

    iget v5, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncherY:F

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getTouchPointY()F

    move-result v8

    sub-float/2addr v5, v8

    float-to-int v13, v5

    move-object v11, v4

    check-cast v11, Lcom/android/launcher3/dragndrop/DraggableView;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v5}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-direct {v0, v4}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->dragDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-nez v3, :cond_1be

    move-object v14, v0

    goto :goto_1c5

    :cond_1be
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    move-object v14, v1

    :goto_1c5
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000  # 1.0f

    const/high16 v19, 0x3f800000  # 1.0f

    move-object/from16 v20, v7

    invoke-virtual/range {v9 .. v20}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    :cond_1d2
    iput-object v2, v0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    return v6

    :cond_1da
    :goto_1da
    :try_start_1da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSysDragStart: user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is NOT foreground."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1f8} :catch_1f9

    return v4

    :catch_1f9
    move-exception v0

    const-string/jumbo v1, "onSysDragStart: isUserForeground exception: "

    invoke-static {v1, v0, v3}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return v4

    :cond_201
    :goto_201
    const-string/jumbo v0, "onSysDragStart: empty dragData!!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private onSysDrop(Landroid/view/DragEvent;)Z
    .registers 11

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentX:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentY:F

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    const-string/jumbo v0, "onSysDrop: mCurrentX = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Drag"

    const-string v3, "OverWindowDragHandler"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_41

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_41
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_6e

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mGlobalCardView:Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v3, :cond_6e

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6e

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mGlobalCardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/oplus/card/manager/domain/ICardView;->setPreviewUiData(Ljava/lang/String;)V

    :cond_6e
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mPendingConfigUpdate:Ljava/lang/Runnable;

    if-eqz v2, :cond_75

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_75
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v2

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v2

    if-nez v2, :cond_a9

    new-instance p1, Lcom/android/launcher3/dragndrop/DragResultInfo;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardType()I

    move-result v4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardId()I

    move-result v5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getHostId()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/dragndrop/DragResultInfo;-><init>(IIIII)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/IDragCallback;->notifyWidgetDragEnd(Lcom/android/launcher3/dragndrop/DragResultInfo;)V

    return v1

    :cond_a9
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onDragEvent(Landroid/view/DragEvent;)Z

    if-eqz v0, :cond_b7

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_b7

    const/4 v1, 0x1

    :cond_b7
    return v1
.end method

.method private preLoadCardView()Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v0, :cond_11

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_9

    goto :goto_11

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "assembleCardInfo must call before construct view."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_6a

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    iget v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    invoke-static {v0, v1}, Lcom/android/common/util/LauncherUtil;->checkCardAddEnable(Lcom/android/launcher3/Launcher;I)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_36
    return-object v3

    :cond_37
    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mContext:Landroid/content/Context;

    const/16 v5, -0x69

    invoke-direct {v1, v2, v4, v5}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardType()I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/widget/WidgetHostViewLoader;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    invoke-virtual {v1, v3, v3}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-object v0

    :cond_6a
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v1, v0}, Lcom/android/common/util/LauncherUtil;->checkCardAddEnable(Lcom/android/launcher3/Launcher;I)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_89
    return-object v3

    :cond_8a
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/card/CardCreator;->inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/dragndrop/DragCardInfo;)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mGlobalCardView:Lcom/android/launcher3/card/LauncherCardView;

    return-object v0
.end method

.method private tryChangeDragDriver(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-nez p1, :cond_13

    return v1

    :cond_13
    new-instance v0, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/DragDriver;->mSecondaryEventConsumer:Ljava/util/function/Consumer;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/dragndrop/DragDriver$SystemDragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragController;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method private tryReplaceHostIfNeed(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    const-string v1, "OverWindowDragHandler"

    if-nez v0, :cond_10

    invoke-interface {p1}, Lcom/oplus/card/manager/domain/ICardView;->executeCardReplaceHost()V

    const-string/jumbo p0, "tryReplaceHostIfNeed: mDragCardInfo is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_10
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_21

    invoke-interface {p1}, Lcom/oplus/card/manager/domain/ICardView;->executeCardReplaceHost()V

    const-string/jumbo p0, "tryReplaceHostIfNeed: drag from AssistantScreen."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_21
    const-string/jumbo p1, "tryReplaceHost: NOT replace: mDragCardInfo = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void
.end method


# virtual methods
.method public animateSurfaceToHide(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentX:F

    iget v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentY:F

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->setCurrentXY(FF)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getTouchPointX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetX:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getTouchPointY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetY:I

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToHide(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    return-void
.end method

.method public animateSurfaceToPosition(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDraggingInLauncher:Z

    if-nez v0, :cond_14

    iget-object v0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mAddingCard:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    return-void

    :cond_14
    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    iget v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentX:F

    iget v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentY:F

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->setCurrentXY(FF)V

    iget v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncherX:F

    iput v0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mEnterLauncherX:F

    iget v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncherY:F

    iput v0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mEnterLauncherY:F

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getTouchPointX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetX:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getTouchPointY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetY:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragSource:I

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToPosition(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mSurfaceHideAnim:Landroid/animation/AnimatorSet;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public cancelSurfaceAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mSurfaceHideAnim:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mSurfaceHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mSurfaceHideAnim:Landroid/animation/AnimatorSet;

    :cond_10
    return-void
.end method

.method public getDragCardInfo()Lcom/android/launcher3/dragndrop/DragCardInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    return-object p0
.end method

.method public getOriginalView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mOriginalView:Landroid/view/View;

    return-object p0
.end method

.method public handleDragEvent(Landroid/view/DragEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    const/4 v1, 0x4

    if-eq v0, v1, :cond_30

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_26

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentX:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCurrentY:F

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_26
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->onSysDragExited(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->onSysDragEnter(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_30
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->onSysDragEnd(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_35
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->onSysDrop(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->onSysDragStart(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public isDraggingInLauncher()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDraggingInLauncher:Z

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getOverlayTranslation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3dcccccd  # 0.1f

    mul-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_23

    :cond_1f
    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncher:Z

    if-eqz p0, :cond_25

    :cond_23
    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 11

    const-string/jumbo p1, "onDropCompleted: success = "

    const-string v0, "OverWindowDragHandler"

    invoke-static {p1, p3, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleCardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez p1, :cond_17

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mAssembleWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v1, :cond_17

    const-string/jumbo p0, "onDropCompleted: mAssembleCard\\WidgetInfo is null."

    invoke-static {p0, p3, v0}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_17
    xor-int/lit8 v5, p3, 0x1

    if-eqz p1, :cond_29

    new-instance v0, Lcom/android/launcher3/dragndrop/DragResultInfo;

    iget v2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v3, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iget v4, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    const/4 v6, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/dragndrop/DragResultInfo;-><init>(IIIII)V

    goto :goto_47

    :cond_29
    new-instance v0, Lcom/android/launcher3/dragndrop/DragResultInfo;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardType()I

    move-result v2

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardId()I

    move-result v3

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getHostId()I

    move-result v4

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragCardInfo:Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getSource()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/dragndrop/DragResultInfo;-><init>(IIIII)V

    :goto_47
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getAssistantDragCallBack()Lcom/android/launcher3/dragndrop/IDragCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/launcher3/dragndrop/IDragCallback;->notifyWidgetDragEnd(Lcom/android/launcher3/dragndrop/DragResultInfo;)V

    iget-boolean p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mEnterLauncher:Z

    if-nez p1, :cond_79

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_69
    if-eqz p2, :cond_78

    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of p2, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p2, :cond_78

    if-eqz p3, :cond_78

    check-cast p1, Lcom/android/launcher3/card/LauncherCardView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->tryReplaceHostIfNeed(Lcom/android/launcher3/card/LauncherCardView;)V

    :cond_78
    return-void

    :cond_79
    if-nez p3, :cond_8c

    new-instance p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;[ILcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->animateSurfaceToHide(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    goto :goto_a2

    :cond_8c
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statWidgetsAndCardsExposure()V

    if-eqz p2, :cond_a2

    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    instance-of p2, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p2, :cond_a2

    check-cast p1, Lcom/android/launcher3/card/LauncherCardView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->tryReplaceHostIfNeed(Lcom/android/launcher3/card/LauncherCardView;)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method public setOriginalView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mOriginalView:Landroid/view/View;

    return-void
.end method

.method public setupDefaultManager()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mCardManager:Lcom/oplus/card/manager/domain/CardManager;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->mContext:Landroid/content/Context;

    return-void
.end method
