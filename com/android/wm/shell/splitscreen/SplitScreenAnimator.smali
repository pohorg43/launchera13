.class public Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;,
        Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;
    }
.end annotation


# instance fields
.field private mSwapAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Ljava/util/List;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->lambda$startSwapAnimation$0(Ljava/util/List;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private cancelAllAnimator()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method private createSwapAnimationAdapter(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;
    .registers 4

    new-instance p0, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {p0, p1, p2}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const-wide/16 p1, 0xfa

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;

    invoke-direct {p1, p3, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;-><init>(Landroid/view/SurfaceControl;Landroid/view/animation/Animation;)V

    return-object p1
.end method

.method private synthetic lambda$startSwapAnimation$0(Ljava/util/List;Landroid/animation/ValueAnimator;)V
    .registers 6

    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_9

    :cond_1f
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method


# virtual methods
.method public startSwapAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->cancelAllAnimator()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p3, p5}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->createSwapAnimationAdapter(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2, p4, p6}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->createSwapAnimationAdapter(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_5c

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 p2, 0x0

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;

    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->getDurationHint()J

    move-result-wide p4

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_28

    :cond_3d
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher3/w0;

    invoke-direct {p2, p0, v0}, Lcom/android/launcher3/w0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;

    invoke-direct {p2, p0, p7}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_5c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
