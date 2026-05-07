.class public final Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;
.super Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper$Companion;

.field private static final TAG:Ljava/lang/String; = "PressFeedbackPreviewWrapper"


# instance fields
.field private mCurrentStrokeAlpha:I

.field private mIsNeedDrawPressColor:Z

.field private mIsNeedStroke:Z

.field private mIsSelectedState:Z

.field private mSelectedAnimation:Landroid/animation/ValueAnimator;

.field private mStrokeColor:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I

.field private final mTempStrokeRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->Companion:Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;F)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_17

    const v1, 0x7f060435

    goto :goto_1a

    :cond_17
    const v1, 0x7f060434

    :goto_1a
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {p0, p2, v1, p3}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;-><init>(Landroid/view/View;IF)V

    new-instance p3, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokePaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mTempStrokeRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mIsNeedStroke:Z

    iput-boolean v1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mIsNeedDrawPressColor:Z

    iput-object p2, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result p2

    if-eqz p2, :cond_40

    const p2, 0x7f060437

    goto :goto_43

    :cond_40
    const p2, 0x7f060436

    :goto_43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07075b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeWidth:I

    iget-object p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeWidth:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->selectedStrokeAnimation$lambda-1$lambda-0(Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final selectedStrokeAnimation(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mSelectedAnimation:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mSelectedAnimation:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_10
    :goto_10
    const-string v0, "Anim selected stroke, currentStrokeAlpha = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mCurrentStrokeAlpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PressFeedbackPreviewWrapper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mIsNeedStroke:Z

    const/16 v1, 0xff

    if-eqz v0, :cond_39

    if-eqz p1, :cond_39

    iget v2, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mCurrentStrokeAlpha:I

    if-ne v2, v1, :cond_39

    return-void

    :cond_39
    if-eqz v0, :cond_42

    if-nez p1, :cond_42

    iget v2, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mCurrentStrokeAlpha:I

    if-nez v2, :cond_42

    return-void

    :cond_42
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mCurrentStrokeAlpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    if-eqz v0, :cond_50

    if-eqz p1, :cond_50

    goto :goto_51

    :cond_50
    move v1, v4

    :goto_51
    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mSelectedAnimation:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_61

    const-wide/16 v1, 0x118

    goto :goto_63

    :cond_61
    const-wide/16 v1, 0x96

    :goto_63
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->getINTERPOLATOR_SELECTED_STROKE()Landroid/view/animation/PathInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {p1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mSelectedAnimation:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final selectedStrokeAnimation$lambda-1$lambda-0(Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mCurrentStrokeAlpha:I

    iget-object p0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final forceSetSelectedWithNoAnim(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mSelectedAnimation:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mSelectedAnimation:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_10
    :goto_10
    iput-boolean p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mIsSelectedState:Z

    iget-boolean v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mIsNeedStroke:Z

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    const/16 p1, 0xff

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mCurrentStrokeAlpha:I

    iget-object p0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final forceSetSelectedWithNoAnimWhenVHRecycled(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mIsSelectedState:Z

    if-ne p1, v0, :cond_12

    if-eqz p1, :cond_c

    iget v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mCurrentStrokeAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_12

    :cond_c
    if-nez p1, :cond_15

    iget v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mCurrentStrokeAlpha:I

    if-eqz v0, :cond_15

    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->forceSetSelectedWithNoAnim(Z)V

    :cond_15
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mIsNeedDrawPressColor:Z

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->drawPressedColor(Landroid/graphics/Canvas;)V

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mCurrentStrokeAlpha:I

    iget v2, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mTempStrokeRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->getMRadius()F

    move-result v2

    iget v3, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->b(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->onLayout(II)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mTempStrokeRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->getMTempBgRect()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mTempStrokeRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->getMTempBgRect()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mTempStrokeRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->getMTempBgRect()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mTempStrokeRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->getMTempBgRect()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeWidth:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public final setIsNeedDrawPressColor(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mIsNeedDrawPressColor:Z

    return-void
.end method

.method public final setIsNeedStroke(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mIsNeedStroke:Z

    return-void
.end method

.method public final setSelected(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mIsSelectedState:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mIsSelectedState:Z

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->selectedStrokeAnimation(Z)V

    :cond_9
    return-void
.end method

.method public final setStrokeWidth(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokeWidth:I

    iget-object p0, p0, Lcom/android/launcher/togglebar/PressFeedbackPreviewWrapper;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
