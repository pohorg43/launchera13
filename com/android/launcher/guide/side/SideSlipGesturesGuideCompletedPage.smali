.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;
.super Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CAROUSEL_DARK_IMG_FOLDER:[Ljava/lang/String;

.field private static final CAROUSEL_DARK_JSON:[Ljava/lang/String;

.field private static final COMPLETE_CAROUSEL_IMG_FOLDER:[Ljava/lang/String;

.field private static final COMPLETE_CAROUSEL_JSON:[Ljava/lang/String;

.field private static final COMPLETE_PAGE_NUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SideSlipGestureStart"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "side_gesture_complete.json"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->COMPLETE_CAROUSEL_JSON:[Ljava/lang/String;

    const-string/jumbo v0, "side_gesture_complete"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->COMPLETE_CAROUSEL_IMG_FOLDER:[Ljava/lang/String;

    const-string/jumbo v0, "side_gesture_complete_dark.json"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->CAROUSEL_DARK_JSON:[Ljava/lang/String;

    const-string/jumbo v0, "side_gesture_complete_dark"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->CAROUSEL_DARK_IMG_FOLDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public initAnimation()V
    .registers 8

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
    const/4 v2, 0x1

    if-ge v1, v2, :cond_69

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0103

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    const/16 v6, 0x20

    iget v5, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    if-ne v6, v5, :cond_4c

    sget-object v5, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->CAROUSEL_DARK_JSON:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    sget-object v5, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->CAROUSEL_DARK_IMG_FOLDER:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/oplus/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    goto :goto_5a

    :cond_4c
    sget-object v5, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->COMPLETE_CAROUSEL_JSON:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    sget-object v5, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->COMPLETE_CAROUSEL_IMG_FOLDER:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/oplus/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    :goto_5a
    invoke-virtual {v4, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->mViews:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_69
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

.method public initViews()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->initAnimation()V

    const v0, 0x7f0a0491

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0490

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a048d

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/button/COUIButton;

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isHideNotUsing()Z

    move-result v2

    if-eqz v2, :cond_44

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0a0492

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_47

    :cond_44
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_47
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesGuide"

    const-string v2, "SideSlipGestureStart"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_38

    :pswitch_25  #0x7f0a048e, 0x7f0a048f
    goto :goto_37

    :pswitch_26  #0x7f0a0491, 0x7f0a0492
    iget-object p0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    invoke-interface {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->startGestures()V

    goto :goto_37

    :pswitch_2c  #0x7f0a0490
    iget-object p0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    invoke-interface {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->startUsingSideSlipGestures()V

    goto :goto_37

    :pswitch_32  #0x7f0a048d
    iget-object p0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    invoke-interface {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->notUsingSideSlipGestures()V

    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x7f0a048d
        :pswitch_32  #7f0a048d
        :pswitch_25  #7f0a048e
        :pswitch_25  #7f0a048f
        :pswitch_2c  #7f0a0490
        :pswitch_26  #7f0a0491
        :pswitch_26  #7f0a0492
    .end packed-switch
.end method
