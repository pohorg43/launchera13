.class public final synthetic Lcom/android/launcher3/taskbar/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/DragSource;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/taskbar/t;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/t;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/t;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/t;->a:Lcom/android/launcher3/taskbar/t;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->c(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    return-void
.end method
