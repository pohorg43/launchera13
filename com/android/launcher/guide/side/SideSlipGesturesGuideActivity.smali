.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;
.super Lcom/android/launcher/OplusBaseAppCompatActivity;
.source ""

# interfaces
.implements Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;
    }
.end annotation


# static fields
.field private static final GESTURES_SETTINGS_DELAY:I = 0xfa

.field private static final GESTURES_SUCCESS_SHOW_TIME:I = 0x4b0

.field private static final GESTURES_VIEWPAGER_SHOW_TIME:I = 0x190

.field private static final GESTURE_ORIGIN_SETTINGS:I = 0x3

.field private static final GUIDE_STATE:Ljava/lang/String; = "state"

.field private static final IS_JUST_SHOW_GUIDE:Ljava/lang/String; = "is_just_show_gestures_guide"

.field private static final KEY_GUIDE_HAS_COMPLETED_FROM_BOOT:Ljava/lang/String; = "guide_has_completed_from_boot"

.field private static final KEY_GUIDE_START_TYPE:Ljava/lang/String; = "start_type"

.field private static final KEY_ORIGIN:Ljava/lang/String; = "origin"

.field private static final NAV_STATE_SWIPE_SIDE_GESTURE:I = 0x3

.field private static final OLD_GESTURE:I = 0x0

.field private static final SWIPE_SIDE_SLIP_GESTURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SideSlipGesturesGuideActivity"


# instance fields
.field private mContentOb:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;

.field private mExitGesturesGuide:Landroid/widget/ImageButton;

.field private mGesturesOrigin:I

.field private mGuideMsg:[Ljava/lang/String;

.field private mGuideMsgTextView:Landroid/widget/TextView;

.field private mGuideTitle:[Ljava/lang/String;

.field private mGuideTitleTextView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHasRegister:Z

.field private mIsJustShowGuide:Z

.field private mIsLearningSingle:Z

.field private mNavResult:I

.field private mPromptBox:Landroid/widget/LinearLayout;

.field private mPromptBoxHideAnim:Landroid/view/animation/Animation;

.field private mPromptBoxScrollView:Landroid/widget/ScrollView;

.field private mPromptBoxShowAnim:Landroid/view/animation/Animation;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mStartType:I

.field private mSuccessLayout:Landroid/widget/LinearLayout;

.field private mSuccessLayoutHideAnim:Landroid/view/animation/Animation;

.field private mSuccessLayoutShowAnim:Landroid/view/animation/Animation;

.field private mSuccessText:Landroid/widget/TextView;

.field private mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/OplusBaseAppCompatActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mNavResult:I

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGesturesOrigin:I

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mStartType:I

    new-instance v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$1;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsLearningSingle:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->getCurrentState()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideMsgTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideTitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/view/animation/Animation;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBoxShowAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/ScrollView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBoxScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->resetGesturesSettingsAndFinish()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/view/animation/Animation;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayoutHideAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBox:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Landroid/view/animation/Animation;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBoxHideAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsJustShowGuide:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideTitle:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideMsg:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->lambda$setInitSystemState$0()V

    return-void
.end method

.method private createAnimation()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesAnimationUtils;->createAlphaZoomInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayoutShowAnim:Landroid/view/animation/Animation;

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesAnimationUtils;->createAlphaZoomInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBoxShowAnim:Landroid/view/animation/Animation;

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesAnimationUtils;->createAlphaZoomOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBoxHideAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$2;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesAnimationUtils;->createAlphaZoomOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayoutHideAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$3;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$3;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private getCurrentState()I
    .registers 1

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getCurrentGesturesState()I

    move-result p0

    return p0
.end method

.method private getGuideMessages()[Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsLearningSingle:Z

    if-eqz p0, :cond_10

    return-object v0

    :cond_10
    array-length p0, v0

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_46

    if-nez v1, :cond_2b

    const-string v2, "1/4 "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    goto :goto_43

    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_46
    return-object p0
.end method

.method private initViews()V
    .registers 5

    const v0, 0x7f0a0483

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mExitGesturesGuide:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0489

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBox:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0495

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideTitle:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->getGuideMessages()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideMsg:[Ljava/lang/String;

    const v0, 0x7f0a04e8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessText:Landroid/widget/TextView;

    const v0, 0x7f0a0485

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0484

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideMsgTextView:Landroid/widget/TextView;

    const v0, 0x7f0a048a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBoxScrollView:Landroid/widget/ScrollView;

    new-instance v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePageAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePageAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;)V

    const v1, 0x7f0a05c2

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    iput-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {v1, v0}, Lcom/oplus/widget/OplusViewPager;->setAdapter(Lcom/oplus/widget/OplusPagerAdapter;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/widget/OplusViewPager;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/widget/OplusViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {v0, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->setListener(Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;)V

    :try_start_87
    const-class v0, Lcom/oplus/widget/OplusViewPager;

    const-string/jumbo v2, "mScroller"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Lcom/android/launcher/guide/side/FixedSpeedScroller;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {v2}, Lcom/oplus/widget/OplusViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/launcher/guide/side/FixedSpeedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Lcom/android/launcher/guide/side/FixedSpeedScroller;->setmDuration(I)V

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_ad} :catch_ae

    goto :goto_b2

    :catch_ae
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b2
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->createAnimation()V

    return-void
.end method

.method private synthetic lambda$setInitSystemState$0()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->enableSystemGestures(Landroid/app/Activity;Z)V

    return-void
.end method

.method private resetGesturesSettingsAndFinish()V
    .registers 4

    const-string v0, "SideSlipGesturesGuideActivity"

    const-string/jumbo v1, "resetGesturesSettingsAndFinish"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mHasRegister:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mContentOb:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mHasRegister:Z

    :cond_18
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setShowGuidePageDone(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideGesturesRunning(Z)V

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->setState(I)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->enableSystemGestures(Landroid/app/Activity;Z)V

    invoke-static {p0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setFullScreen(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->finish()V

    return-void
.end method

.method private setFirstPage(Landroid/os/Bundle;)V
    .registers 8

    const-string/jumbo v0, "setFirstPage mIsJustShowGuide:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsJustShowGuide:Z

    const-string v2, "SideSlipGesturesGuideActivity"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_52

    const-string/jumbo v3, "state"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    const-string/jumbo v5, "start_type"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_24

    move v0, v1

    :cond_24
    iput-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsLearningSingle:Z

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->setState(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bundle state:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v3, v1, :cond_4c

    const/4 p1, 0x5

    if-gt v3, p1, :cond_4c

    invoke-static {p0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setFullScreen(Landroid/app/Activity;Z)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->setPromptBoxVisible()V

    :cond_4c
    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->onSideSlipGestureStateChanged()V

    return-void

    :cond_52
    iget-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsLearningSingle:Z

    if-eqz p1, :cond_7a

    iget p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mStartType:I

    if-lez p1, :cond_7a

    const-string/jumbo p1, "startGestures"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setFullScreen(Landroid/app/Activity;Z)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mExitGesturesGuide:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->onPageStop()V

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mStartType:I

    invoke-virtual {p1, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->setState(I)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->setPromptBoxVisible()V

    goto :goto_8e

    :cond_7a
    iget-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsJustShowGuide:Z

    if-eqz p1, :cond_82

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->startGestures()V

    goto :goto_8e

    :cond_82
    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->setState(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->onSideSlipGestureStateChanged()V

    :goto_8e
    return-void
.end method

.method private setInitSystemState()V
    .registers 5

    const-string v0, "SideSlipGesturesGuideActivity"

    const-string/jumbo v1, "setInitSystemState"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/guide/side/b;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/side/b;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setPromptBoxVisible()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->getCurrentState()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->onSideSlipGestureStateChanged()V

    const/4 v1, 0x1

    if-lt v0, v1, :cond_29

    const/4 v2, 0x5

    if-gt v0, v2, :cond_29

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideMsgTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideMsg:[Ljava/lang/String;

    sub-int/2addr v0, v1

    aget-object v1, v3, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGuideTitle:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_29
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBox:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBox:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBoxShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public finish()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x7f01003c

    const v1, 0x7f01002d

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public notUsingSideSlipGestures()V
    .registers 5

    const-string v0, "SideSlipGesturesGuideActivity"

    const-string/jumbo v1, "notUsingSideSlipGestures"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mNavResult:I

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->restoreNavState(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSwipeUpGestureShow(Landroid/content/Context;Z)V

    sget-object v1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/navigation/NavigationController;->reInitNavState(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v1}, Lcom/oplus/quickstep/navigation/NavigationController;->notifyModeChange()V

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSwipeUpGestureShow(Landroid/content/Context;Z)V

    const-string v1, "guide_has_completed_from_boot"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->resetGesturesSettingsAndFinish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    const-string v0, "SideSlipGesturesGuideActivity"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mExitGesturesGuide:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->skipGesturesGuideSteps()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00ff

    invoke-virtual {p0, v0}, Lcom/android/launcher/OplusBaseAppCompatActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setStatusBarTransparent(Landroid/app/Activity;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->disableGesturesGuideHomeMenuKey(Z)V

    const/4 v1, 0x0

    :try_start_11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_just_show_gestures_guide"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsJustShowGuide:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "origin"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGesturesOrigin:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "start_type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mStartType:I

    if-lez v2, :cond_3c

    move v2, v0

    goto :goto_3d

    :cond_3c
    move v2, v1

    :goto_3d
    iput-boolean v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsLearningSingle:Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_44
    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsJustShowGuide:Z

    invoke-virtual {v2, v3}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->setIsJustShowGuide(Z)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->initViews()V

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->setFirstPage(Landroid/os/Bundle;)V

    const-string v2, "guide_has_completed_from_boot"

    invoke-static {p0, v2, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "onCreate  ; is recreate = "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_63

    move v1, v0

    :cond_63
    const-string p1, "; completedFromBoot = "

    const-string v4, "; mIsJustShowGuide = "

    invoke-static {v3, v1, p1, v2, v4}, Lcom/android/launcher/g0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsJustShowGuide:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; mGesturesOrigin = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGesturesOrigin:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; mStartType = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mStartType:I

    const-string v1, "SideSlipGesturesGuideActivity"

    invoke-static {v3, p1, v1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsJustShowGuide:Z

    if-nez p1, :cond_94

    if-eqz v2, :cond_94

    const-string p1, "already completed guide after boot wizard, mostly relaunch by change nav mode, ignore"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->finish()V

    return-void

    :cond_94
    iget p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGesturesOrigin:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_b0

    sget-object p1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result p1

    if-nez p1, :cond_b0

    const-string p1, "it is`t side gesture when enter from Settings"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->finish()V

    return-void

    :cond_b0
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->setInitSystemState()V

    iget-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mHasRegister:Z

    if-nez p1, :cond_cf

    new-instance p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;

    invoke-direct {p1, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mContentOb:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "hide_navigationbar_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mContentOb:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mHasRegister:Z

    :cond_cf
    return-void
.end method

.method public onDestroy()V
    .registers 4

    const-string/jumbo v0, "onDestroy mGesturesOrigin:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGesturesOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNavResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mNavResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SideSlipGesturesGuideActivity"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mHasRegister:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mContentOb:Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity$NavStateContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mHasRegister:Z

    :cond_37
    invoke-static {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->disableGesturesGuideHomeMenuKey(Z)V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mGesturesOrigin:I

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mNavResult:I

    invoke-virtual {v0, v1, v2}, Lcom/android/statistics/LauncherStatistics;->statUsingSideGestures(II)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->onPageStop()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBoxHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayoutHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onMotionEventSuccess()V
    .registers 4

    const-string v0, "SideSlipGesturesGuideActivity"

    const-string/jumbo v1, "onMotionEventSuccess"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->getCurrentState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2e

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayoutHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBox:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBoxHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2d
    return-void

    :cond_2e
    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBox:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBoxHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessLayoutShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsLearningSingle:Z

    if-nez v1, :cond_66

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->getCurrentState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_66

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessText:Landroid/widget/TextView;

    const v2, 0x7f12049a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "QuickStep"

    const-string v2, "learning gesture completed, so we should not show learning notification later"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/learning/NotificationHelper;->updatePreference(Landroid/content/Context;)V

    goto :goto_6e

    :cond_66
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mSuccessText:Landroid/widget/TextView;

    const v1, 0x7f1204ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_6e
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->disableGesturesGuideHomeMenuKey(Z)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "SideSlipGesturesGuideActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideGesturesRunning(Z)V

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->disableGesturesGuideHomeMenuKey(Z)V

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->disableToggleState(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->onPageResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->getCurrentState()I

    move-result v1

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mStartType:I

    const-string/jumbo v1, "start_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->restoreToggleState(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->disableStatusBarExpand(Landroid/content/Context;Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-static {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->disableStatusBarExpand(Landroid/content/Context;Z)V

    return-void
.end method

.method public skipGesturesGuideSteps()V
    .registers 4

    const-string/jumbo v0, "skipGesturesGuideSteps mIsJustShowGuide:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsJustShowGuide:Z

    const-string v2, "SideSlipGesturesGuideActivity"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mIsJustShowGuide:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->resetGesturesSettingsAndFinish()V

    return-void

    :cond_16
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideGesturesRunning(Z)V

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setFullScreen(Landroid/app/Activity;Z)V

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->setState(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->onSideSlipGestureStateChanged()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBox:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mPromptBoxHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startGestures()V
    .registers 3

    const-string v0, "SideSlipGesturesGuideActivity"

    const-string/jumbo v1, "startGestures"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setFullScreen(Landroid/app/Activity;Z)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mExitGesturesGuide:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mViewPager:Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;

    invoke-virtual {v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideViewPager;->onPageStop()V

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->getInstance()Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideStateManager;->setState(I)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->setPromptBoxVisible()V

    return-void
.end method

.method public startUsingSideSlipGestures()V
    .registers 3

    const-string v0, "SideSlipGesturesGuideActivity"

    const-string/jumbo v1, "startUsingSideSlipGestures"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->mNavResult:I

    const/4 v1, -0x1

    invoke-static {p0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->saveNavState(Landroid/content/Context;I)V

    const-string v1, "guide_has_completed_from_boot"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActivity;->resetGesturesSettingsAndFinish()V

    return-void
.end method
