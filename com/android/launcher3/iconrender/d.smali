.class public final synthetic Lcom/android/launcher3/iconrender/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/iconrender/RenderManager;ZLandroid/graphics/Canvas;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/iconrender/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/d;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/iconrender/d;->c:Z

    iput-object p3, p0, Lcom/android/launcher3/iconrender/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;Z)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/iconrender/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/d;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher3/iconrender/d;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;ZLcom/android/wm/shell/bubbles/Bubble;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/iconrender/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/d;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/iconrender/d;->c:Z

    iput-object p3, p0, Lcom/android/launcher3/iconrender/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;ZLandroid/window/WindowContainerTransaction;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/iconrender/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/d;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/iconrender/d;->c:Z

    iput-object p3, p0, Lcom/android/launcher3/iconrender/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;Ljava/util/function/Consumer;Z)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/iconrender/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/d;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/android/launcher3/iconrender/d;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/iconrender/d;->a:I

    packed-switch v0, :pswitch_data_56

    goto :goto_46

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/launcher3/iconrender/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-boolean v1, p0, Lcom/android/launcher3/iconrender/d;->c:Z

    iget-object p0, p0, Lcom/android/launcher3/iconrender/d;->d:Ljava/lang/Object;

    check-cast p0, Landroid/window/WindowContainerTransaction;

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->i(Lcom/android/wm/shell/pip/PipTaskOrganizer;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :pswitch_16  #0x2
    iget-object v0, p0, Lcom/android/launcher3/iconrender/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController;

    iget-boolean v1, p0, Lcom/android/launcher3/iconrender/d;->c:Z

    iget-object p0, p0, Lcom/android/launcher3/iconrender/d;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubble;

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleEntry;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->h(Lcom/android/wm/shell/bubbles/BubbleController;ZLcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void

    :pswitch_26  #0x1
    iget-object v0, p0, Lcom/android/launcher3/iconrender/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/d;->c:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->K(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;ZLjava/lang/Boolean;)V

    return-void

    :pswitch_36  #0x0
    iget-object v0, p0, Lcom/android/launcher3/iconrender/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/iconrender/RenderManager;

    iget-boolean v1, p0, Lcom/android/launcher3/iconrender/d;->c:Z

    iget-object p0, p0, Lcom/android/launcher3/iconrender/d;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Canvas;

    check-cast p1, Lcom/android/launcher3/iconrender/IIconRenderer;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->e(Lcom/android/launcher3/iconrender/RenderManager;ZLandroid/graphics/Canvas;Lcom/android/launcher3/iconrender/IIconRenderer;)V

    return-void

    :goto_46
    iget-object v0, p0, Lcom/android/launcher3/iconrender/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/appswitch/AppSwitchController;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/d;->c:Z

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->c(Lcom/oplus/quickstep/appswitch/AppSwitchController;Ljava/util/function/Consumer;ZLjava/util/ArrayList;)V

    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_26  #00000001
        :pswitch_16  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
