.class public Lcom/android/launcher/guide/SlideSlipGuideAdapter;
.super Lcom/android/launcher/guide/BaseSlideGuideAdapter;
.source ""


# static fields
.field public static final SLID_SLIP_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SlideSlipGuideAdapter"


# instance fields
.field private final mAnimationDrawables:[Landroid/graphics/drawable/AnimationDrawable;

.field private final mGuideDrawables:[I

.field private final mGuideExplain:[Ljava/lang/String;

.field private final mGuideTitle:[Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/BaseSlideGuideAdapter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_32

    iput-object v1, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mGuideDrawables:[I

    new-array v0, v0, [Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mAnimationDrawables:[Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mGuideExplain:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03004f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mGuideTitle:[Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_32
    .array-data 4
        0x7f0807a7
        0x7f08077e
        0x7f080705
        0x7f0803d6
    .end array-data
.end method

.method public static synthetic access$000(Lcom/android/launcher/guide/SlideSlipGuideAdapter;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mGuideDrawables:[I

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/guide/SlideSlipGuideAdapter;)[Landroid/graphics/drawable/AnimationDrawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mAnimationDrawables:[Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/guide/SlideSlipGuideAdapter;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    instance-of p0, p3, Landroid/view/View;

    if-eqz p0, :cond_9

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public getCount()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "instantiateItem start position = "

    const-string v3, "SlideSlipGuideAdapter"

    invoke-static {v2, p2, v3}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/guide/BaseSlideGuideAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0109

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a03b5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0069

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0, v5, p2}, Lcom/android/launcher/guide/BaseSlideGuideAdapter;->updateBtton(Landroid/widget/Button;I)V

    const v5, 0x7f0a03c0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a03b3

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mAnimationDrawables:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v7, v7, p2

    if-nez v7, :cond_4d

    sget-object v7, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/android/launcher/guide/SlideSlipGuideAdapter$1;

    invoke-direct {v8, p0, p2, v4}, Lcom/android/launcher/guide/SlideSlipGuideAdapter$1;-><init>(Lcom/android/launcher/guide/SlideSlipGuideAdapter;ILandroid/widget/ImageView;)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_59

    :cond_4d
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v4

    if-nez v4, :cond_59

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_59
    :goto_59
    iget-object v4, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mGuideTitle:[Ljava/lang/String;

    if-eqz v4, :cond_65

    array-length v7, v4

    if-ge p2, v7, :cond_65

    aget-object v4, v4, p2

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_65
    iget-object p0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mGuideExplain:[Ljava/lang/String;

    if-eqz p0, :cond_71

    array-length v4, p0

    if-ge p2, v4, :cond_71

    aget-object p0, p0, p2

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_71
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "instantiateItem end use position = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public onPageSelected(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mAnimationDrawables:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    if-nez v1, :cond_b

    goto :goto_20

    :cond_b
    if-ne p1, v0, :cond_17

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_20

    :cond_17
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public onPause()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mAnimationDrawables:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    if-nez v1, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public onRelease()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mAnimationDrawables:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v1, v1, v0

    if-nez v1, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public onResume(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/SlideSlipGuideAdapter;->mAnimationDrawables:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object p0, p0, p1

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
