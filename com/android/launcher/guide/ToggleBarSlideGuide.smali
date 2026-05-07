.class public final Lcom/android/launcher/guide/ToggleBarSlideGuide;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/ToggleBarSlideGuide$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/guide/ToggleBarSlideGuide$Companion;

.field private static final DELAY_SHOW:J = 0x64L

.field private static final DURATION:J = 0xd48L

.field private static final TAG:Ljava/lang/String; = "ToggleBarSlideGuide"


# instance fields
.field private mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

.field private mContext:Landroid/content/Context;

.field private mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mIsShowing:Z

.field private mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedShowSlidGuide:Z

.field private mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/guide/ToggleBarSlideGuide$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/guide/ToggleBarSlideGuide$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->Companion:Lcom/android/launcher/guide/ToggleBarSlideGuide$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePrefUtils;->getShowSlideAlignGuide(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mNeedShowSlidGuide:Z

    new-instance p1, Lcom/android/launcher/guide/k;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/launcher/guide/k;-><init>(Lcom/android/launcher/guide/ToggleBarSlideGuide;I)V

    iput-object p1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/guide/ToggleBarSlideGuide;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mHideRunnable$lambda-0(Lcom/android/launcher/guide/ToggleBarSlideGuide;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/guide/ToggleBarSlideGuide;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->show$lambda-1(Lcom/android/launcher/guide/ToggleBarSlideGuide;)V

    return-void
.end method

.method private final getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mLauncherRef:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    :goto_c
    return-object p0
.end method

.method private static final mHideRunnable$lambda-0(Lcom/android/launcher/guide/ToggleBarSlideGuide;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->hide()V

    return-void
.end method

.method private final show()V
    .registers 7

    invoke-direct {p0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f11001c

    invoke-virtual {v1, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    new-instance v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070b4f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070b4e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/launcher/guide/k;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/launcher/guide/k;-><init>(Lcom/android/launcher/guide/ToggleBarSlideGuide;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    iput-boolean v2, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mIsShowing:Z

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xd48

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final show$lambda-1(Lcom/android/launcher/guide/ToggleBarSlideGuide;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez v1, :cond_1d

    goto :goto_4e

    :cond_1d
    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->getMContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    return-void

    :cond_4e
    :goto_4e
    const-string p0, "ToggleBarSlideGuide"

    const-string v0, "launcher state don\'t support show popupwindow."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final hide()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mIsShowing:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mIsShowing:Z

    iput-boolean v0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mNeedShowSlidGuide:Z

    invoke-direct {p0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_22

    :cond_16
    invoke-virtual {v1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_22

    :cond_1d
    iget-object v2, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_22
    iget-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v2, 0x1

    if-nez v1, :cond_29

    :cond_27
    move v1, v0

    goto :goto_30

    :cond_29
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-ne v1, v2, :cond_27

    move v1, v2

    :goto_30
    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez v1, :cond_37

    goto :goto_3a

    :cond_37
    invoke-virtual {v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez v1, :cond_40

    :cond_3e
    move v2, v0

    goto :goto_46

    :cond_40
    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationView;->isAnimating()Z

    move-result v1

    if-ne v1, v2, :cond_3e

    :goto_46
    if-eqz v2, :cond_50

    iget-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez v1, :cond_4d

    goto :goto_50

    :cond_4d
    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    if-nez v1, :cond_55

    goto :goto_5a

    :cond_55
    iget-object v2, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_5a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    iget-object p0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/launcher/guide/GuidePrefUtils;->setShowSlideAlignGuide(Landroid/content/Context;Z)V

    return-void
.end method

.method public final isShowing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mIsShowing:Z

    return p0
.end method

.method public final needShow()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_17

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_17

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    return v1

    :cond_21
    iget-boolean v0, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mNeedShowSlidGuide:Z

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/android/launcher/guide/ToggleBarSlideGuide;->show()V

    return v1

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public final setLauncherRef(Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "ref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mLauncherRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/guide/ToggleBarSlideGuide;->mContext:Landroid/content/Context;

    return-void
.end method
