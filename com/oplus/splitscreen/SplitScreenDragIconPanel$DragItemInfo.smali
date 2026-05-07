.class public Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitScreenDragIconPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragItemInfo"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public displayId:I

.field public isMirageBackgroundTask:Z

.field public isRunning:Z

.field public isVisible:Z

.field public tagId:I

.field public taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

.field public userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/content/ComponentName;ILandroid/os/UserHandle;)V
    .registers 7

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->tagId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isVisible:Z

    iput-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isRunning:Z

    iput v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->displayId:I

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->componentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->userHandle:Landroid/os/UserHandle;

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$700(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_24

    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    const/16 p4, 0x2710

    if-lt p2, p4, :cond_24

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isMirageBackgroundTask:Z

    :cond_24
    if-eqz p1, :cond_32

    iget-boolean p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iput-boolean p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isVisible:Z

    iget-boolean p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    iput-boolean p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isRunning:Z

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iput p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->displayId:I

    :cond_32
    iput p3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->tagId:I

    return-void
.end method


# virtual methods
.method public getPackName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTagId()I
    .registers 1

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->tagId:I

    return p0
.end method

.method public getUserId()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->userHandle:Landroid/os/UserHandle;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DragItemInfo{"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isMirageTask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isMirageBackgroundTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",taskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,tagId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->tagId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->isRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;->displayId:I

    const-string v1, "}"

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
