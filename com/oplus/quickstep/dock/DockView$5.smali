.class Lcom/oplus/quickstep/dock/DockView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dock/DockView;->createEnterAnimator(Landroid/view/View;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/dock/DockView;

.field public final synthetic val$dockIconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dock/DockView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockView$5;->this$0:Lcom/oplus/quickstep/dock/DockView;

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockView$5;->val$dockIconView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockView$5;->val$dockIconView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockView$5;->val$dockIconView:Landroid/view/View;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
