.class final Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;Lcom/oplus/quickstep/relay/widget/RecentRelayDividerView;Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/animation/AnimatorSet;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/AnimatorSet;
    .registers 9

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {v0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getContainer$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayContainer;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    invoke-static {v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;->access$getIconView$p(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v4, 0x2

    new-array v6, v4, [F

    fill-array-data v6, :array_4c

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2;->this$0:Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;

    const-wide/16 v6, 0x226

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v6}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;

    invoke-direct {v6, p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2$1$1;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator;)V

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p0, v4, [Landroid/animation/Animator;

    aput-object v0, p0, v5

    aput-object v1, p0, v2

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v3

    :array_4c
    .array-data 4
        0x3f4ccccd  # 0.8f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayAnimator$mShowAnimator$2;->invoke()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method
