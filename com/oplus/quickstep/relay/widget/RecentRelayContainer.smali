.class public final Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$Companion;
    }
.end annotation


# static fields
.field private static final ALPHA_DISMISS_TIPS:F = 0.8f

.field public static final Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$Companion;

.field private static final DIVIDER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final DIVIDER_SCROLL_HIDE_RATIO:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "RecentRelayContainer"


# instance fields
.field private final animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

.field private final iconView:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

.field private interaction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

.field private final mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

.field private mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private final tipsView$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$Companion;

    sget-object v0, Lcom/oplus/quickstep/relay/widget/a;->a:Lcom/oplus/quickstep/relay/widget/a;

    sput-object v0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->DIVIDER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/relay/RecentRelayInteraction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/quickstep/relay/RecentRelayInteraction;",
            ")V"
        }
    .end annotation

    const-string v0, "mRecentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interaction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->interaction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    new-instance p1, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->interaction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-direct {p1, p2, v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;-><init>(Landroid/content/Context;Lcom/oplus/quickstep/relay/RecentRelayInteraction;)V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->iconView:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    new-instance p2, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    new-instance v0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-direct {v0, p0, p2, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;)V

    iput-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getDividerShow()Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_52
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object p1, Ly2/g;->c:Ly2/g;

    new-instance p2, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$tipsView$2;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$tipsView$2;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->tipsView$delegate:Ly2/e;

    return-void
.end method

.method private static final DIVIDER_INTERPOLATOR$lambda-3(F)F
    .registers 2

    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_9

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_c

    :cond_9
    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr p0, v0

    :goto_c
    return p0
.end method

.method public static synthetic a(F)F
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->DIVIDER_INTERPOLATOR$lambda-3(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getDIVIDER_INTERPOLATOR$cp()Landroid/animation/TimeInterpolator;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->DIVIDER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public static final synthetic access$getMContext$p$s-1013495733(Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final attach(Landroid/view/ViewGroup;)V
    .registers 5

    const-string v0, "RecentRelayContainer"

    if-nez p1, :cond_10

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "attach(), parent null, return."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void

    :cond_10
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_29

    const-string p1, "attach(), "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public final changeAlpha(F)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v3

    :goto_e
    if-eqz v0, :cond_1d

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->interaction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getCurrentPage()I

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_33

    cmpg-float v0, p1, v1

    if-nez v0, :cond_2b

    move v0, v2

    goto :goto_2c

    :cond_2b
    move v0, v3

    :goto_2c
    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->cancelShow()V

    :cond_33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_3d

    move v0, v2

    goto :goto_3e

    :cond_3d
    move v0, v3

    :goto_3e
    if-eqz v0, :cond_41

    return-void

    :cond_41
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const v0, 0x3f4ccccd  # 0.8f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_52

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getTipsView()Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->dismiss(ZZ)V

    :cond_52
    cmpl-float v0, p1, v1

    if-lez v0, :cond_58

    move v0, v3

    goto :goto_59

    :cond_58
    const/4 v0, 0x4

    :goto_59
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_63

    goto :goto_64

    :cond_63
    move v2, v3

    :goto_64
    if-eqz v2, :cond_6d

    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->iconView:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    invoke-virtual {p1, p0, v0}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :cond_6d
    return-void
.end method

.method public final changeAlphaApart(FF)V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getDividerShow()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1a
    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->changeAlpha(F)V

    return-void
.end method

.method public final createLastDismissAnim(Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->isRecentRtl()Z

    move-result v1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->createLastDismissAnim(ZILcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public final createRotateAnim(Landroid/animation/AnimatorSet;Z)V
    .registers 7

    const-string v0, "animatorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_19

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v2, v2, v3

    if-nez v2, :cond_15

    move v2, v0

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    if-eqz v2, :cond_19

    return-void

    :cond_19
    if-nez p2, :cond_29

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    if-eqz v0, :cond_29

    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getTipsView()Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->dismiss(ZZ)V

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->createRotateAnim(Landroid/animation/AnimatorSet;Z)V

    return-void
.end method

.method public final detach()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->isHiding()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->cancelAll()V

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    new-instance v1, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$detach$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$detach$1;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->setHideEndAction(Lkotlin/jvm/functions/Function0;)V

    :cond_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_22

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-nez v0, :cond_26

    goto :goto_36

    :cond_26
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_36

    const-string p0, "RecentRelayContainer"

    const-string v0, "detach"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-void
.end method

.method public final getAnimator()Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    return-object p0
.end method

.method public final getDividerShow()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->iconView:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    return-object p0
.end method

.method public final getTipsView()Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->tipsView$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final hide(Z)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->cancelAll()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v2, 0x4

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1b

    return-void

    :cond_1b
    if-eqz p1, :cond_2f

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getDividerShow()Z

    move-result p1

    if-nez p1, :cond_34

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_34

    :cond_2f
    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->startHide()V

    :cond_34
    :goto_34
    return-void
.end method

.method public final isRecentRtl()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result p0

    const/4 v3, 0x3

    if-ne p0, v3, :cond_1e

    if-nez v0, :cond_1f

    move v1, v2

    goto :goto_1f

    :cond_1e
    move v1, v0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 7

    const-string p1, "RecentRelayContainer"

    const-string p2, ", "

    :try_start_4
    iget-object p3, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object p3

    if-nez p3, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getDividerShow()Z

    move-result p4

    const/4 p5, 0x0

    if-nez p4, :cond_54

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p4

    const/4 v0, 0x0

    cmpg-float p4, p4, v0

    if-nez p4, :cond_1f

    const/4 p4, 0x1

    goto :goto_20

    :cond_1f
    move p4, p5

    :goto_20
    if-eqz p4, :cond_54

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->isRecentRtl()Z

    move-result p4

    if-eqz p4, :cond_41

    iget-object p4, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    goto :goto_80

    :cond_41
    iget-object p4, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_7f

    :cond_54
    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->isRecentRtl()Z

    move-result p4

    if-eqz p4, :cond_6c

    iget-object p4, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    goto :goto_80

    :cond_6c
    iget-object p4, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_7f
    sub-int/2addr p4, v0

    :goto_80
    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->setLeft(I)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getY()F

    move-result p3

    float-to-int p3, p3

    invoke-static {p5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setTop(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p3, p4

    invoke-static {p5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setRight(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    invoke-static {p5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setBottom(I)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p3

    if-eqz p3, :cond_124

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onLayout(), x="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ", y="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ", transX="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, ", isRecentRtl="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->isRecentRtl()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_124
    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->isRecentRtl()Z

    move-result p2

    if-eqz p2, :cond_15e

    iget-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object p4, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p2, p5, p5, p3, p4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    iget-object p4, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p4

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p2, p3, p5, p4, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_197

    :cond_15e
    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p2, p5, p5, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getIconView()Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p4

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p4, v0

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p2, p3, p5, p4, p0}, Landroid/view/View;->layout(IIII)V

    :goto_197
    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_199
    .catchall {:try_start_4 .. :try_end_199} :catchall_19a

    goto :goto_19f

    :catchall_19a
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_19f
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1a6

    goto :goto_1b5

    :cond_1a6
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_1b5

    const-string p2, "onLayout(), e="

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b5
    :goto_1b5
    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->getDockIconSize(Landroid/content/res/Resources;)I

    move-result p2

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->measureChildren(II)V

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->iconView:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final show(Z)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->interaction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getCurrentPage()I

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-nez v0, :cond_16

    :cond_14
    move v0, v3

    goto :goto_1d

    :cond_16
    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->isScrolling()Z

    move-result v0

    if-ne v0, v2, :cond_14

    move v0, v2

    :goto_1d
    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const-string v5, "OVERVIEW"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_38

    move v0, v2

    goto :goto_39

    :cond_38
    move v0, v3

    :goto_39
    if-eqz v0, :cond_41

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_56

    :cond_41
    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-nez v0, :cond_4b

    :cond_49
    move v0, v3

    goto :goto_52

    :cond_4b
    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->isCurrentSupported()Z

    move-result v0

    if-nez v0, :cond_49

    move v0, v2

    :goto_52
    if-eqz v0, :cond_55

    goto :goto_56

    :cond_55
    move v2, v3

    :cond_56
    :goto_56
    if-eqz v2, :cond_59

    return-void

    :cond_59
    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getDividerShow()Z

    move-result v2

    if-eqz v2, :cond_63

    move v2, v3

    goto :goto_64

    :cond_63
    const/4 v2, 0x4

    :goto_64
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getDividerShow()Z

    move-result v2

    if-eqz v2, :cond_71

    move v2, v1

    goto :goto_72

    :cond_71
    const/4 v2, 0x0

    :goto_72
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_93

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->cancelAll()V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getDividerShow()Z

    move-result p1

    if-eqz p1, :cond_8d

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->mDividerView:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8d
    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {p1, p0, v1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    goto :goto_98

    :cond_93
    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->startShow()V

    :goto_98
    return-void
.end method

.method public final showTips()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->animator:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    new-instance v1, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$showTips$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer$showTips$1;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->setShowEndAction(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2f

    :cond_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;->getTipsView()Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->show()V

    :cond_2f
    :goto_2f
    return-void
.end method
