.class Lcom/android/launcher/WorkspaceInjector$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/WorkspaceInjector;->beginDragSharedInject(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/WorkspaceInjector;


# direct methods
.method public constructor <init>(Lcom/android/launcher/WorkspaceInjector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/WorkspaceInjector$2;->this$0:Lcom/android/launcher/WorkspaceInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p1, p0, p2

    const-string p1, "[onPreDragEnd]default preDragCondition,dragInfo=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WorkspaceInjector"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    aput-object p1, p0, v0

    const-string p1, "[onPreDragStart]default preDragCondition,dragInfo=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WorkspaceInjector"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public shouldStartDrag(D)Z
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "WorkspaceInjector"

    const-string p2, "[shouldStartDrag] default preDragCondition cancelDrag"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object p1, p0, Lcom/android/launcher/WorkspaceInjector$2;->this$0:Lcom/android/launcher/WorkspaceInjector;

    invoke-static {p1}, Lcom/android/launcher/WorkspaceInjector;->access$000(Lcom/android/launcher/WorkspaceInjector;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_22

    iget-object p0, p0, Lcom/android/launcher/WorkspaceInjector$2;->this$0:Lcom/android/launcher/WorkspaceInjector;

    invoke-static {p0}, Lcom/android/launcher/WorkspaceInjector;->access$000(Lcom/android/launcher/WorkspaceInjector;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    :cond_22
    const/4 p0, 0x0

    return p0
.end method
