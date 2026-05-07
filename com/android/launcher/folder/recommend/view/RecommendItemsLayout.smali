.class public Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout;
.super Lcom/android/launcher/views/VHRecyclerPageItemLayout;
.source ""


# static fields
.field private static final DELAY_OFFSET_PLAY:I = 0x19

.field private static final DURATION_APP_SHOW:I = 0x1c2

.field private static final TAG:Ljava/lang/String; = "RecommendItemsLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public buildShowAnimatorAfterOpened()Landroid/animation/AnimatorSet;
    .registers 13

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_f

    const-string p0, "RecommendItemsLayout"

    const-string v0, "buildShowAfterOpenedAnimator children\'s count is 0"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07062b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v9, 0x0

    move v10, v9

    :goto_21
    if-ge v10, v0, :cond_62

    invoke-virtual {p0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1c2

    sget-object v8, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_4:Landroid/view/animation/Interpolator;

    move-object v3, v11

    move v5, v1

    invoke-static/range {v3 .. v8}, Lcom/android/common/config/AnimationConstant;->createTranslationAnimator(Landroid/view/View;ZIIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout$1;

    invoke-direct {v4, p0, v11}, Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout$1;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    mul-int/lit8 v4, v10, 0x19

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/16 v6, 0x1c2

    sget-object v7, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    const/4 v8, 0x1

    invoke-static {v11, v8, v6, v7}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout$2;

    invoke-direct {v7, p0, v11}, Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout$2;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendItemsLayout;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v9

    aput-object v6, v4, v8

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_62
    return-object v2
.end method
