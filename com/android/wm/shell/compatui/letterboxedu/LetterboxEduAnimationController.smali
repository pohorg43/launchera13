.class Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DRAWABLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTER_ANIM_START_DELAY_MILLIS:I

.field private static final TAG:Ljava/lang/String; = "LetterboxEduAnimation"


# instance fields
.field private final mAnimStyleResId:I

.field private mBackgroundDimAnimator:Landroid/animation/Animator;

.field private mDialogAnimation:Landroid/view/animation/Animation;

.field private final mPackageName:Ljava/lang/String;

.field private final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x12c

    goto :goto_9

    :cond_7
    const/16 v0, 0x1f4

    :goto_9
    sput v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->ENTER_ANIM_START_DELAY_MILLIS:I

    new-instance v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$3;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->DRAWABLE_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/policy/TransitionAnimation;

    const/4 v1, 0x0

    const-string v2, "LetterboxEduAnimation"

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v2, 0x10302d6

    invoke-direct {v0, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/android/internal/R$styleable;->Window_windowAnimationStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mAnimStyleResId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->lambda$startExitAnimation$2()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic b(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->lambda$startEnterAnimation$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->lambda$startExitAnimation$3(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->lambda$startEnterAnimation$0(Landroid/view/View;)V

    return-void
.end method

.method private static getAlphaAnimator(Landroid/graphics/drawable/Drawable;IJ)Landroid/animation/Animator;
    .registers 7

    sget-object v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-object p0
.end method

.method private getAnimationListener(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/animation/Animation$AnimationListener;
    .registers 4

    new-instance v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$1;-><init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getDimAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController$2;-><init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;)V

    return-object v0
.end method

.method private static synthetic lambda$startEnterAnimation$0(Landroid/view/View;)V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startEnterAnimation$1(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$startExitAnimation$2()V
    .registers 0

    return-void
.end method

.method private synthetic lambda$startExitAnimation$3(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private loadAnimation(I)Landroid/view/animation/Animation;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mAnimStyleResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object p0

    if-nez p0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load animation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LetterboxEduAnimation"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-object p0
.end method


# virtual methods
.method public cancelAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    :cond_13
    return-void
.end method

.method public startEnterAnimation(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;Ljava/lang/Runnable;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->cancelAnimation()V

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->getDialogContainer()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_windowEnterAnimation:I

    invoke-direct {p0, v1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->loadAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_15

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_15
    new-instance v2, Lcom/android/wm/shell/compatui/letterboxedu/f;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/compatui/letterboxedu/f;-><init>(Landroid/view/View;)V

    new-instance v3, Lcom/android/wm/shell/compatui/letterboxedu/b;

    invoke-direct {v3, p0, p2}, Lcom/android/wm/shell/compatui/letterboxedu/b;-><init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Ljava/lang/Runnable;)V

    invoke-direct {p0, v2, v3}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->getAnimationListener(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->getBackgroundDim()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0xcc

    iget-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->getAlphaAnimator(Landroid/graphics/drawable/Drawable;IJ)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->getDimAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    sget p2, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->ENTER_ANIM_START_DELAY_MILLIS:I

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public startExitAnimation(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;Ljava/lang/Runnable;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->cancelAnimation()V

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->getDialogContainer()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/internal/R$styleable;->WindowAnimation_windowExitAnimation:I

    invoke-direct {p0, v1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->loadAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_15

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_15
    sget-object v2, Lcom/android/wm/shell/compatui/letterboxedu/c;->a:Lcom/android/wm/shell/compatui/letterboxedu/c;

    new-instance v3, Lcom/android/wm/shell/compatui/letterboxedu/a;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/wm/shell/compatui/letterboxedu/a;-><init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-direct {p0, v2, v3}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->getAnimationListener(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->getBackgroundDim()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->getAlphaAnimator(Landroid/graphics/drawable/Drawable;IJ)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->getDimAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
