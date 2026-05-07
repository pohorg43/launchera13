.class public Lcom/android/launcher/folder/recommend/RecommendUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AUTO_UNBIND_TIMEOUT:J = 0x1d4c0L

.field private static final DELAY_OFFSET_PLAY:I = 0x19

.field private static final DURATION_APP_ICON_SHOW:I = 0x1c2

.field private static final DURATION_APP_SHOW:I = 0x1c2

.field private static final DURATION_FOOTER_TITLE_SHOW:I = 0x1c2

.field private static final DURATION_LOAD_FAILED_MSG_SHOW:I = 0x1c2

.field private static final DURATION_LOAD_FAILED_TRANSLATION_Y:I = 0x1c2

.field private static final DURATION_LOAD_ICON_HIDE:I = 0x14d

.field private static final INTERPOLATOR_APP_ICON_SHOW:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_FOOTER_TITLE_SHOW:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_LOAD_ICON_HIDE:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_LOAD_MSG_SHOW:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_LOAD_MSG_TRANSLATION_Y:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Ljava/lang/String; = "RecommendUtils"

.field private static final TITLE_MUST_PLAY:Ljava/lang/String; = "\u00a0Must Play"

.field private static final TITLE_ORIGIN_MORE:Ljava/lang/String; = "\u00a0More Apps"

.field private static final TITLE_ORIGIN_POPULAR:Ljava/lang/String; = "\u00a0Popular Apps"

.field private static final TITLE_ORIGIN_TOOLS:Ljava/lang/String; = "\u00a0Tools"

.field private static final TITLE_ORIGIN_TOP:Ljava/lang/String; = "\u00a0Top Apps"

.field private static final sDownloadedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_FOOTER_TITLE_SHOW:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_ICON_HIDE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a  # 0.3f

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_APP_ICON_SHOW:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_MSG_SHOW:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v2, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_MSG_TRANSLATION_Y:Landroid/view/animation/PathInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->sDownloadedApps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDownloadApp(Ljava/lang/String;)V
    .registers 3

    const-string v0, "addDownloadApp: pkgName = "

    const-string v1, "RecommendUtils"

    invoke-static {v0, p0, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->sDownloadedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static animateFooterTitle(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .registers 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_FOOTER_TITLE_SHOW:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x1

    const/16 v3, 0x1c2

    invoke-static {p0, v2, v3, v1}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-static {p1, v2, v3, v1}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher/folder/recommend/RecommendUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/folder/recommend/RecommendUtils$1;-><init>(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method public static varargs animateLoadComplete(Lcom/coui/appcompat/progressbar/COUILoadingView;[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_ICON_HIDE:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/16 v3, 0x14d

    invoke-static {p0, v2, v3, v1}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    aget-object v2, p1, v2

    sget-object v3, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_APP_ICON_SHOW:Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x1

    const/16 v5, 0x1c2

    invoke-static {v2, v4, v5, v3}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    aget-object v2, p1, v4

    invoke-static {v2, v4, v5, v3}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2, v4, v5, v3}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher/folder/recommend/RecommendUtils$5;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher/folder/recommend/RecommendUtils$5;-><init>([Landroid/view/View;Lcom/coui/appcompat/progressbar/COUILoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static animateLoadFailed(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)Landroid/animation/AnimatorSet;
    .registers 11

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sget-object v8, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_MSG_TRANSLATION_Y:Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1c2

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/android/common/config/AnimationConstant;->createTranslationAnimator(Landroid/view/View;ZIIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_MSG_SHOW:Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x1

    const/16 v4, 0x1c2

    invoke-static {p1, v3, v4, v2}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/folder/recommend/RecommendUtils;->INTERPOLATOR_LOAD_ICON_HIDE:Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    const/16 v4, 0x14d

    invoke-static {p0, v3, v4, v2}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher/folder/recommend/RecommendUtils$2;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher/folder/recommend/RecommendUtils$2;-><init>(Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method public static animateTransY(Landroid/view/View;ILandroid/content/Context;)Landroid/animation/AnimatorSet;
    .registers 10

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07062b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v6, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_4:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x1c2

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/common/config/AnimationConstant;->createTranslationAnimator(Landroid/view/View;ZIIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/folder/recommend/RecommendUtils$3;

    invoke-direct {v1, p0}, Lcom/android/launcher/folder/recommend/RecommendUtils$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    mul-int/lit8 p1, p1, 0x19

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object p1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    const/4 v3, 0x1

    const/16 v4, 0x1c2

    invoke-static {p0, v3, v4, p1}, Lcom/android/common/config/AnimationConstant;->createAlphaAnimator(Landroid/view/View;ZILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v4, Lcom/android/launcher/folder/recommend/RecommendUtils$4;

    invoke-direct {v4, p0}, Lcom/android/launcher/folder/recommend/RecommendUtils$4;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    aput-object p1, p0, v3

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p2
.end method

.method public static decodeFixedBitmap(Ljava/io/FileDescriptor;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const v0, 0x7f070629

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v1, :cond_21

    move v1, v2

    :cond_21
    if-nez p1, :cond_24

    move p1, v2

    :cond_24
    int-to-float v2, v4

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float v1, v5

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadedApps()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher/folder/recommend/RecommendUtils;->sDownloadedApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInitRecommendId(Landroid/content/Context;Ljava/lang/CharSequence;)I
    .registers 8

    const/4 v0, -0x1

    if-eqz p0, :cond_aa

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_aa

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120513

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12050d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120509

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120512

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f12050a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v5, "\u00a0Top Apps"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a9

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_a9

    :cond_52
    const-string/jumbo v1, "\u00a0Popular Apps"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a7

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_62

    goto :goto_a7

    :cond_62
    const-string/jumbo v1, "\u00a0More Apps"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a5

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    goto :goto_a5

    :cond_72
    const-string/jumbo v1, "\u00a0Tools"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_99

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_82

    goto :goto_99

    :cond_82
    const-string/jumbo v1, "\u00a0Must Play"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_91

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_aa

    :cond_91
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result p0

    if-nez p0, :cond_aa

    const/4 v0, 0x6

    goto :goto_aa

    :cond_99
    :goto_99
    sget-object p0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p0, :cond_aa

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p0, :cond_aa

    const/4 v0, 0x4

    goto :goto_aa

    :cond_a5
    :goto_a5
    const/4 v0, 0x3

    goto :goto_aa

    :cond_a7
    :goto_a7
    const/4 v0, 0x2

    goto :goto_aa

    :cond_a9
    :goto_a9
    const/4 v0, 0x1

    :cond_aa
    :goto_aa
    return v0
.end method

.method public static jumpToDetail(Lcom/android/launcher/folder/recommend/bean/DataBean;Lcom/android/launcher3/Launcher;)V
    .registers 4

    if-eqz p0, :cond_56

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getJumpUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_56

    :cond_d
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Lcom/android/launcher/folder/download/FolderRecommendUtils;->Companion:Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils$Companion;->getSInstance()Lcom/android/launcher/folder/download/FolderRecommendUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_40

    :cond_20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getJumpUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const p0, 0x13461c1

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_40
    :goto_40
    const-string p0, "jumpToDetail launcher.isPaused():"

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecommendUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public static removeDownloadApp([Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "removeDownloadApp: pkgName = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecommendUtils"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_20

    array-length v0, p0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    sget-object v3, Lcom/android/launcher/folder/recommend/RecommendUtils;->sDownloadedApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_20
    return-void
.end method
