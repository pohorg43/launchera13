.class public final synthetic Lv/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/ComponentWithLabel;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/ActivityTracker;)V
    .registers 3

    const/16 v0, 0x9

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskThumbnailView;)V
    .registers 3

    const/16 v0, 0xb

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V
    .registers 3

    const/16 v0, 0xc

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V
    .registers 3

    const/16 v0, 0xd

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lv/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lv/a;->a:I

    packed-switch v0, :pswitch_data_86

    goto :goto_7d

    :pswitch_6  #0xc
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->e(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    move-result-object p0

    return-object p0

    :pswitch_f  #0xb
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_18  #0xa
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->q(Lcom/android/quickstep/AbsSwipeUpHandler;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_21  #0x9
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0

    :pswitch_2c  #0x8
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCache;->b(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0

    :pswitch_35  #0x7
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCache;->m(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher/model/data/PromiseAppInfo;

    move-result-object p0

    return-object p0

    :pswitch_3e  #0x6
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/ComponentWithLabel;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCache;->f(Lcom/android/launcher3/icons/ComponentWithLabel;)Lcom/android/launcher3/icons/ComponentWithLabel;

    move-result-object p0

    return-object p0

    :pswitch_47  #0x5
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCache;->e(Ljava/util/List;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0

    :pswitch_50  #0x4
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/folder/FolderNameProvider;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_59  #0x3
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->m(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_62  #0x2
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    return-object p0

    :pswitch_6b  #0x1
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p0}, Lcom/android/launcher3/BaseDraggingActivity;->b(Lcom/android/launcher3/BaseDraggingActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_74  #0x0
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p0}, Lcom/android/launcher/folder/download/model/MarketItemUpdateTask;->j(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object p0

    return-object p0

    :goto_7d
    iget-object p0, p0, Lv/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    invoke-static {p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->f(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_74  #00000000
        :pswitch_6b  #00000001
        :pswitch_62  #00000002
        :pswitch_59  #00000003
        :pswitch_50  #00000004
        :pswitch_47  #00000005
        :pswitch_3e  #00000006
        :pswitch_35  #00000007
        :pswitch_2c  #00000008
        :pswitch_21  #00000009
        :pswitch_18  #0000000a
        :pswitch_f  #0000000b
        :pswitch_6  #0000000c
    .end packed-switch
.end method
