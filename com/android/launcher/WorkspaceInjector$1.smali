.class Lcom/android/launcher/WorkspaceInjector$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/WorkspaceInjector;->beginDragSharedInject(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/WorkspaceInjector;

.field public final synthetic val$child:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher/WorkspaceInjector;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/WorkspaceInjector$1;->this$0:Lcom/android/launcher/WorkspaceInjector;

    iput-object p2, p0, Lcom/android/launcher/WorkspaceInjector$1;->val$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/WorkspaceInjector$1;->val$child:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/folder/FolderIcon;

    const/4 p1, 0x1

    if-eqz p2, :cond_c

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_13

    :cond_c
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    :goto_13
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/WorkspaceInjector$1;->val$child:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/folder/FolderIcon;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    return-void
.end method

.method public shouldStartDrag(D)Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/WorkspaceInjector$1;->this$0:Lcom/android/launcher/WorkspaceInjector;

    invoke-static {v0}, Lcom/android/launcher/WorkspaceInjector;->access$000(Lcom/android/launcher/WorkspaceInjector;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07050e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-double v2, v0

    cmpl-double v0, p1, v2

    const/4 v2, 0x0

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/android/launcher/WorkspaceInjector$1;->this$0:Lcom/android/launcher/WorkspaceInjector;

    invoke-static {v0}, Lcom/android/launcher/WorkspaceInjector;->access$000(Lcom/android/launcher/WorkspaceInjector;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object p0, p0, Lcom/android/launcher/WorkspaceInjector$1;->this$0:Lcom/android/launcher/WorkspaceInjector;

    invoke-static {p0}, Lcom/android/launcher/WorkspaceInjector;->access$000(Lcom/android/launcher/WorkspaceInjector;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    return v2

    :cond_31
    iget-object v0, p0, Lcom/android/launcher/WorkspaceInjector$1;->this$0:Lcom/android/launcher/WorkspaceInjector;

    invoke-static {v0}, Lcom/android/launcher/WorkspaceInjector;->access$000(Lcom/android/launcher/WorkspaceInjector;)Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/launcher/WorkspaceInjector$1;->this$0:Lcom/android/launcher/WorkspaceInjector;

    invoke-static {v0}, Lcom/android/launcher/WorkspaceInjector;->access$000(Lcom/android/launcher/WorkspaceInjector;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->shouldStartDragOrCancelDrag(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_46

    return v2

    :cond_46
    iget-object p0, p0, Lcom/android/launcher/WorkspaceInjector$1;->this$0:Lcom/android/launcher/WorkspaceInjector;

    invoke-static {p0}, Lcom/android/launcher/WorkspaceInjector;->access$000(Lcom/android/launcher/WorkspaceInjector;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_5a

    const/4 v2, 0x1

    :cond_5a
    return v2
.end method
