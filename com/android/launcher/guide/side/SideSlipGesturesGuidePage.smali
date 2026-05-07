.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;
.super Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;
.source ""

# interfaces
.implements Lcom/oplus/widget/OplusViewPager$OnPageChangeListener;
.implements Lcom/android/launcher/guide/side/CarouselViewPager$OnViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage$CarouselPagerAdapter;
    }
.end annotation


# static fields
.field private static final CAROUSEL_DARK_IMG_FOLDER:[Ljava/lang/String;

.field private static final CAROUSEL_DARK_JSON:[Ljava/lang/String;

.field public static final CAROUSEL_IMG_FOLDER:[Ljava/lang/String;

.field public static final CAROUSEL_JSON:[Ljava/lang/String;

.field public static final DELAY_START:I = 0x1f4

.field public static final PAGE_NUM:I = 0x4

.field public static final TAG:Ljava/lang/String; = "SideSlipGesturesGuidePage"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mInflater:Landroid/view/LayoutInflater;

.field public mNeedAutoPlay:Z

.field public mPageAdapter:Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage$CarouselPagerAdapter;

.field public mViewPager:Lcom/android/launcher/guide/side/CarouselViewPager;

.field public mViewPagerIndex:I

.field public mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "side_gesture_back_up.json"

    const-string/jumbo v1, "side_gesture_back_to_desktop.json"

    const-string/jumbo v2, "side_gesture_view_recent_tasks.json"

    const-string/jumbo v3, "side_gesture_switch_to_the_recent_app.json"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_JSON:[Ljava/lang/String;

    const-string/jumbo v0, "side_gesture_back_up"

    const-string/jumbo v1, "side_gesture_back_to_desktop"

    const-string/jumbo v2, "side_gesture_view_recent_tasks"

    const-string/jumbo v3, "side_gesture_switch_to_the_recent_app"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_IMG_FOLDER:[Ljava/lang/String;

    const-string/jumbo v0, "side_gesture_back_up_dark.json"

    const-string/jumbo v1, "side_gesture_back_to_desktop_dark.json"

    const-string/jumbo v2, "side_gesture_view_recent_tasks_dark.json"

    const-string/jumbo v3, "side_gesture_switch_to_the_recent_app_dark.json"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_DARK_JSON:[Ljava/lang/String;

    const-string/jumbo v0, "side_gesture_back_up_dark"

    const-string/jumbo v1, "side_gesture_back_to_desktop_dark"

    const-string/jumbo v2, "side_gesture_view_recent_tasks_dark"

    const-string/jumbo v3, "side_gesture_switch_to_the_recent_app_dark"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_DARK_IMG_FOLDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPager:Lcom/android/launcher/guide/side/CarouselViewPager;

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mPageAdapter:Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage$CarouselPagerAdapter;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mNeedAutoPlay:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public initViews()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    const/4 v2, 0x4

    if-ge v1, v2, :cond_6a

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0103

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    const/16 v5, 0x20

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    if-ne v5, v4, :cond_4c

    sget-object v4, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_DARK_JSON:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_DARK_IMG_FOLDER:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oplus/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    goto :goto_5a

    :cond_4c
    sget-object v4, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_JSON:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    sget-object v4, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->CAROUSEL_IMG_FOLDER:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oplus/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    :goto_5a
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_6a
    new-instance v1, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage$CarouselPagerAdapter;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage$CarouselPagerAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mPageAdapter:Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage$CarouselPagerAdapter;

    const v1, 0x7f0a0281

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/guide/side/CarouselViewPager;

    iput-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPager:Lcom/android/launcher/guide/side/CarouselViewPager;

    invoke-virtual {v1, p0}, Lcom/oplus/widget/OplusViewPager;->setOnPageChangeListener(Lcom/oplus/widget/OplusViewPager$OnPageChangeListener;)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPager:Lcom/android/launcher/guide/side/CarouselViewPager;

    invoke-virtual {v1, p0}, Lcom/android/launcher/guide/side/CarouselViewPager;->setViewChangedListener(Lcom/android/launcher/guide/side/CarouselViewPager$OnViewChangedListener;)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPager:Lcom/android/launcher/guide/side/CarouselViewPager;

    invoke-virtual {v1}, Lcom/oplus/widget/OplusViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/android/launcher/guide/side/CarouselViewPager;->setNestedParent(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPager:Lcom/android/launcher/guide/side/CarouselViewPager;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mPageAdapter:Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage$CarouselPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/oplus/widget/OplusViewPager;->setAdapter(Lcom/oplus/widget/OplusPagerAdapter;)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPager:Lcom/android/launcher/guide/side/CarouselViewPager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oplus/widget/OplusViewPager;->setOffscreenPageLimit(I)V

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->startAnimation()V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->onResume()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->onStop()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_3a

    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_37

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationView;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-ne v0, p1, :cond_34

    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    goto :goto_37

    :cond_34
    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onResume()V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onStop()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->stopAnimation()V

    return-void
.end method

.method public onViewMoved()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public playAnimation()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPager:Lcom/android/launcher/guide/side/CarouselViewPager;

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPager:Lcom/android/launcher/guide/side/CarouselViewPager;

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    invoke-virtual {v1, v2}, Lcom/oplus/widget/OplusViewPager;->setCurrentItem(I)V

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher/guide/side/c;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/launcher/guide/side/c;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;I)V

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->getDuration()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    :cond_46
    return-void
.end method

.method public startAnimation()V
    .registers 6

    const-string/jumbo v0, "startAnimation mViewPagerIndex:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    const-string v2, "GesturesGuide"

    const-string v3, "SideSlipGesturesGuidePage"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mNeedAutoPlay:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/guide/side/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/side/c;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mNeedAutoPlay:Z

    goto :goto_31

    :cond_2a
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPager:Lcom/android/launcher/guide/side/CarouselViewPager;

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViewPagerIndex:I

    invoke-virtual {v0, p0}, Lcom/oplus/widget/OplusViewPager;->setCurrentItem(I)V

    :goto_31
    return-void
.end method

.method public stopAnimation()V
    .registers 4

    const-string v0, "GesturesGuide"

    const-string v1, "SideSlipGesturesGuidePage"

    const-string/jumbo v2, "stopAnimation"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c

    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_39

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_3c
    return-void
.end method
