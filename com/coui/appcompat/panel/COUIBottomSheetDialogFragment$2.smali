.class Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->backToFirstPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIPanelFragment;

.field public final synthetic c:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;ILcom/coui/appcompat/panel/COUIPanelFragment;)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->a:I

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->b:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->a:I

    if-lez v0, :cond_63

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onHide(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->a:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$002(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getShowOnFirstPanel()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onShow(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setPanelFragmentAnimationListener(Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;)V

    :cond_63
    return-void
.end method
