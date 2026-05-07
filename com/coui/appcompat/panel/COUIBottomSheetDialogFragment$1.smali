.class Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->initFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$id;->touch_outside:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$102(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$100(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$100(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1$1;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2e
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$302(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Z)Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Z)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onShow(Ljava/lang/Boolean;)V

    return-void
.end method
