.class Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->b:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->b:Lcom/coui/appcompat/panel/COUIPanelFragment;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onAbandon(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;->b:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2a
    return-void
.end method
