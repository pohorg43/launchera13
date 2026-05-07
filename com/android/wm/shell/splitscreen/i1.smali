.class public final synthetic Lcom/android/wm/shell/splitscreen/i1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;ZLandroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/i1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/i1;->b:Z

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/i1;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/i1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/i1;->b:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/i1;->c:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;->a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$ControlBarListenerImpl;ZLandroid/view/View;)V

    return-void
.end method
