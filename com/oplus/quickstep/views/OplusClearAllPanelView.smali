.class public Lcom/oplus/quickstep/views/OplusClearAllPanelView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final ALPHA_FLAG:F = 0.5f

.field public static final ATHENA_PACKAGE:Ljava/lang/String; = "com.oplus.athena"

.field private static final DOCK_SPACE_PERCENT:F = 0.55f

.field private static final DOCK_SPACE_PERCENT_SMALL:F = 0.45f

.field private static final ENTER_ANIMATION_DURATION:J = 0x190L

.field private static final MEMORY_CHANGE_ANIMATION_DURATION:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "OplusClearAllPanelView"

.field public static final VISIBILITY_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oplus/quickstep/views/OplusClearAllPanelView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimationStartNumber:F

.field private mAnimationStartProgress:F

.field private mBottomMargin:I

.field private mBottomSpace:I

.field private mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

.field private mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

.field private mClearAllButtonStub:Landroid/view/ViewStub;

.field private mClearClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentAnimationProgress:F

.field private mCurrentMemoryNumber:F

.field private mDecimalFormat:Ljava/text/DecimalFormat;

.field private mEnterAnim:Landroid/animation/Animator;

.field private mExitAnimator:Landroid/animation/Animator;

.field private mFinalMemoryStr:Ljava/lang/String;

.field private mIsRecentsViewPortrait:Z

.field private final mIsRtl:Z

.field private mLastState:Lcom/android/launcher3/LauncherState;

.field private mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

.field private mMemoryInfoTv:Landroid/widget/TextView;

.field private mNewMemoryNumber:F

.field private mRotateAnim:Landroid/animation/Animator;

.field public mRotationFlag:I

.field private mShowingDialog:Landroid/app/Dialog;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$1;

    const-string v1, "visibilityAlpha"

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotationFlag:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRecentsViewPortrait:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentMemoryNumber:F

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentAnimationProgress:F

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartNumber:F

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartProgress:F

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRtl:Z

    const/high16 p1, -0x31000000

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "0.00"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mDecimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$inflateIfNeeded$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Lcom/android/launcher/views/PressFeedbackButton;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    return p1
.end method

.method public static synthetic access$202(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotateAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mFinalMemoryStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartNumber:F

    return p1
.end method

.method public static synthetic access$702(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartProgress:F

    return p1
.end method

.method public static synthetic access$802(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentMemoryNumber:F

    return p1
.end method

.method public static synthetic access$902(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentAnimationProgress:F

    return p1
.end method

.method public static synthetic b(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;ZLcom/oplus/quickstep/memory/MemoryInfoManager;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$updateMeminfo$1(Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;ZLcom/oplus/quickstep/memory/MemoryInfoManager;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$updateMeminfo$2(Lcom/oplus/quickstep/memory/MemoryInfoManager;Z)V

    return-void
.end method

.method private cancelExitAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method

.method private createEnterAnimation(Lcom/android/launcher3/states/StateAnimationConfig;I)Landroid/animation/Animator;
    .registers 5

    invoke-static {p1}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRecentsViewPortrait:Z

    invoke-static {p1, p2, v0, p0}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->alphaTransYForClearAllPanelView(Lcom/android/launcher3/states/StateAnimationConfig;IZLcom/oplus/quickstep/views/OplusClearAllPanelView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRecentsViewPortrait:Z

    invoke-static {p2, v1, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getTranslationPropForClearAllPanel(IZLcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    if-eqz p1, :cond_2c

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2c
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_46

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 p0, 0x190

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v0

    :array_46
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic d(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$setOnClearClickListener$5(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private destroyBrowser()V
    .registers 4

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_5b

    const-string v0, "OplusClearAllPanelView"

    const-string v1, "clear all app, destroyBrowser"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getBrowserOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    check-cast p0, Lo1/d;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "onDestroyed mClient not null:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo1/d;->b:Lo1/b;

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    const-string v2, "BrowserLauncherClient-BrowserLauncherCycleCallbacksImp"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_34
    iget-object p0, p0, Lo1/d;->b:Lo1/b;

    if-eqz p0, :cond_5b

    const-string v0, "BrowserLauncherClient"

    :try_start_3a
    invoke-virtual {p0}, Lo1/b;->g()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "onDestroyedByClearButton"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    iget-object p0, p0, Lo1/b;->s:Lr1/a;

    iget-object p0, p0, Lr1/a;->a:Lcom/heytap/browser/ILauncherOverlayBrowser;

    if-eqz p0, :cond_5b

    invoke-interface {p0}, Lcom/heytap/browser/ILauncherOverlayBrowser;->terminal()V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_54} :catch_55

    goto :goto_5b

    :catch_55
    move-exception p0

    const-string v1, "onDestroyedByClearButton exception, message:"

    invoke-static {v1, p0, v0}, Lcom/android/common/util/o;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method private dismissShowingGrantDialog()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mShowingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mShowingDialog:Landroid/app/Dialog;

    :cond_a
    return-void
.end method

.method public static synthetic e(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Ljava/lang/String;ZLjava/lang/String;Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$playMemoryChangeAnimation$6(Ljava/lang/String;ZLjava/lang/String;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$setOnClearClickListener$3()V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->lambda$setOnClearClickListener$4()V

    return-void
.end method

.method private getDescriptionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f1203c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const p1, 0x7f1203c2

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getMemoryClearButtonDescriptionString: "

    const-string p2, "QuickStep"

    const-string v0, "OplusClearAllPanelView"

    invoke-static {p1, p0, p2, v0}, Lcom/android/launcher/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private inflateIfNeeded()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/views/PressFeedbackButton;

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->shouldShowPhoneManagerCleanSwitch()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/RecentContainerView;

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/RecentContainerView;

    const v1, 0x7f0a0147

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    :cond_37
    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    new-instance v1, Lcom/android/launcher3/hybridhotseat/d;

    invoke-direct {v1, p0}, Lcom/android/launcher3/hybridhotseat/d;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_48
    return-void
.end method

.method private isMemoryChangeAnimationRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private synthetic lambda$inflateIfNeeded$0(Landroid/view/View;)Z
    .registers 3

    const-string p1, "OplusClearAllPanelView"

    const-string v0, "----- longClick enter recent manager"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/ui/LockSettingActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/RecentsActivity;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->startHome()V

    :cond_24
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statClearButtonLongClick()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$playMemoryChangeAnimation$6(Ljava/lang/String;ZLjava/lang/String;Landroid/animation/ValueAnimator;)V
    .registers 11

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentAnimationProgress:F

    iget v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartProgress:F

    iget v3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartNumber:F

    iget v4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p4

    iput p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentMemoryNumber:F

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mDecimalFormat:Ljava/text/DecimalFormat;

    float-to-double v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2f

    const-string p2, "\u200e"

    invoke-static {p2, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2f
    invoke-static {p1, p3}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setOnClearClickListener$3()V
    .registers 2

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->clearAllTasksDryRun(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->destroyBrowser()V

    return-void
.end method

.method private synthetic lambda$setOnClearClickListener$4()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mShowingDialog:Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$setOnClearClickListener$5(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string v1, "com.oplus.athena"

    invoke-static {v0, v1}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->checkAppAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "OplusClearAllPanelView"

    if-nez v0, :cond_2f

    const-string p1, "----- onClick clear all app"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    new-instance p2, Lcom/oplus/quickstep/views/a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/oplus/quickstep/views/a;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;I)V

    new-instance v0, Lcom/oplus/quickstep/views/a;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/oplus/quickstep/views/a;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;I)V

    invoke-static {p1, v1, v2, p2, v0}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->getGrantDialog(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mShowingDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_3a

    :cond_2f
    const-string v0, "----- else onClick clear all app"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->destroyBrowser()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private synthetic lambda$updateMeminfo$1(Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;ZLcom/oplus/quickstep/memory/MemoryInfoManager;)V
    .registers 10

    iget v0, p1, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;->textDirectionFlag:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTextDirection(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "updateMeminfo: new memory is "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusClearAllPanelView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    if-eqz p2, :cond_46

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->canPlayAnimation()Z

    move-result p2

    if-eqz p2, :cond_46

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getMemoryAvailableWithoutUnit()F

    move-result v1

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getMemoryUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getStrMemoryTotalSuffix()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;->desc:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->isNeedLtrMark()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playMemoryChangeAnimation(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4d

    :cond_46
    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;->desc:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4d
    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getStrMemoryAvailable()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getStrEnLargeSize()Ljava/lang/String;

    move-result-object p2

    iget-wide v0, p3, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_62

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getStrMemoryTotal()Ljava/lang/String;

    move-result-object p2

    goto :goto_7a

    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getStrMemoryTotal()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " + "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_7a
    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->getDescriptionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$updateMeminfo$2(Lcom/oplus/quickstep/memory/MemoryInfoManager;Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getMemoryInfo(Z)Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/pkg/b;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/launcher/pkg/b;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;ZLcom/oplus/quickstep/memory/MemoryInfoManager;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private playMemoryChangeAnimation(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    iput p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mFinalMemoryStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mFinalMemoryStr:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isMemoryChangeAnimationRunning()Z

    move-result p4

    if-eqz p4, :cond_4e

    iget p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentMemoryNumber:F

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartNumber:F

    iget p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCurrentAnimationProgress:F

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartProgress:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_4d

    const-string p2, "playMemoryChangeAnimation: mNewMemoryNumber = "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mNewMemoryNumber:F

    const-string p4, ", oldMemory = "

    const-string p5, ", mAnimationStartNumber = "

    invoke-static {p2, p3, p4, v0, p5}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget p3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartNumber:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", mAnimationStartProgress = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mAnimationStartProgress:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", oldFinalMemoryStr = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusClearAllPanelView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-void

    :cond_4e
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_7a

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/android/wm/shell/common/split/a;

    invoke-direct {p4, p0, p2, p5, p3}, Lcom/android/wm/shell/common/split/a;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryChangeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_7a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startExitAnimator(Landroid/view/View;Landroid/util/FloatProperty;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_1c

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_30

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    sget-object p2, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->CURVE_OPACITY_IN:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1c
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_29
    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    nop

    :array_30
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public cancelRotateAnimation(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotateAnim:Landroid/animation/Animator;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotateAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_13
    return-void
.end method

.method public clearEnterAnim()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_b
    return-void
.end method

.method public createRotateAnimation(Z)Landroid/animation/Animator;
    .registers 5

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_6
    sget-object v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotateAnim:Landroid/animation/Animator;

    new-instance v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$3;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView$3;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotateAnim:Landroid/animation/Animator;

    return-object p0
.end method

.method public getBottomMargin()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    return p0
.end method

.method public getClearAllButtonRect(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p0}, Landroid/widget/Button;->getTranslationX()F

    move-result p0

    neg-float p0, p0

    float-to-int p0, p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_13
    return-void
.end method

.method public getClearButtonHeight()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p0

    :goto_a
    return p0
.end method

.method public getIsGesture()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public getIsMem()Z
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->needMemoryDetail()Z

    move-result p0

    return p0
.end method

.method public isEnterAnimatorRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public needUpdateBottomSpace(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 7

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_25

    :cond_16
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    if-lez p4, :cond_25

    iget p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomSpace:I

    if-eqz p0, :cond_25

    if-eq p0, p1, :cond_25

    const/4 v1, 0x1

    :cond_25
    :goto_25
    return v1
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v0, v2, :cond_2b

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.launcher"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6c

    if-nez v1, :cond_6c

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070254

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_88

    :cond_6c
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070255

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_88
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->dismissShowingGrantDialog()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a0149

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllButtonStub:Landroid/view/ViewStub;

    const v0, 0x7f0a057a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onInsetsChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/oplus/quickstep/dock/DockView;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z",
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;)V"
        }
    .end annotation

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p1, v0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomSpace:I

    if-eqz p4, :cond_1e

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p4

    if-eqz p4, :cond_19

    iget-object p4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 p5, 0x1

    invoke-static {p4, p5}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p4

    add-int/2addr v0, p4

    :cond_19
    div-int/lit8 p4, v0, 0x2

    iput p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    goto :goto_7f

    :cond_1e
    int-to-float p4, v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInSmall()Z

    move-result v1

    if-eqz v1, :cond_29

    const v1, 0x3ee66666  # 0.45f

    goto :goto_2c

    :cond_29
    const v1, 0x3f0ccccd  # 0.55f

    :goto_2c
    mul-float/2addr p4, v1

    float-to-int p4, p4

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, p4, 0x2

    add-int/2addr v1, v2

    sub-int v2, p4, v2

    sub-int p4, v0, p4

    add-int/2addr p4, v2

    div-int/lit8 p4, p4, 0x2

    iput p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    iget-object p4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p4

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p4, v2, :cond_62

    iget p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c76

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr p4, v2

    iput p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    goto :goto_76

    :cond_62
    iget p4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070641

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, p4

    iput v2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    :goto_76
    if-eqz p5, :cond_7f

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p5, p2, v1, p4}, Lcom/oplus/quickstep/dock/DockView;->calculateLocation(Landroid/graphics/Rect;II)V

    :cond_7f
    :goto_7f
    const-string p4, "setInsets: bottomSpace = "

    const-string p5, " heightPx = "

    const-string v1, " mInsets.bottom = "

    invoke-static {p4, v0, p5, p1, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mTempRect.bottom = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bottomMargin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mBottomMargin:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ,tempRect"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusClearAllPanelView"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v1}, Lcom/android/launcher/OplusPagedViewImpl;->getMaxScroll()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->getScrollFromEdge()F

    move-result v2

    iget-boolean v3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRtl:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getClearAllPanelViewTranslationX(IFZ)F

    move-result v0

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/launcher/OplusPagedViewImpl;->getMaxScroll()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;->getScrollFromEdge()F

    move-result p1

    iget-boolean v3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRtl:Z

    invoke-interface {v1, v2, p1, v3}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->getClearAllPanelViewTranslationY(IFZ)F

    move-result p1

    invoke-virtual {p2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result p2

    if-nez p2, :cond_4e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result p2

    if-nez p2, :cond_5a

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto :goto_5a

    :cond_4e
    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result p2

    if-nez p2, :cond_57

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    :cond_57
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public playEnterAnimation(Lcom/android/launcher3/LauncherState;ZILcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 14

    iput p3, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotationFlag:I

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v3

    :goto_f
    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p2, :cond_2f

    if-nez v4, :cond_2e

    iget-object v4, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mLastState:Lcom/android/launcher3/LauncherState;

    if-eqz v4, :cond_2c

    if-ne v4, v1, :cond_2c

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    if-ne v1, v0, :cond_2c

    goto :goto_2e

    :cond_2c
    move v4, v3

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v4, v2

    :cond_2f
    :goto_2f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v6, "OplusClearAllPanelView"

    const-string v7, "QuickStep"

    if-eqz v1, :cond_7d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playEnterAnimation(), check="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", rotation="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", needReturn="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", toState="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", curState="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", tragetState="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, v6, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mLastState:Lcom/android/launcher3/LauncherState;

    if-eqz v4, :cond_a7

    instance-of p2, v0, Lcom/android/launcher3/LauncherState;

    if-eqz p2, :cond_a6

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean p2, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez p2, :cond_a6

    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    if-eqz p2, :cond_9a

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_9a

    iget-object p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_9a
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelRotateAnimation(Lcom/android/launcher3/LauncherState;)V

    const-string p1, "playEnterAnimation"

    invoke-virtual {p0, v2, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playExitAnimator(ZLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setViewClickable(F)V

    :cond_a6
    return-void

    :cond_a7
    sget-object p2, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p2}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result p2

    if-eqz p2, :cond_bd

    const-string p2, "statsEventPhoneManagerEntranceDisplay"

    invoke-static {v7, v6, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/statistics/LauncherStatistics;->statsEventPhoneManagerEntranceDisplay()V

    :cond_bd
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelRotateAnimation(Lcom/android/launcher3/LauncherState;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelExitAnimator()V

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->inflateIfNeeded()V

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setViewClickable(F)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, p4, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->createEnterAnimation(Lcom/android/launcher3/states/StateAnimationConfig;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    new-instance p2, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;

    invoke-direct {p2, p0, p3}, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;I)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public playExitAnimator(ZLjava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v1, :cond_f

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    const-string v2, "show(), visible="

    const-string v3, ", animate="

    const-string v4, ", invokeFrom="

    invoke-static {v2, v1, v3, p1, v4}, Lcom/android/common/util/b0;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", alpha="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " , targetState = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QuickStep"

    const-string v2, "OplusClearAllPanelView"

    invoke-static {v0, v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->inflateIfNeeded()V

    const/high16 p2, 0x3f800000  # 1.0f

    if-nez v1, :cond_51

    invoke-virtual {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mEnterAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setAlpha(F)V

    :cond_51
    if-nez v1, :cond_5b

    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->dismissShowingGrantDialog()V

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->dismiss()V

    :cond_5b
    if-eqz v1, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 p2, 0x0

    :goto_5f
    if-eqz p1, :cond_70

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p1

    cmpl-float p1, p2, p1

    if-nez p1, :cond_6a

    goto :goto_70

    :cond_6a
    sget-object p1, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    invoke-direct {p0, p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->startExitAnimator(Landroid/view/View;Landroid/util/FloatProperty;)V

    return-void

    :cond_70
    :goto_70
    invoke-direct {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelExitAnimator()V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setVisibilityAlpha(F)V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setViewClickable(F)V

    return-void
.end method

.method public setAlpha(F)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-eqz p1, :cond_21

    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    iget v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mRotationFlag:I

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-virtual {p1, v0, v1}, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;->updatePhoneManagerEntrancePositionWhenRotation(ILandroid/view/View;)V

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_21
    return-void
.end method

.method public setClearStorageView(Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    return-void
.end method

.method public setContentAlpha(F)V
    .registers 2

    return-void
.end method

.method public setGridProgress(F)V
    .registers 2

    return-void
.end method

.method public setGridScrollOffset(F)V
    .registers 2

    return-void
.end method

.method public setGridTranslationPrimary(F)V
    .registers 2

    return-void
.end method

.method public setGridTranslationSecondary(F)V
    .registers 2

    return-void
.end method

.method public setIsRecentsViewPortrait(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mIsRecentsViewPortrait:Z

    return-void
.end method

.method public setOffsetTranslationPrimary(F)V
    .registers 2

    return-void
.end method

.method public setOnClearClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearClickListener:Landroid/view/View$OnClickListener;

    return-void

    :cond_6
    new-instance v0, Lcom/android/launcher/touch/b;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/touch/b;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 2

    return-void
.end method

.method public setViewClickable(F)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_d

    move v3, v1

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mClearAllBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-lez p1, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setLongClickable(Z)V

    :cond_1a
    return-void
.end method

.method public setVisibilityAlpha(F)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->setAlpha(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mCleanStorage:Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1c
    return-void
.end method

.method public updateMeminfo(Z)V
    .registers 5

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->needMemoryDetail()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/launcher3/z1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/z1;-><init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_31

    :cond_17
    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->mMemoryInfoTv:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_31
    :goto_31
    return-void
.end method
