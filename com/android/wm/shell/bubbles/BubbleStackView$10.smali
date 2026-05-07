.class Lcom/android/wm/shell/bubbles/BubbleStackView$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/BubbleStackView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/common/ShellExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$4102(Lcom/android/wm/shell/bubbles/BubbleStackView;Z)Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$4102(Lcom/android/wm/shell/bubbles/BubbleStackView;Z)Z

    return-void
.end method
