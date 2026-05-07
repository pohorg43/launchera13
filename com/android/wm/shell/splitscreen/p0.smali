.class public final synthetic Lcom/android/wm/shell/splitscreen/p0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/p0;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    return-void
.end method


# virtual methods
.method public final onRotateDisplay(IIILandroid/window/WindowContainerTransaction;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/p0;->a:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->l(Lcom/android/wm/shell/splitscreen/StageCoordinator;IIILandroid/window/WindowContainerTransaction;)V

    return-void
.end method
