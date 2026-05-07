.class public final synthetic Lcom/android/launcher3/z1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Z)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/z1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher3/z1;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Ljava/util/List;Z)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/z1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher3/z1;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/z1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/z1;->d:Z

    iput-object p3, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;ZLandroid/window/WindowContainerTransaction;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/z1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/z1;->d:Z

    iput-object p3, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/z1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher3/z1;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager;Z)V
    .registers 5

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/z1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher3/z1;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/launcher/Launcher;Z)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/z1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher3/z1;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/z1;->a:I

    packed-switch v0, :pswitch_data_68

    goto :goto_5a

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    iget-object v1, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/launcher3/z1;->d:Z

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->b(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;Ljava/lang/String;Z)V

    return-void

    :pswitch_14  #0x4
    iget-object v0, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    check-cast v1, Lcom/nearme/instant/xcard/ICardEngineCallback;

    iget-boolean p0, p0, Lcom/android/launcher3/z1;->d:Z

    invoke-static {v0, v1, p0}, Lcom/nearme/instant/xcard/CardClient;->c(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Z)V

    return-void

    :pswitch_22  #0x3
    iget-object v0, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;

    iget-boolean v1, p0, Lcom/android/launcher3/z1;->d:Z

    iget-object p0, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    check-cast p0, Landroid/window/WindowContainerTransaction;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->e(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;ZLandroid/window/WindowContainerTransaction;)V

    return-void

    :pswitch_30  #0x2
    iget-object v0, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-boolean p0, p0, Lcom/android/launcher3/z1;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandItemUpdateHelper;->a(Ljava/util/List;Lcom/android/launcher/Launcher;Z)V

    return-void

    :pswitch_3e  #0x1
    iget-object v0, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Workspace;

    iget-boolean v1, p0, Lcom/android/launcher3/z1;->d:Z

    iget-object p0, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/Workspace;->t(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V

    return-void

    :pswitch_4c  #0x0
    iget-object v0, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-boolean p0, p0, Lcom/android/launcher3/z1;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager;->e(Lcom/android/launcher3/QuickstepTransitionManager;Ljava/util/List;Z)V

    return-void

    :goto_5a
    iget-object v0, p0, Lcom/android/launcher3/z1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v1, p0, Lcom/android/launcher3/z1;->c:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;

    iget-boolean p0, p0, Lcom/android/launcher3/z1;->d:Z

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->c(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager;Z)V

    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_4c  #00000000
        :pswitch_3e  #00000001
        :pswitch_30  #00000002
        :pswitch_22  #00000003
        :pswitch_14  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
