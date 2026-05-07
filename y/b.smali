.class public final synthetic Ly/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Ly/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Ly/b;->c:Ljava/lang/Object;

    iput p3, p0, Ly/b;->d:I

    iput-object p4, p0, Ly/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Ly/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Ly/b;->c:Ljava/lang/Object;

    iput p3, p0, Ly/b;->d:I

    iput-object p4, p0, Ly/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/FolderInfo;ILjava/util/List;Ljava/util/List;)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Ly/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/b;->b:Ljava/lang/Object;

    iput p2, p0, Ly/b;->d:I

    iput-object p3, p0, Ly/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Ly/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/views/BaseDragLayer;I)V
    .registers 6

    const/4 v0, 0x3

    iput v0, p0, Ly/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Ly/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Ly/b;->e:Ljava/lang/Object;

    iput p4, p0, Ly/b;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/ViewPool;ILandroid/view/LayoutInflater;Landroid/os/Handler;)V
    .registers 6

    const/4 v0, 0x4

    iput v0, p0, Ly/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/b;->b:Ljava/lang/Object;

    iput p2, p0, Ly/b;->d:I

    iput-object p3, p0, Ly/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Ly/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 6

    const/4 v0, 0x5

    iput v0, p0, Ly/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/b;->b:Ljava/lang/Object;

    iput p2, p0, Ly/b;->d:I

    iput-object p3, p0, Ly/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Ly/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;ILandroid/view/SurfaceControl$Builder;Ljava/util/function/Consumer;)V
    .registers 6

    const/4 v0, 0x6

    iput v0, p0, Ly/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/b;->b:Ljava/lang/Object;

    iput p2, p0, Ly/b;->d:I

    iput-object p3, p0, Ly/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Ly/b;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Ly/b;->a:I

    packed-switch v0, :pswitch_data_84

    goto :goto_72

    :pswitch_6  #0x5
    iget-object v0, p0, Ly/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/RecentsAnimationController;

    iget v1, p0, Ly/b;->d:I

    iget-object v2, p0, Ly/b;->c:Ljava/lang/Object;

    check-cast v2, Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object p0, p0, Ly/b;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/RecentsAnimationController;->g(Lcom/android/quickstep/RecentsAnimationController;ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    return-void

    :pswitch_18  #0x4
    iget-object v0, p0, Ly/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/ViewPool;

    iget v1, p0, Ly/b;->d:I

    iget-object v2, p0, Ly/b;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object p0, p0, Ly/b;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/util/ViewPool;->b(Lcom/android/launcher3/util/ViewPool;ILandroid/view/LayoutInflater;Landroid/os/Handler;)V

    return-void

    :pswitch_2a  #0x3
    iget-object v0, p0, Ly/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v1, p0, Ly/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/statemanager/BaseState;

    iget-object v2, p0, Ly/b;->e:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer;

    iget p0, p0, Ly/b;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->d(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/views/BaseDragLayer;I)V

    return-void

    :pswitch_3c  #0x2
    iget-object v0, p0, Ly/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, p0, Ly/b;->d:I

    iget-object v2, p0, Ly/b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Ly/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/model/data/FolderInfo;->h(Lcom/android/launcher3/model/data/FolderInfo;ILjava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_4e  #0x1
    iget-object v0, p0, Ly/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v1, p0, Ly/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v2, p0, Ly/b;->d:I

    iget-object p0, p0, Ly/b;->e:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->h(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V

    return-void

    :pswitch_60  #0x0
    iget-object v0, p0, Ly/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object v1, p0, Ly/b;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget v2, p0, Ly/b;->d:I

    iget-object p0, p0, Ly/b;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->a(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :goto_72
    iget-object v0, p0, Ly/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;

    iget v1, p0, Ly/b;->d:I

    iget-object v2, p0, Ly/b;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceControl$Builder;

    iget-object p0, p0, Ly/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;->a(Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;ILandroid/view/SurfaceControl$Builder;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_60  #00000000
        :pswitch_4e  #00000001
        :pswitch_3c  #00000002
        :pswitch_2a  #00000003
        :pswitch_18  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
