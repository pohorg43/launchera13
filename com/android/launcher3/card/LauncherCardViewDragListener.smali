.class public final Lcom/android/launcher3/card/LauncherCardViewDragListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mTarget:Lcom/android/launcher3/card/LauncherCardView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardViewDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardViewDragListener;->mTarget:Lcom/android/launcher3/card/LauncherCardView;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->endDrag()V

    :goto_8
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardViewDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 4

    const/4 p2, 0x0

    if-nez p1, :cond_5

    move-object v0, p2

    goto :goto_7

    :cond_5
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    :goto_7
    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_d

    :cond_b
    instance-of v0, v0, Lcom/android/launcher3/card/LauncherCardView;

    :goto_d
    if-eqz v0, :cond_25

    if-nez p1, :cond_13

    move-object p1, p2

    goto :goto_15

    :cond_13
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    :goto_15
    instance-of v0, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_1c

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/card/LauncherCardView;

    :cond_1c
    iput-object p2, p0, Lcom/android/launcher3/card/LauncherCardViewDragListener;->mTarget:Lcom/android/launcher3/card/LauncherCardView;

    if-nez p2, :cond_21

    goto :goto_2e

    :cond_21
    invoke-virtual {p2}, Lcom/android/launcher3/card/LauncherCardView;->startDrag()V

    goto :goto_2e

    :cond_25
    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardViewDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :goto_2e
    return-void
.end method
