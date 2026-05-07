.class public final Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$createEnterAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->createEnterAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$createEnterAnimator$1;->this$0:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$createEnterAnimator$1;->this$0:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$createEnterAnimator$1;->this$0:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->access$setEnterAnimator$p(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView$createEnterAnimator$1;->this$0:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
