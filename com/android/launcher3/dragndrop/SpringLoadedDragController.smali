.class public Lcom/android/launcher3/dragndrop/SpringLoadedDragController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# static fields
.field public static final DRAG_SNAP_PAGE_DURATION:I = 0x226


# instance fields
.field public final ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

.field public final ENTER_SPRING_LOAD_HOVER_TIME:J

.field public mAlarm:Lcom/android/launcher3/Alarm;

.field public mLauncher:Lcom/android/launcher3/Launcher;

.field public mScreen:Lcom/android/launcher3/CellLayout;

.field public mSnapFromPage:I

.field public mSnapToPage:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->ENTER_SPRING_LOAD_HOVER_TIME:J

    const-wide/16 v0, 0x3b6

    iput-wide v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mSnapFromPage:I

    iput v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mSnapToPage:I

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    return-void
.end method

.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2c

    const/16 v1, 0x226

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->onSnapToPage(I)V

    iput v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mSnapToPage:I

    goto :goto_2c

    :cond_23
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onSnapToPage(I)V
    .registers 2

    return-void
.end method

.method public setAlarm(Lcom/android/launcher3/CellLayout;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    if-nez p1, :cond_c

    const-wide/16 v1, 0x3b6

    goto :goto_e

    :cond_c
    const-wide/16 v1, 0x1f4

    :goto_e
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    return-void
.end method
