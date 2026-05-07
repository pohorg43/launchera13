.class public final synthetic Lcom/android/quickstep/t1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic b:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field public final synthetic c:Lcom/android/wm/shell/pip/IPip;

.field public final synthetic d:Lcom/android/wm/shell/splitscreen/ISplitScreen;

.field public final synthetic e:Lcom/android/wm/shell/onehanded/IOneHanded;

.field public final synthetic f:Lcom/android/wm/shell/transition/IShellTransitions;

.field public final synthetic g:Lcom/android/wm/shell/startingsurface/IStartingWindow;

.field public final synthetic h:Lcom/android/wm/shell/recents/IRecentTasks;

.field public final synthetic i:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

.field public final synthetic j:Lcom/android/wm/shell/back/IBackAnimation;

.field public final synthetic k:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Landroid/os/Bundle;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/t1;->a:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput-object p2, p0, Lcom/android/quickstep/t1;->b:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iput-object p3, p0, Lcom/android/quickstep/t1;->c:Lcom/android/wm/shell/pip/IPip;

    iput-object p4, p0, Lcom/android/quickstep/t1;->d:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    iput-object p5, p0, Lcom/android/quickstep/t1;->e:Lcom/android/wm/shell/onehanded/IOneHanded;

    iput-object p6, p0, Lcom/android/quickstep/t1;->f:Lcom/android/wm/shell/transition/IShellTransitions;

    iput-object p7, p0, Lcom/android/quickstep/t1;->g:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    iput-object p8, p0, Lcom/android/quickstep/t1;->h:Lcom/android/wm/shell/recents/IRecentTasks;

    iput-object p9, p0, Lcom/android/quickstep/t1;->i:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    iput-object p10, p0, Lcom/android/quickstep/t1;->j:Lcom/android/wm/shell/back/IBackAnimation;

    iput-object p11, p0, Lcom/android/quickstep/t1;->k:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v0, p0, Lcom/android/quickstep/t1;->a:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget-object v1, p0, Lcom/android/quickstep/t1;->b:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v2, p0, Lcom/android/quickstep/t1;->c:Lcom/android/wm/shell/pip/IPip;

    iget-object v3, p0, Lcom/android/quickstep/t1;->d:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    iget-object v4, p0, Lcom/android/quickstep/t1;->e:Lcom/android/wm/shell/onehanded/IOneHanded;

    iget-object v5, p0, Lcom/android/quickstep/t1;->f:Lcom/android/wm/shell/transition/IShellTransitions;

    iget-object v6, p0, Lcom/android/quickstep/t1;->g:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    iget-object v7, p0, Lcom/android/quickstep/t1;->h:Lcom/android/wm/shell/recents/IRecentTasks;

    iget-object v8, p0, Lcom/android/quickstep/t1;->i:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    iget-object v9, p0, Lcom/android/quickstep/t1;->j:Lcom/android/wm/shell/back/IBackAnimation;

    iget-object v10, p0, Lcom/android/quickstep/t1;->k:Landroid/os/Bundle;

    invoke-static/range {v0 .. v10}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->j(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Landroid/os/Bundle;)V

    return-void
.end method
