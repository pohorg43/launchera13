.class Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playMemoryChangeAnimation(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$400(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$300(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$502(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$602(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p1, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$702(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p1, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$802(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p1, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$902(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$4;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p0, v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$1002(Lcom/oplus/quickstep/views/OplusClearAllPanelView;F)F

    return-void
.end method
