.class public final Lcom/android/launcher3/card/uscard/USCardView;
.super Lcom/android/launcher3/card/CommonCardView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/uscard/USCardView$GestureListener;,
        Lcom/android/launcher3/card/uscard/USCardView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/uscard/USCardView$Companion;

.field private static final TAG:Ljava/lang/String; = "LauncherCardView-USCardView"


# instance fields
.field private container:Lcom/android/launcher3/card/uscard/USCardContainerView;

.field private final content:Landroid/widget/FrameLayout;

.field private mClipRect:Landroid/graphics/RectF;

.field private final mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mLongClicked:Z

.field private mPath:Landroid/graphics/Path;

.field private mRadiusArr:[F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/uscard/USCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/uscard/USCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/uscard/USCardView;->Companion:Lcom/android/launcher3/card/uscard/USCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mRadiusArr:[F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/card/uscard/USCardView$content$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/card/uscard/USCardView$content$1;-><init>(Lcom/android/launcher3/card/uscard/USCardView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/card/uscard/USCardView$GestureListener;

    invoke-direct {v2, p0}, Lcom/android/launcher3/card/uscard/USCardView$GestureListener;-><init>(Lcom/android/launcher3/card/uscard/USCardView;)V

    invoke-direct {p1, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mRadiusArr:[F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/card/uscard/USCardView$content$1;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/card/uscard/USCardView$content$1;-><init>(Lcom/android/launcher3/card/uscard/USCardView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/card/uscard/USCardView$GestureListener;

    invoke-direct {v1, p0}, Lcom/android/launcher3/card/uscard/USCardView$GestureListener;-><init>(Lcom/android/launcher3/card/uscard/USCardView;)V

    invoke-direct {p1, v0, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070022

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mRadiusArr:[F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/card/uscard/USCardView$content$1;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/card/uscard/USCardView$content$1;-><init>(Lcom/android/launcher3/card/uscard/USCardView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Lcom/android/launcher3/card/uscard/USCardView$GestureListener;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/uscard/USCardView$GestureListener;-><init>(Lcom/android/launcher3/card/uscard/USCardView;)V

    invoke-direct {p1, p3, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070022

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    return-void
.end method

.method public static final synthetic access$getMLauncher$p$s837816979(Lcom/android/launcher3/card/uscard/USCardView;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getMPath$p(Lcom/android/launcher3/card/uscard/USCardView;)Landroid/graphics/Path;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardView;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public static final synthetic access$getMRadiusArr$p(Lcom/android/launcher3/card/uscard/USCardView;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardView;->mRadiusArr:[F

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public calculatePaddingRect(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5

    const-string/jumbo p0, "paddingRect"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p4, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p4
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    if-nez p1, :cond_3

    goto :goto_8

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_8
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_e

    :cond_c
    move v2, v1

    goto :goto_15

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_c

    move v2, v0

    :goto_15
    if-eqz v2, :cond_2d

    iput-boolean v1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mLongClicked:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    if-eqz v0, :cond_2d

    return v1

    :cond_2d
    invoke-super {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v3

    :goto_13
    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->container:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-nez v0, :cond_1b

    :cond_19
    :goto_19
    move v2, v3

    goto :goto_28

    :cond_1b
    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getCardLoadChecker()Lcom/android/launcher3/card/utils/CardLoadChecker;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_19

    :cond_22
    invoke-virtual {v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->isLoadingState()Z

    move-result v0

    if-ne v0, v2, :cond_19

    :goto_28
    if-eqz v2, :cond_2b

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mClipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/card/uscard/USCardView;->mRadiusArr:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawShadowIfNecessary(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getClipRoundRect(Landroid/graphics/Rect;Z)V
    .registers 4

    const-string/jumbo p2, "outRect"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget p2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    const-string p0, "getDrawingRect: outRect = "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherCardView-USCardView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getContainer()Lcom/android/launcher3/card/uscard/USCardContainerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardView;->container:Lcom/android/launcher3/card/uscard/USCardContainerView;

    return-object p0
.end method

.method public final getContent()Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getRadiusArr()[F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardView;->mRadiusArr:[F

    return-object p0
.end method

.method public getSmartViewAnimDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getViewContent()Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public handleGetViewCallback(Landroid/view/View;I)Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    :cond_8
    move v0, v2

    goto :goto_11

    :cond_a
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->isNormalCardEngine()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_11
    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    if-nez v0, :cond_1b

    :cond_19
    move v1, v2

    goto :goto_21

    :cond_1b
    invoke-virtual {v0, p2}, Lcom/oplus/card/helper/SmartEngine;->isErrorCode(I)Z

    move-result v0

    if-ne v0, v1, :cond_19

    :goto_21
    if-eqz v1, :cond_59

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "handleGetViewCallback, handle error code = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherCardView-USCardView"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->container:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-nez p1, :cond_45

    goto :goto_50

    :cond_45
    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMStatisticsRecorder()Lcom/android/launcher3/card/seed/StatisticsRecorder;

    move-result-object p1

    if-nez p1, :cond_4c

    goto :goto_50

    :cond_4c
    const/4 p2, 0x4

    invoke-virtual {p1, p0, p2}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportEvent(Lcom/android/launcher3/card/uscard/USCardView;I)V

    :goto_50
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardView;->container:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-nez p0, :cond_55

    goto :goto_58

    :cond_55
    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->cardLoadFailTip()V

    :goto_58
    return v2

    :cond_59
    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->container:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-nez v0, :cond_5e

    goto :goto_6f

    :cond_5e
    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getCardLoadChecker()Lcom/android/launcher3/card/utils/CardLoadChecker;

    move-result-object v0

    if-nez v0, :cond_65

    goto :goto_6f

    :cond_65
    invoke-virtual {v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->getIUsCardLoadResult()Lcom/android/launcher3/card/utils/IUSCardLoadResult;

    move-result-object v0

    if-nez v0, :cond_6c

    goto :goto_6f

    :cond_6c
    invoke-interface {v0, p0}, Lcom/android/launcher3/card/utils/IUSCardLoadResult;->onSuccess(Lcom/android/launcher3/card/uscard/USCardView;)V

    :goto_6f
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;->handleGetViewCallback(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDetachedFromWindow, keepResumedMark = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getKeepResumedMark()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheActivated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getCacheActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-USCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getKeepResumedMark()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->markUnsubscribedOnDetach()V

    :cond_37
    invoke-super {p0}, Lcom/android/launcher3/card/CommonCardView;->onDetachedFromWindow()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    const-string v0, "LauncherCardView-USCardView"

    const-string/jumbo v1, "onLongClick"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->container:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz v0, :cond_1c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->mLongClicked:Z

    if-nez v0, :cond_12

    goto :goto_1b

    :cond_12
    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->trySetLongPressedView(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->performLongClick()Z

    :cond_1b
    :goto_1b
    return p1

    :cond_1c
    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->onLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->handleOnPauseForShot()V

    return-void
.end method

.method public pauseCard()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->container:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    :cond_6
    :goto_6
    move v1, v2

    goto :goto_15

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getCardLoadChecker()Lcom/android/launcher3/card/utils/CardLoadChecker;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->isLoadingState()Z

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_15
    if-eqz v1, :cond_18

    goto :goto_1b

    :cond_18
    invoke-super {p0}, Lcom/android/launcher3/card/CommonCardView;->pauseCard()V

    :goto_1b
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isShowingInVisiblePage()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->container:Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-nez v0, :cond_26

    goto :goto_31

    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMStatisticsRecorder()Lcom/android/launcher3/card/seed/StatisticsRecorder;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_31

    :cond_2d
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/card/seed/StatisticsRecorder;->reportEvent(Lcom/android/launcher3/card/uscard/USCardView;I)V

    :cond_31
    :goto_31
    return-void
.end method

.method public playSmartCardAnimator(Landroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "newView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public removeDefaultCardViewIfNeed()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lo3/e;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/card/uscard/USCardView$removeDefaultCardViewIfNeed$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardView$removeDefaultCardViewIfNeed$$inlined$filterIsInstance$1;

    invoke-static {v0, v1}, Lo3/l;->r(Lo3/e;Lkotlin/jvm/functions/Function1;)Lo3/e;

    move-result-object v0

    invoke-static {v0}, Lo3/l;->t(Lo3/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/DefaultCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardView;->getContent()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1c

    :cond_30
    invoke-super {p0}, Lcom/android/launcher3/card/CommonCardView;->removeDefaultCardViewIfNeed()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_a

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_f

    :cond_a
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardView;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_f
    return-void
.end method

.method public final resetPressAnimStateForLongClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLongClickEffectHandler:Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LongClickEffectHandler;->playRestoreAnim()V

    return-void
.end method

.method public resumeCard(ZZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardView;->container:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isShowingInVisiblePage()Z

    move-result v0

    if-ne v0, v2, :cond_e

    move v1, v2

    :cond_e
    :goto_e
    if-eqz v1, :cond_13

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;->resumeCard(ZZ)V

    :cond_13
    return-void
.end method

.method public final setContainer(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardView;->container:Lcom/android/launcher3/card/uscard/USCardContainerView;

    return-void
.end method

.method public setRadiusArr(FFFF)V
    .registers 6

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardView;->mRadiusArr:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 v0, 0x1

    aput p1, p0, v0

    const/4 p1, 0x2

    aput p2, p0, p1

    const/4 p1, 0x3

    aput p2, p0, p1

    const/4 p1, 0x4

    aput p4, p0, p1

    const/4 p1, 0x5

    aput p4, p0, p1

    const/4 p1, 0x6

    aput p3, p0, p1

    const/4 p1, 0x7

    aput p3, p0, p1

    return-void
.end method

.method public final updateCardByMetis(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "newData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateCardByMetis"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-USCardView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getEngine()Lcom/oplus/card/helper/SmartEngine;

    move-result-object p0

    if-nez p0, :cond_1d

    goto :goto_21

    :cond_1d
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/oplus/card/helper/SmartEngine;->updateView(Ljava/lang/String;I)V

    :goto_21
    return-void
.end method
