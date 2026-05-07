.class public final synthetic Lcom/android/launcher/filter/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;ZLcom/android/launcher3/model/data/WorkspaceItemInfo;ZLjava/util/concurrent/Executor;)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/filter/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/filter/b;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/filter/b;->c:Z

    iput-object p3, p0, Lcom/android/launcher/filter/b;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/launcher/filter/b;->e:Z

    iput-object p5, p0, Lcom/android/launcher/filter/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/views/FloatingIconView;ZZLandroid/view/View;Lcom/android/launcher3/dragndrop/DragLayer;)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/filter/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/filter/b;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/filter/b;->c:Z

    iput-boolean p3, p0, Lcom/android/launcher/filter/b;->e:Z

    iput-object p4, p0, Lcom/android/launcher/filter/b;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher/filter/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V
    .registers 7

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/filter/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/filter/b;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/filter/b;->c:Z

    iput-boolean p3, p0, Lcom/android/launcher/filter/b;->e:Z

    iput-object p4, p0, Lcom/android/launcher/filter/b;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher/filter/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V
    .registers 7

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/filter/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/filter/b;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/filter/b;->c:Z

    iput-boolean p3, p0, Lcom/android/launcher/filter/b;->e:Z

    iput-object p4, p0, Lcom/android/launcher/filter/b;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher/filter/b;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/launcher/filter/b;->a:I

    packed-switch v0, :pswitch_data_56

    goto :goto_42

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher/filter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;

    iget-boolean v1, p0, Lcom/android/launcher/filter/b;->c:Z

    iget-boolean v2, p0, Lcom/android/launcher/filter/b;->e:Z

    iget-object v3, p0, Lcom/android/launcher/filter/b;->d:Ljava/lang/Object;

    check-cast v3, Lcom/oplus/quickstep/rapidreaction/OnePuttData;

    iget-object p0, p0, Lcom/android/launcher/filter/b;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->a(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V

    return-void

    :pswitch_1a  #0x1
    iget-object v0, p0, Lcom/android/launcher/filter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/views/FloatingIconView;

    iget-boolean v1, p0, Lcom/android/launcher/filter/b;->c:Z

    iget-boolean v2, p0, Lcom/android/launcher/filter/b;->e:Z

    iget-object v3, p0, Lcom/android/launcher/filter/b;->d:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher/filter/b;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/views/FloatingIconView;->e(Lcom/android/launcher3/views/FloatingIconView;ZZLandroid/view/View;Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void

    :pswitch_2e  #0x0
    iget-object v0, p0, Lcom/android/launcher/filter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/filter/DeepProtectedAppsManager;

    iget-boolean v1, p0, Lcom/android/launcher/filter/b;->c:Z

    iget-object v2, p0, Lcom/android/launcher/filter/b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-boolean v3, p0, Lcom/android/launcher/filter/b;->e:Z

    iget-object p0, p0, Lcom/android/launcher/filter/b;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->i(Lcom/android/launcher/filter/DeepProtectedAppsManager;ZLcom/android/launcher3/model/data/WorkspaceItemInfo;ZLjava/util/concurrent/Executor;)V

    return-void

    :goto_42
    iget-object v0, p0, Lcom/android/launcher/filter/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;

    iget-boolean v1, p0, Lcom/android/launcher/filter/b;->c:Z

    iget-boolean v2, p0, Lcom/android/launcher/filter/b;->e:Z

    iget-object v3, p0, Lcom/android/launcher/filter/b;->d:Ljava/lang/Object;

    check-cast v3, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;

    iget-object p0, p0, Lcom/android/launcher/filter/b;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->b(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_1a  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
