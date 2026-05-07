.class public final Lcom/android/launcher3/search/SearchEntryStateAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/SearchEntryStateAnimation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/search/SearchEntryStateAnimation$Companion;

.field private static final DURATION_CONTENT_SWITCH_ANIM:J = 0x15eL

.field private static final TAG:Ljava/lang/String; = "SearchEntryStateAnimation"


# instance fields
.field private mBackgroundAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mContentSwitchAnim:Landroid/animation/ValueAnimator;

.field private mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

.field private mToSearchEntry:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/search/SearchEntryStateAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/search/SearchEntryStateAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->Companion:Lcom/android/launcher3/search/SearchEntryStateAnimation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher3/search/SearchEntryView;Z)V
    .registers 5

    const-string v0, "mIndicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mSearchEntryView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object p2, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    iput-boolean p3, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mToSearchEntry:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->start$lambda-2$lambda-1(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static final synthetic access$getMIndicator$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Lcom/android/launcher/pageindicators/OplusPageIndicator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-object p0
.end method

.method public static final synthetic access$getMSearchEntryView$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Lcom/android/launcher3/search/SearchEntryView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    return-object p0
.end method

.method public static final synthetic access$getMToSearchEntry$p(Lcom/android/launcher3/search/SearchEntryStateAnimation;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mToSearchEntry:Z

    return p0
.end method

.method private static final start$lambda-2$lambda-1(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->resetSearchEntryState()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBackgroundAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :goto_8
    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mContentSwitchAnim:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_10
    return-void
.end method

.method public final isRunning()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBackgroundAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    :cond_6
    move v0, v1

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    :goto_f
    if-nez v0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mContentSwitchAnim:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_17

    :cond_15
    move p0, v1

    goto :goto_1e

    :cond_17
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-ne p0, v2, :cond_15

    move p0, v2

    :goto_1e
    if-eqz p0, :cond_21

    :cond_20
    move v1, v2

    :cond_21
    return v1
.end method

.method public final start()V
    .registers 6

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_86

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mContentSwitchAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$2;-><init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mSearchEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getRealWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mToSearchEntry:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    move v3, v0

    goto :goto_34

    :cond_33
    move v3, v2

    :goto_34
    if-eqz v1, :cond_37

    goto :goto_38

    :cond_37
    move v2, v0

    :goto_38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "doReplaceAnimation, targetOffset = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchEntryStateAnimation"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v1, v3

    new-instance v3, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$3;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/search/SearchEntryStateAnimation$start$3;-><init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;F)V

    int-to-float v1, v2

    invoke-direct {v0, v3, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;F)V

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x3f3d70a4  # 0.74f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x43480000  # 200.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3b800000  # 0.00390625f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v1, Lcom/android/launcher/w;

    invoke-direct {v1, p0}, Lcom/android/launcher/w;-><init>(Lcom/android/launcher3/search/SearchEntryStateAnimation;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iput-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBackgroundAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mContentSwitchAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_7a

    goto :goto_7d

    :cond_7a
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_7d
    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryStateAnimation;->mBackgroundAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_82

    goto :goto_85

    :cond_82
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :goto_85
    return-void

    :array_86
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
