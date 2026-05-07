.class Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/anim/IIconScaleAnimator;


# static fields
.field public static final ICON_SCALE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_TRANSLATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusBubbleTextScaleAnimatorImpl"


# instance fields
.field private mBubbleTextView:Lcom/android/launcher3/BubbleTextView;

.field private mIconAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIconBounds:Landroid/graphics/Rect;

.field private mIconScale:F

.field private mIconTransX:I

.field private mIconTransY:I

.field private mNeedCanvasAnimation:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "iconScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->ICON_SCALE:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$2;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "iconTranslationX"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->ICON_TRANSLATION_X:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$3;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->ICON_TRANSLATION_Y:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BubbleTextView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mNeedCanvasAnimation:Z

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconScale:F

    iput v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransX:I

    iput v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransY:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mBubbleTextView:Lcom/android/launcher3/BubbleTextView;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconScale:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconScale:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;)Lcom/android/launcher3/BubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mBubbleTextView:Lcom/android/launcher3/BubbleTextView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransX:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransX:I

    return p1
.end method

.method public static synthetic access$300(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransY:I

    return p0
.end method

.method public static synthetic access$302(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransY:I

    return p1
.end method

.method public static synthetic access$402(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mNeedCanvasAnimation:Z

    return p1
.end method

.method private createIconAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;)Landroid/animation/AnimatorSet;
    .registers 11

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mBubbleTextView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_56

    check-cast v1, Lcom/oplus/icons/OplusFastBitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mBubbleTextView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget-object v2, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Landroid/util/FloatProperty;

    new-array v6, v5, [F

    iget v7, p1, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mScale:F

    aput v7, v6, v4

    invoke-static {v1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-boolean v6, p1, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mNeedTransAnimation:Z

    if-eqz v6, :cond_4a

    sget-object v6, Lcom/oplus/icons/OplusFastBitmapDrawable;->TRANS_X:Landroid/util/Property;

    new-array v7, v5, [I

    iget v8, p1, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mTransX:I

    aput v8, v7, v4

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v7, Lcom/oplus/icons/OplusFastBitmapDrawable;->TRANS_Y:Landroid/util/Property;

    new-array v8, v5, [I

    iget p1, p1, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mTransY:I

    aput p1, v8, v4

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v6, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_4a
    new-instance p1, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$5;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$5;-><init>(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;Lcom/oplus/icons/OplusFastBitmapDrawable;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_8c

    :cond_56
    sget-object v1, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->ICON_SCALE:Landroid/util/Property;

    new-array v2, v5, [F

    iget v6, p1, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mScale:F

    aput v6, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mNeedTransAnimation:Z

    if-eqz v2, :cond_87

    sget-object v2, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->ICON_TRANSLATION_X:Landroid/util/Property;

    new-array v6, v5, [I

    iget v7, p1, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mTransX:I

    aput v7, v6, v4

    invoke-static {p0, v2, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v6, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->ICON_TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v5, [I

    iget p1, p1, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mTransY:I

    aput p1, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_87
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iput-boolean v5, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mNeedCanvasAnimation:Z

    :goto_8c
    const-wide/16 p0, 0x12c

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p0, Lcom/android/common/config/AnimationConstant;->CREATE_FOLDER_PREVIEW:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getScaleIconBounds()Landroid/graphics/RectF;
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mBubbleTextView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconScale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    add-float/2addr v5, v1

    iget v6, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransX:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    add-float/2addr v0, v1

    iget p0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransY:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method


# virtual methods
.method public drawCanvasScale(Landroid/graphics/Canvas;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mNeedCanvasAnimation:Z

    if-eqz v0, :cond_55

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->getScaleIconBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mBubbleTextView:Lcom/android/launcher3/BubbleTextView;

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransX:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconScale:F

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mBubbleTextView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->drawWithoutDot(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mBubbleTextView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->drawWithoutDot(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 p0, 0x1

    return p0

    :cond_55
    const/4 p0, 0x0

    return p0
.end method

.method public playIconScaleAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_12
    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->createIconAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$4;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl$4;-><init>(Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public resetIconImmediate()V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mBubbleTextView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_3c

    check-cast v0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    sget-object v1, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Landroid/util/FloatProperty;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v1, Lcom/oplus/icons/OplusFastBitmapDrawable;->TRANS_X:Landroid/util/Property;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/oplus/icons/OplusFastBitmapDrawable;->TRANS_Y:Landroid/util/Property;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    iput v2, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconScale:F

    iput v3, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransX:I

    iput v3, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mIconTransY:I

    iput-boolean v3, p0, Lcom/android/launcher3/icons/anim/OplusIconScaleAnimatorImpl;->mNeedCanvasAnimation:Z

    return-void
.end method
