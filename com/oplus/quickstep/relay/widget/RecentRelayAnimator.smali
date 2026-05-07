.class public final Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion;

.field private static final DIVIDER_PAINT_ALPHA:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion$DIVIDER_PAINT_ALPHA$1;

.field public static final HIDE_ALPHA:F = 0.0f

.field private static final HIDE_DURATION:J = 0xb7L

.field public static final HIDE_SCALE:F = 0.8f

.field public static final MAX_ALPHA:I = 0xff

.field public static final SHOW_ALPHA:F = 1.0f

.field private static final SHOW_DURATION:J = 0x226L

.field public static final SHOW_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "RecentRelayAnimator"

.field private static final accInterpolator:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field private container:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

.field private divider:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

.field private hideEndAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field private iconView:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

.field private final mHideAnimator$delegate:Ly2/e;

.field private final mShowAnimator$delegate:Ly2/e;

.field private showEndAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40200000  # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->accInterpolator:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion$DIVIDER_PAINT_ALPHA$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion$DIVIDER_PAINT_ALPHA$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->DIVIDER_PAINT_ALPHA:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion$DIVIDER_PAINT_ALPHA$1;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;)V
    .registers 5

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->container:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    iput-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->divider:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    iput-object p3, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->iconView:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    sget-object p1, Ly2/g;->c:Ly2/g;

    new-instance p2, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->mShowAnimator$delegate:Ly2/e;

    new-instance p2, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mHideAnimator$2;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mHideAnimator$2;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->mHideAnimator$delegate:Ly2/e;

    return-void
.end method

.method public static final synthetic access$getAccInterpolator$cp()Landroid/view/animation/AccelerateInterpolator;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->accInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object v0
.end method

.method public static final synthetic access$getContainer$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->container:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    return-object p0
.end method

.method public static final synthetic access$getDivider$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->divider:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    return-object p0
.end method

.method public static final synthetic access$getIconView$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->iconView:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    return-object p0
.end method

.method private final getMHideAnimator()Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->mHideAnimator$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private final getMShowAnimator()Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->mShowAnimator$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimatorSet;

    return-object p0
.end method


# virtual methods
.method public final cancelAll()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->cancelShow()V

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getMHideAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getMHideAnimator()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_14
    return-void
.end method

.method public final cancelShow()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getMShowAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getMShowAnimator()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_11
    return-void
.end method

.method public final createLastDismissAnim(ZILcom/android/launcher3/anim/PendingAnimation;)V
    .registers 10

    const-string v0, "anim"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->divider:Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;

    sget-object v1, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->DIVIDER_PAINT_ALPHA:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$Companion$DIVIDER_PAINT_ALPHA$1;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->accInterpolator:Landroid/view/animation/AccelerateInterpolator;

    sget-object v3, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {p3, v0, v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->iconView:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->container:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_3f

    :cond_2e
    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->iconView:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->container:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    sub-int p1, p2, p1

    :goto_3f
    iget-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->container:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    int-to-float p1, p1

    aput p1, v2, v5

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1, v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    new-instance p1, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$createLastDismissAnim$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$createLastDismissAnim$1;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final createRotateAnim(Landroid/animation/AnimatorSet;Z)V
    .registers 6

    const-string v0, "animatorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    const/high16 p2, 0x3f800000  # 1.0f

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->container:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public final getHideEndAction()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->hideEndAction:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getShowEndAction()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->showEndAction:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final isHiding()Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getMHideAnimator()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p0

    return p0
.end method

.method public final isShowing()Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getMShowAnimator()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p0

    return p0
.end method

.method public final setHideEndAction(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->hideEndAction:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setShowEndAction(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->showEndAction:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final startHide()V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getMHideAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->container:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_1b

    goto :goto_22

    :cond_1b
    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getMHideAnimator()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_22
    :goto_22
    return-void
.end method

.method public final startShow()V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getMShowAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->container:Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    invoke-direct {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->getMShowAnimator()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
