.class public final Lcom/android/launcher3/folder/big/BigFolderIcon;
.super Lcom/android/launcher3/folder/OplusFolderIcon;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/IAreaWidget;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/folder/OplusFolderIcon;",
        "Lcom/android/launcher3/card/IAreaWidget;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field public static final AREA_NOT_AT_FOLDER_ICON:I = -0x1

.field public static final AREA_NOT_IN_FOLDER_BG:I = -0x2

.field public static final Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

.field public static final DEBUG_INDICATOR:Z = false

.field public static final DEBUG_LAYOUT:Z = false

.field public static final DOT_ANIMATION_DURATION:J = 0x190L

.field public static final DOT_ANIMATION_FLOAT_0:F = 0.0f

.field public static final DOT_ANIMATION_FLOAT_255:F = 255.0f

.field public static final GUIDE_TAG:Ljava/lang/String; = "BigFolderGuide"

.field public static final INDICATOR_TAG:Ljava/lang/String; = "FolderIndicator"

.field public static final INVALID_PAGE:I = -0x1

.field private static final MAX_ITEMS_PAGE:I

.field private static final SCALE_RATE_FOR_DRAG:F = 1.05f

.field private static final SCROLL_END_ANIMATION_DELAY:J

.field public static final SCROLL_HIDE_CONTENT_DURATION:J = 0x12cL

.field private static final SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

.field public static final SCROLL_SHOW_CONTENT_DELAY:J = 0x43L

.field public static final SCROLL_SHOW_CONTENT_DURATION:J = 0x15eL

.field public static final SCROLL_TO_ORIGINAL_PAGE_DELAY:J = 0x1b1L

.field private static final TAG:Ljava/lang/String; = "BigFolderIcon"


# instance fields
.field private alarm:Lcom/android/launcher3/Alarm;

.field private bgRect:Landroid/graphics/Rect;

.field private convertAnimBuilder:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

.field private dotAnim:Landroid/animation/ValueAnimator;

.field private iconWidth:I

.field private indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

.field private indicatorShowing:Z

.field private isScrolling:Z

.field private leftPage:I

.field private longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

.field private mBgChangeObserver:Landroid/database/ContentObserver;

.field private nextPage:I

.field private originalPage:I

.field private rightPage:I

.field private scrollDistance:F

.field private scrollEndActionRunnable:Ljava/lang/Runnable;

.field public touchController:Lcom/android/launcher3/folder/big/BigFolderTouchController;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v0

    sput v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->MAX_ITEMS_PAGE:I

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isRmSearchEntrySupport()Z

    move-result v0

    if-eqz v0, :cond_19

    const-wide/16 v0, 0xc8

    goto :goto_1b

    :cond_19
    const-wide/16 v0, 0x1f4

    :goto_1b
    sput-wide v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_END_ANIMATION_DELAY:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/android/launcher3/folder/big/b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/folder/big/b;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;I)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderIcon$mBgChangeObserver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon$mBgChangeObserver$1;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mBgChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/android/launcher3/folder/big/b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/folder/big/b;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;I)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/launcher3/folder/big/BigFolderIcon$mBgChangeObserver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon$mBgChangeObserver$1;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mBgChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static final synthetic access$getMAX_ITEMS_PAGE$cp()I
    .registers 1

    sget v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->MAX_ITEMS_PAGE:I

    return v0
.end method

.method public static final synthetic access$getMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/OplusBubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    return-object p0
.end method

.method public static final synthetic access$getMInfo$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/model/data/FolderInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method public static final synthetic access$getMPreviewItemManager$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/folder/PreviewItemManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    return-object p0
.end method

.method public static final synthetic access$getMPreviewVerifier$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;)Lcom/android/launcher3/folder/FolderGridOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    return-object p0
.end method

.method public static final synthetic access$getSCROLL_INDICATOR_SHOW_PATH$cp()Landroid/view/animation/PathInterpolator;
    .registers 1

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method public static final synthetic access$initPageIndicator(Lcom/android/launcher3/folder/big/BigFolderIcon;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->initPageIndicator(I)V

    return-void
.end method

.method public static final synthetic access$refreshBackground(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->refreshBackground()V

    return-void
.end method

.method public static final synthetic access$setAlarm$p(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    return-void
.end method

.method public static final synthetic access$setFolder(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/Folder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    return-void
.end method

.method public static final synthetic access$setMDotRenderer$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/icons/DotRenderer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    return-void
.end method

.method public static final synthetic access$setMFolderName$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/OplusBubbleTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    return-void
.end method

.method public static final synthetic access$setMInfo$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/model/data/FolderInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-void
.end method

.method public static final synthetic access$setMLauncher$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static final synthetic access$setMPreviewVerifier$p$s-753258745(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/FolderGridOrganizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    return-void
.end method

.method public static final synthetic access$updatePreviewItems(Lcom/android/launcher3/folder/big/BigFolderIcon;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    return-void
.end method

.method private final cancelExeScrollEndAction()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    iget-object v3, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    :goto_12
    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_20

    :cond_1b
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_20
    :goto_20
    return-void
.end method

.method private static final exposureForWorkspace$lambda-7(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static final fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/big/BigFolderIcon;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p0

    return-object p0
.end method

.method private final initPageIndicator(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    :goto_8
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez p0, :cond_d

    goto :goto_11

    :cond_d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setCurrentPosition(I)V

    :goto_11
    return-void
.end method

.method private final mapRange(FFF)F
    .registers 4

    invoke-static {p3, p2, p1, p2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onItemSizeChanged$lambda-3(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method private final onItemSizeChanged()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v1, :cond_66

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    if-lez v1, :cond_66

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    if-ne v0, v1, :cond_32

    move v0, v2

    goto :goto_33

    :cond_32
    move v0, v3

    :goto_33
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setMPreviewPage(I)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance(F)V

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    :cond_65
    move-object v0, v1

    :cond_66
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recreateCurrentPage()V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mCurrentPreviewItems:Ljava/util/List;

    const-string v5, "previewItems"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_7c

    goto :goto_8c

    :cond_7c
    sget-object v1, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const-string v6, "mInfo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    :goto_8c
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_96

    const/4 v0, 0x0

    goto :goto_a2

    :cond_96
    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->getDotsCount()I

    move-result v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_a2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_b2

    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    :cond_b2
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-nez v0, :cond_b7

    goto :goto_bf

    :cond_b7
    new-instance v1, Lcom/android/launcher3/folder/big/a;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher3/folder/big/a;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    :goto_bf
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-nez v0, :cond_c4

    goto :goto_c9

    :cond_c4
    const-wide/16 v1, 0x1b1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :goto_c9
    iput v4, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    iput v4, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method private static final onItemSizeChanged$lambda-3(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapToOriginalPage(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->exposureForWorkspace$lambda-7(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method private static final playItemDotAnimation$lambda-8(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000  # 255.0f

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setMDotAlpha(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setMDotScale(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->playItemDotAnimation$lambda-8(Lcom/android/launcher3/folder/big/BigFolderIcon;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable$lambda-2(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void
.end method

.method private final refreshBackground()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz v0, :cond_12

    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    if-eqz v1, :cond_12

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->refreshBgDrawable()V

    :cond_12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private final registerBgColorListener()V
    .registers 4

    const-string v0, "launcher_folder_bg_parameter"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mBgChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_14
    return-void
.end method

.method private static final scrollEndActionRunnable$lambda-2(Lcom/android/launcher3/folder/big/BigFolderIcon;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setIndicatorShowing(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_34

    :cond_17
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_34

    :cond_1e
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    sget-object v1, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_34
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->folderNameSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_3b

    return-void

    :cond_3b
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p0, :cond_40

    goto :goto_5e

    :cond_40
    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-nez p0, :cond_47

    goto :goto_5e

    :cond_47
    const-wide/16 v0, 0x15e

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x43

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5e
    :goto_5e
    return-void
.end method

.method private final snapDesPageForDrag()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :goto_8
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    int-to-float v3, v2

    add-float/2addr v0, v3

    int-to-float v3, v1

    cmpg-float v4, v0, v3

    if-gtz v4, :cond_1c

    return-void

    :cond_1c
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v4, v1

    if-nez v4, :cond_34

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->getDotsCount()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    :cond_34
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    div-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(I)V

    return-void
.end method

.method private final snapToOriginalPage(Z)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    const-string v2, "info"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v1, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setDotsCount(I)V

    :goto_17
    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    if-ne v0, v1, :cond_32

    if-nez p1, :cond_3b

    :cond_32
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(I)V

    :cond_3b
    return-void
.end method

.method private final unRegisterBgColorListener()V
    .registers 2

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->mBgChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final checkPageValid(I)I
    .registers 2

    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconPageNum()I

    move-result p0

    if-lt p1, p0, :cond_9

    goto :goto_a

    :cond_9
    return p1

    :cond_a
    :goto_a
    const/4 p0, -0x1

    return p0
.end method

.method public final createItemIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/folder/big/BigFolderItemIcon;
    .registers 10

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMItemRectArray()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_23

    move v2, v3

    goto :goto_24

    :cond_23
    move v2, v4

    :goto_24
    if-eqz v2, :cond_3c

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3c

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recomputePreviewDrawingParams()V

    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b5

    :goto_42
    add-int/lit8 v2, v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderPreviewItemManager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMItemRectArray()Landroid/util/SparseArray;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v6, "mContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v5, p1, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->getNewIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getIconRectBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v3, v5, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setParentFolderIcon(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setIndex(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setItemInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_b0
    if-lt v2, v1, :cond_b3

    goto :goto_b5

    :cond_b3
    move v4, v2

    goto :goto_42

    :cond_b5
    :goto_b5
    const/4 p0, 0x0

    return-object p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->convertAnimBuilder:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    if-eqz v0, :cond_75

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_75

    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getIconVisible()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->superDispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->convertAnimBuilder:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->getBgParams()Lcom/android/launcher3/folder/big/ConvertBgParams;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->drawBackground(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/big/ConvertBgParams;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getTranX()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    const/4 v4, 0x1

    if-nez v2, :cond_45

    move v2, v4

    goto :goto_46

    :cond_45
    move v2, v1

    :goto_46
    if-eqz v2, :cond_5a

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getTranY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_51

    move v1, v4

    :cond_51
    if-nez v1, :cond_54

    goto :goto_5a

    :cond_54
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    goto :goto_71

    :cond_5a
    :goto_5a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getTranX()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/ConvertBgParams;->getTranY()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_75
    :goto_75
    invoke-super {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_26

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    if-nez p0, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    :goto_24
    const/4 p0, 0x1

    return p0

    :cond_26
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    if-nez p0, :cond_31

    goto :goto_34

    :cond_31
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_34
    :goto_34
    return v0
.end method

.method public drawDot(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic exposureForWorkspace(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->exposureForWorkspace(Z)V

    return-void
.end method

.method public exposureForWorkspace(Z)V
    .registers 9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->exposureForWorkspace(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    move-object v0, v2

    goto :goto_1b

    :cond_f
    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->getDotsCount()I

    move-result v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    if-gtz v0, :cond_6a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2e

    return-void

    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    if-nez p1, :cond_36

    move-object p1, v2

    goto :goto_3e

    :cond_36
    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_3e
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    if-nez p1, :cond_4b

    goto :goto_4e

    :cond_4b
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez p1, :cond_53

    goto :goto_5b

    :cond_53
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_5b
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez p0, :cond_66

    goto :goto_69

    :cond_66
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->logInfo()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BigFolderIcon"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "exposureForWorkspace exposure = "

    const-string v6, ", folderName.alpha = "

    invoke-static {v5, p1, v6}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v6

    if-nez v6, :cond_83

    goto :goto_8b

    :cond_83
    invoke-virtual {v6}, Landroid/widget/TextView;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_8b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9c

    return-void

    :cond_9c
    if-nez p1, :cond_bf

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v0, :cond_a3

    goto :goto_ad

    :cond_a3
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_aa

    goto :goto_ad

    :cond_aa
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :goto_ad
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_b2

    goto :goto_bc

    :cond_b2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_b9

    goto :goto_bc

    :cond_b9
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :goto_bc
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->cancelExeScrollEndAction()V

    :cond_bf
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-nez v0, :cond_c4

    goto :goto_c7

    :cond_c4
    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :goto_c7
    iput-boolean v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    const/4 v2, 0x0

    if-nez v0, :cond_cf

    goto :goto_d2

    :cond_cf
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_d2
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_d7

    goto :goto_da

    :cond_d7
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_da
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    if-nez v0, :cond_e1

    goto :goto_e4

    :cond_e1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_e4
    if-nez p1, :cond_e7

    return-void

    :cond_e7
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-nez p1, :cond_ec

    goto :goto_f1

    :cond_ec
    sget-wide v3, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_END_ANIMATION_DELAY:J

    invoke-virtual {p1, v3, v4}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :goto_f1
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-nez p1, :cond_f6

    goto :goto_fe

    :cond_f6
    new-instance v0, Lcom/android/launcher3/folder/big/a;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/folder/big/a;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    :goto_fe
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p1

    if-eqz p1, :cond_10f

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPage(I)V

    :cond_10f
    return-void
.end method

.method public getAreaType()Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->BIG_FOLDER:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    return-object p0
.end method

.method public final getBgRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getBgRectInDragLayer(Lcom/android/launcher3/dragndrop/DragLayer;)Landroid/graphics/Rect;
    .registers 6

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMSpacingConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getConvertAnimBuilder()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->convertAnimBuilder:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    return-object p0
.end method

.method public final getDotAnim()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getFolderIconBounds(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "outBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getIconPageNum()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v0

    div-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getIconWidth()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result p0

    return p0
.end method

.method public final getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    return-object p0
.end method

.method public final getIndicatorShowing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    return p0
.end method

.method public final getItemWithPosition([F)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 10

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderPreviewItemManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMItemRectArray()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_3d

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    aget v6, p1, v2

    const/4 v7, 0x1

    aget v7, p1, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-object p0

    :cond_38
    if-lt v4, v1, :cond_3b

    goto :goto_3d

    :cond_3b
    move v3, v4

    goto :goto_1a

    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLeftPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    return p0
.end method

.method public final getLocalCenterAndIndexForBig(III[I)F
    .registers 7

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v1

    div-int/2addr p1, v1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v1

    div-int v1, p2, v1

    if-eq p1, v1, :cond_14

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result p1

    goto :goto_1a

    :cond_14
    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result p1

    rem-int p1, p2, p1

    :goto_1a
    invoke-super {p0, p1, p3, p4}, Lcom/android/launcher3/folder/OplusFolderIcon;->getLocalCenterForIndex(II[I)F

    move-result p0

    return p0
.end method

.method public getLocalCenterForIndex(II[I)F
    .registers 6

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v1

    if-lt p1, v1, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getLocalCenterForIndex(II[I)F

    move-result p0

    goto :goto_16

    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/OplusFolderIcon;->getLocalCenterForIndex(II[I)F

    move-result p0

    :goto_16
    return p0
.end method

.method public final getLongClickEffectHandler()Lcom/android/launcher3/card/LongClickEffectHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    return-object p0
.end method

.method public final getNextPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    return p0
.end method

.method public final getOriginalPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    return p0
.end method

.method public bridge synthetic getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderPreviewItemManager"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    return-object p0
.end method

.method public final getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderGridOrganizer"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    return-object p0
.end method

.method public final getRightPage()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    return p0
.end method

.method public getScaleValueWhenDrag()F
    .registers 1

    const p0, 0x3f866666  # 1.05f

    return p0
.end method

.method public final getScrollDistance()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollDistance:F

    return p0
.end method

.method public final getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->touchController:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string/jumbo p0, "touchController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getViewType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .registers 3

    const-string p0, "grid"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "out"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final inIconsRectArea(FF)I
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMIconsRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, -0x2

    return p0

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMItemRectArray()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_25

    return v2

    :cond_25
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getCurrentPageParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v2

    if-ltz p0, :cond_58

    :goto_35
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_53

    const-string p0, "inIconsRectArea x = "

    const-string v0, ", y = "

    const-string v2, ", index = "

    invoke-static {p0, p1, v0, p2, v2}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "BigFolderIcon"

    invoke-static {p0, v1, p1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v1

    :cond_53
    if-le v3, p0, :cond_56

    goto :goto_58

    :cond_56
    move v1, v3

    goto :goto_35

    :cond_58
    :goto_58
    return v2
.end method

.method public final inSwipeArea(FF)Z
    .registers 7

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMIconsRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingX()F

    move-result v3

    add-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingY()F

    move-result v3

    add-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingX()F

    move-result v3

    add-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingY()F

    move-result p0

    add-float/2addr p0, v2

    sub-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inSwipeArea: rect = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", x = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BigFolderIcon"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public init()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    invoke-direct {v0}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    new-instance v0, Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/LongClickEffectHandler;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-super {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->init()V

    return-void
.end method

.method public final initTouch()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderTouchController;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v2, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setTouchController(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V

    return-void
.end method

.method public isBigFolderIcon()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isEventInValidTouchArea(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMIconsRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public final isScrolling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    return p0
.end method

.method public isSmallIcon()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final logInfo()Ljava/lang/String;
    .registers 5

    const-string v0, "BF-"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const-string v2, ""

    if-nez v1, :cond_d

    goto :goto_13

    :cond_d
    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_12

    goto :goto_13

    :cond_12
    move-object v2, v1

    :goto_13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_22

    move-object v2, v3

    goto :goto_28

    :cond_22
    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v1, :cond_34

    move-object v1, v3

    goto :goto_3a

    :cond_34
    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-nez p0, :cond_57

    goto :goto_64

    :cond_57
    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    if-nez p0, :cond_5c

    goto :goto_64

    :cond_5c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onItemSizeChanged()V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :goto_f
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_14

    goto :goto_18

    :cond_14
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_18
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->registerBgColorListener()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    goto :goto_15

    :cond_e
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    move-result v0

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    :goto_15
    if-eqz v1, :cond_23

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_23

    :cond_20
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :goto_2f
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->unRegisterBgColorListener()V

    return-void
.end method

.method public onDragEnd()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderIcon;->setTextVisible(Z)V

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p0, :cond_d

    goto :goto_11

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setAlpha(F)V

    :cond_11
    :goto_11
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_37

    :cond_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapDesPageForDrag()V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    :cond_37
    :goto_37
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;I)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapDesPageForDrag()V

    return-void
.end method

.method public onDragExit()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getDragTargetLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    :goto_e
    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapToOriginalPage(Z)V

    :cond_1e
    invoke-super {p0}, Lcom/android/launcher3/folder/FolderIcon;->onDragExit()V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    return-void
.end method

.method public onItemsChanged(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recreateCurrentPage()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getTouchController()Lcom/android/launcher3/folder/big/BigFolderTouchController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->onKeyDown(ILandroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onRecommendContentChanged()V
    .registers 3

    const-string v0, "BigFolderIcon"

    const-string v1, "onRecommendContentChanged"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onItemSizeChanged()V

    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->onRemove(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onItemSizeChanged()V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    return-void
.end method

.method public final onScrollPageEnd()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->cancelExeScrollEndAction()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_14

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollEndActionRunnable:Ljava/lang/Runnable;

    sget-wide v1, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_END_ANIMATION_DELAY:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_14
    return-void
.end method

.method public final onScrollPageStart()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->alarm:Lcom/android/launcher3/Alarm;

    if-nez v0, :cond_8

    goto :goto_b

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :goto_b
    invoke-direct {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->cancelExeScrollEndAction()V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-eqz v0, :cond_34

    iget-boolean v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    if-nez v1, :cond_34

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_24

    goto :goto_28

    :cond_24
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_28
    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_2d

    goto :goto_31

    :cond_2d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollStartAnimation()V

    :cond_34
    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 6

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    :cond_1c
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    const/4 v0, 0x0

    if-nez p1, :cond_23

    :cond_21
    move p1, v0

    goto :goto_39

    :cond_23
    invoke-virtual {p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->getDotsCount()I

    move-result p1

    sget-object v1, Lcom/android/launcher3/folder/big/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    const-string v3, "info"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/big/BigFolderIcon$Companion;->getPreviewPageCount(Lcom/android/launcher3/model/data/FolderInfo;)I

    move-result v1

    if-ne p1, v1, :cond_21

    const/4 p1, 0x1

    :goto_39
    if-nez p1, :cond_3e

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->snapToOriginalPage(Z)V

    :cond_3e
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public final playItemDotAnimation()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_42

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "ofFloat(0f, 1f)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/folder/big/BigFolderIcon$playItemDotAnimation$$inlined$doOnStart$1;

    invoke-direct {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$playItemDotAnimation$$inlined$doOnStart$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/folder/big/BigFolderIcon$playItemDotAnimation$$inlined$doOnEnd$1;

    invoke-direct {v1}, Lcom/android/launcher3/folder/big/BigFolderIcon$playItemDotAnimation$$inlined$doOnEnd$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_42
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final scrollStartAnimation()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    iget-object v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v0, :cond_8

    goto :goto_26

    :cond_8
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_26

    :cond_f
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    sget-object v1, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_26
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->folderNameSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_2d

    return-void

    :cond_2d
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p0, :cond_32

    goto :goto_4f

    :cond_32
    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-nez p0, :cond_39

    goto :goto_4f

    :cond_39
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/android/launcher3/folder/big/BigFolderIcon;->SCROLL_INDICATOR_SHOW_PATH:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_4f
    return-void
.end method

.method public final setBgRect(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->bgRect:Landroid/graphics/Rect;

    return-void
.end method

.method public final setConvertAnimBuilder(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->convertAnimBuilder:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    return-void
.end method

.method public final setDotAnim(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->dotAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setIconWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->iconWidth:I

    return-void
.end method

.method public final setIndicator(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    return-void
.end method

.method public final setIndicatorShowing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicatorShowing:Z

    return-void
.end method

.method public final setLeftPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    return-void
.end method

.method public final setLongClickEffectHandler(Lcom/android/launcher3/card/LongClickEffectHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->longClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    return-void
.end method

.method public final setNextPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    return-void
.end method

.method public final setOriginalPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->originalPage:I

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    return-void
.end method

.method public final setRightPage(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    return-void
.end method

.method public final setScrollDistance(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollDistance:F

    return-void
.end method

.method public final setScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->isScrolling:Z

    return-void
.end method

.method public final setTouchController(Lcom/android/launcher3/folder/big/BigFolderTouchController;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->touchController:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    return-void
.end method

.method public final snapToClosingPage(I)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->Companion:Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig$Companion;->getMAX_PREVIEW()I

    move-result v0

    div-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    if-eq v0, p1, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateCurPage(I)V

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance(F)V

    :cond_1e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->logInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateCurPage(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->getMPreviewPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->setMPreviewPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recreateCurrentPage()V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v1, :cond_1b

    goto :goto_1f

    :cond_1b
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->c(I)V

    :goto_1f
    if-eq v0, p1, :cond_65

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez v1, :cond_26

    goto :goto_29

    :cond_26
    invoke-virtual {v1, p1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->setCurrentPosition(I)V

    :goto_29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/statistics/LauncherStatistics;->statScrollBigFolder(Lcom/android/launcher3/model/data/FolderInfo;II)V

    sget-object p1, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result p1

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez p1, :cond_65

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_57
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_65
    return-void
.end method

.method public final updateNextPageStatus(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    if-eq p1, v0, :cond_6

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    :cond_6
    return-void
.end method

.method public final updatePreviewItemPara()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    return-void
.end method

.method public updatePreviewItems(Ljava/util/function/Predicate;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final updateScrollDistance(F)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->checkPageValid(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->checkPageValid(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2d

    move v5, v1

    move v1, v0

    move v0, v5

    :cond_2d
    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollDistance:F

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    const/4 v2, -0x1

    if-eq v0, p1, :cond_3f

    iput v0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->rightPage:I

    if-eq v0, v2, :cond_3f

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updateRightPageParams(I)V

    :cond_3f
    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    if-eq v1, p1, :cond_4e

    iput v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->leftPage:I

    if-eq v1, v2, :cond_4e

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->updateLeftPageParams(I)V

    :cond_4e
    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->nextPage:I

    if-eq v1, p1, :cond_54

    move p1, v1

    goto :goto_55

    :cond_54
    move p1, v0

    :goto_55
    iget v3, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->scrollDistance:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v4

    mul-int/2addr v4, p1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIconWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_70

    if-lez p1, :cond_70

    add-int/lit8 p1, p1, -0x1

    const/4 v4, 0x1

    int-to-float v4, v4

    add-float/2addr v3, v4

    :cond_70
    if-eq v1, v2, :cond_80

    if-eq v0, v2, :cond_80

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;->indicator:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    if-nez p0, :cond_79

    goto :goto_80

    :cond_79
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->d(IF)V

    :cond_80
    :goto_80
    return-void
.end method
