.class public final synthetic Lcom/android/launcher/pkg/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/pkg/PackageDeleteManager;ZLjava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pkg/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/pkg/b;->c:Z

    iput-object p3, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/pkg/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/launcher/pkg/b;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusModelWriter;Ljava/util/List;Landroid/content/Context;Z)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/pkg/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/launcher/pkg/b;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;ZLcom/android/wm/shell/bubbles/Bubble;)V
    .registers 6

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/pkg/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher/pkg/b;->c:Z

    iput-object p4, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;ZLjava/lang/Runnable;)V
    .registers 6

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/pkg/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher/pkg/b;->c:Z

    iput-object p4, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;Z)V
    .registers 6

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/pkg/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/launcher/pkg/b;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;ZLcom/oplus/quickstep/memory/MemoryInfoManager;)V
    .registers 6

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/pkg/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher/pkg/b;->c:Z

    iput-object p4, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/launcher/pkg/b;->a:I

    packed-switch v0, :pswitch_data_84

    goto :goto_72

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-boolean v2, p0, Lcom/android/launcher/pkg/b;->c:Z

    iget-object p0, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->d(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;ZLjava/lang/Runnable;)V

    return-void

    :pswitch_18  #0x4
    iget-object v0, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    iget-object v2, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget-boolean p0, p0, Lcom/android/launcher/pkg/b;->c:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->c(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;Landroid/graphics/PointF;Z)V

    return-void

    :pswitch_2a  #0x3
    iget-object v0, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v1, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleEntry;

    iget-boolean v2, p0, Lcom/android/launcher/pkg/b;->c:Z

    iget-object p0, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->l(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;ZLcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :pswitch_3c  #0x2
    iget-object v0, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/OplusModelWriter;

    iget-object v1, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/launcher/pkg/b;->c:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/model/OplusModelWriter;->A(Lcom/android/launcher3/model/OplusModelWriter;Ljava/util/List;Landroid/content/Context;Z)V

    return-void

    :pswitch_4e  #0x1
    iget-object v0, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/OplusLauncherModel;

    iget-object v1, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/util/IntArray;

    iget-object v2, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-boolean p0, p0, Lcom/android/launcher/pkg/b;->c:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/OplusLauncherProvider;->i(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)V

    return-void

    :pswitch_60  #0x0
    iget-object v0, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/pkg/PackageDeleteManager;

    iget-boolean v1, p0, Lcom/android/launcher/pkg/b;->c:Z

    iget-object v2, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/UserHandle;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher/pkg/PackageDeleteManager;->f(Lcom/android/launcher/pkg/PackageDeleteManager;ZLjava/lang/String;Landroid/os/UserHandle;)V

    return-void

    :goto_72
    iget-object v0, p0, Lcom/android/launcher/pkg/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iget-object v1, p0, Lcom/android/launcher/pkg/b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;

    iget-boolean v2, p0, Lcom/android/launcher/pkg/b;->c:Z

    iget-object p0, p0, Lcom/android/launcher/pkg/b;->e:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->b(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;ZLcom/oplus/quickstep/memory/MemoryInfoManager;)V

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
