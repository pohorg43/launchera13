.class public abstract Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;"
    }
.end annotation


# static fields
.field public static final ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANIM_DURATION:J = 0x96L

.field private static final MIN_VISIBLE_ALPHA:F = 0.2f

.field private static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;

.field public static final SHIFT:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempRect1:Landroid/graphics/Rect;

.field private static final sTempRect2:Landroid/graphics/Rect;


# instance fields
.field private mAlpha:F

.field private final mContainer:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private mCurrentItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private mIsDirty:Z

.field private mLastFocusedItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mMaxAlpha:I

.field public final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mShift:F

.field private mTargetItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->ALPHA:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$2;

    const-string/jumbo v1, "shift"

    invoke-direct {v0, v1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->SHIFT:Landroid/util/FloatProperty;

    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->sTempRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->sTempRect2:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mDirtyRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mIsDirty:Z

    iput-object p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mContainer:Landroid/view/View;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mMaxAlpha:I

    const/high16 v1, -0x1000000

    or-int/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->setAlpha(F)V

    iput p2, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mShift:F

    sget-object p2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mRadius:F

    :cond_3b
    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mAlpha:F

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mShift:F

    return p0
.end method

.method public static synthetic access$102(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mShift:F

    return p1
.end method

.method private getDrawRect()Landroid/graphics/Rect;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mCurrentItem:Ljava/lang/Object;

    if-eqz v0, :cond_2b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->shouldDraw(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mCurrentItem:Ljava/lang/Object;

    sget-object v1, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->sTempRect1:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->viewToRect(Ljava/lang/Object;Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mShift:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mTargetItem:Ljava/lang/Object;

    if-eqz v0, :cond_2a

    sget-object v2, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->sTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->viewToRect(Ljava/lang/Object;Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    iget p0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mShift:F

    invoke-virtual {v0, p0, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_2a
    return-object v1

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public changeFocus(Ljava/lang/Object;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_59

    invoke-virtual {p0}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->endCurrentAnimation()V

    iget v3, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mAlpha:F

    const v4, 0x3e4ccccd  # 0.2f

    cmpl-float v3, v3, v4

    const/high16 v4, 0x3f800000  # 1.0f

    if-lez v3, :cond_3f

    iput-object p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mTargetItem:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->ALPHA:Landroid/util/FloatProperty;

    new-array v6, v2, [F

    aput v4, v6, v1

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v1

    sget-object v5, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->SHIFT:Landroid/util/FloatProperty;

    new-array v6, v2, [F

    aput v4, v6, v1

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;-><init>(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_56

    :cond_3f
    invoke-virtual {p0, p1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->setCurrentItem(Ljava/lang/Object;)V

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->ALPHA:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    aput v4, v2, v1

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    :goto_56
    iput-object p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mLastFocusedItem:Ljava/lang/Object;

    goto :goto_7f

    :cond_59
    iget-object v3, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mLastFocusedItem:Ljava/lang/Object;

    if-ne v3, p1, :cond_7f

    iput-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mLastFocusedItem:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->endCurrentAnimation()V

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->ALPHA:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    const/4 v5, 0x0

    aput v5, v2, v1

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$ViewSetListener;-><init>(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;Ljava/lang/Object;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->invalidateDirty()V

    if-eqz p2, :cond_85

    goto :goto_86

    :cond_85
    move-object p1, v0

    :goto_86
    iput-object p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mLastFocusedItem:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_9a

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 p1, 0x96

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_9a
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    iget v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget v8, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mRadius:F

    iget-object v9, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mIsDirty:Z

    :cond_2d
    return-void
.end method

.method public endCurrentAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    :cond_a
    return-void
.end method

.method public invalidateDirty()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mIsDirty:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mIsDirty:Z

    :cond_e
    invoke-direct {p0}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_19
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->invalidateDirty()V

    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    iput p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mAlpha:F

    iget-object v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mMaxAlpha:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setCurrentItem(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mCurrentItem:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mShift:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->mTargetItem:Ljava/lang/Object;

    return-void
.end method

.method public shouldDraw(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public abstract viewToRect(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method
