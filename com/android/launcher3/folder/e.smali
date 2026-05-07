.class public final synthetic Lcom/android/launcher3/folder/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/e;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/folder/e;->c:I

    iput-object p3, p0, Lcom/android/launcher3/folder/e;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/folder/e;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/folder/e;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/FolderNameInfos;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/folder/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/folder/e;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/folder/e;->e:Ljava/lang/Object;

    iput p4, p0, Lcom/android/launcher3/folder/e;->c:I

    iput-object p5, p0, Lcom/android/launcher3/folder/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/statemanager/StateManager;ILcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V
    .registers 7

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/folder/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/e;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/folder/e;->c:I

    iput-object p3, p0, Lcom/android/launcher3/folder/e;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/folder/e;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/folder/e;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/folder/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/folder/e;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/folder/e;->e:Ljava/lang/Object;

    iput p4, p0, Lcom/android/launcher3/folder/e;->c:I

    iput-object p5, p0, Lcom/android/launcher3/folder/e;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/folder/e;->a:I

    packed-switch v0, :pswitch_data_5e

    goto :goto_48

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/folder/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/statemanager/StateManager;

    iget v1, p0, Lcom/android/launcher3/folder/e;->c:I

    iget-object v2, p0, Lcom/android/launcher3/folder/e;->d:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/statemanager/BaseState;

    iget-object v3, p0, Lcom/android/launcher3/folder/e;->e:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/statemanager/BaseState;

    iget-object p0, p0, Lcom/android/launcher3/folder/e;->f:Ljava/lang/Object;

    check-cast p0, Landroid/animation/Animator$AnimatorListener;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/statemanager/StateManager;->a(Lcom/android/launcher3/statemanager/StateManager;ILcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :pswitch_1c  #0x1
    iget-object v0, p0, Lcom/android/launcher3/folder/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, p0, Lcom/android/launcher3/folder/e;->f:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, p0, Lcom/android/launcher3/folder/e;->e:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/folder/FolderNameInfos;

    iget v3, p0, Lcom/android/launcher3/folder/e;->c:I

    iget-object p0, p0, Lcom/android/launcher3/folder/e;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/folder/FolderIcon;->e(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/folder/FolderNameInfos;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void

    :pswitch_32  #0x0
    iget-object v0, p0, Lcom/android/launcher3/folder/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    iget v1, p0, Lcom/android/launcher3/folder/e;->c:I

    iget-object v2, p0, Lcom/android/launcher3/folder/e;->d:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/folder/e;->e:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/folder/FolderNameInfos;

    iget-object p0, p0, Lcom/android/launcher3/folder/e;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logging/InstanceId;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/folder/FolderIcon;->d(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/folder/FolderNameInfos;Lcom/android/launcher3/logging/InstanceId;)V

    return-void

    :goto_48
    iget-object v0, p0, Lcom/android/launcher3/folder/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, p0, Lcom/android/launcher3/folder/e;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/launcher3/folder/e;->e:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget v3, p0, Lcom/android/launcher3/folder/e;->c:I

    iget-object p0, p0, Lcom/android/launcher3/folder/e;->f:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/splitscreen/StackDividerService;->i(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_1c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
